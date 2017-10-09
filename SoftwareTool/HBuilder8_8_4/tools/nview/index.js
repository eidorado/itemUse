var path = require('path');
var fs = require('fs-extra');
var argv = require('yargs').argv;
var babel = require("babel-core");
var glob = require('glob');

var util = require('./util/util');
var generate = require('./compile/wap2appconfig');
var parseSitemap = require('./compile/sitemap');
var parseResource = require('./compile/parseResource');
var parseNView = require('./compile/nview');
var page = require('./plugin/page');
global.__dirname = __dirname;

process.on('uncaughtException', function(err) {
    if (err) {
        var matches = err.toString().match(/\$\$([\s\S]*)\$\$/);
        if (matches && matches.length === 2) {
            console.log(matches[1]);
        } else {
            console.log(err.stack);
        }
    }
    process.exit(1);
});

var __old_compile__ = function(projectPath, curFile, toPath) {
    var oldNViewCompile = require('./compile/nview.old.js');
    var excludePaths = [];
    var compilePaths = [];
    if (curFile && curFile !== 'null') {
        if (~curFile.indexOf('.nview')) {
            var curPath = util.normalizePath(path.relative(projectPath, curFile));
            excludePaths.push(curPath);
            compilePaths.push(curPath + '.js');
            oldNViewCompile(projectPath, curFile, path.join(toPath, curPath + '.js'));
        }
    } else {
        excludePaths = glob.sync('**/*.nview', {
            nodir: true,
            cwd: projectPath,
            ignore: ['./node_modules/**/*']
        });
        for (var i = 0; i < excludePaths.length; i++) {
            curFile = util.normalizePath(path.join(projectPath, excludePaths[i]));
            compilePaths.push(excludePaths[i] + '.js');
            oldNViewCompile(projectPath, curFile, path.join(toPath, excludePaths[i] + '.js'));
        }
    }
    compilePaths.push('sitemap.json');
    console.log(JSON.stringify({
        exclude: excludePaths,
        compile: compilePaths
    }));
};
var __compile__ = function(projectPath, curFile, toPath) {
    if (!fs.pathExistsSync(path.join(projectPath, 'app.js'))) { //旧版本,不包含app.js
        var config = parseSitemap(projectPath, true);
        if (config) {
            fs.outputFileSync(path.join(toPath, 'sitemap.json'), JSON.stringify(config), {
                override: true
            });
        }
        __old_compile__(projectPath, curFile, toPath);
        return;
    }
    if (!fs.pathExistsSync(path.join(projectPath, './sitemap.json'))) { //非新版本wap2app项目
        return;
    }
    var config = parseSitemap(projectPath);

    fs.outputFileSync(path.join(toPath, 'sitemap.json'), JSON.stringify(config), {
        override: true
    });

    var sitemapCode = '';
    var utilCodes = [];
    var nviewCodes = [];
    var pageCodes = [];

    var resource = parseResource(projectPath);

    var appid = resource.appid;
    var pagePaths = resource.pagePaths;
    var utilPaths = resource.utilPaths;
    var nviewPaths = resource.nviewPaths;

    var defineCode = fs.readFileSync(path.join(global.__dirname, './template/define.js'), 'utf-8');

    /**
     * 生成sitemap代码
     */
    sitemapCode = 'window.__wap2app_sitemap = ' + JSON.stringify(config) + ';';
    /**
     * 生成util模块代码
     */
    if (utilPaths && utilPaths.length) {
        for (var i = 0; i < utilPaths.length; i++) {
            var module = utilPaths[i];
            var code = fs.readFileSync(path.join(projectPath, module), 'utf-8');
            utilCodes.push(defineCode.replace('/*{MODULE}*/', module).replace('/*{CODE}*/', function() {
                return code;
            }));
        }
    }
    /**
     * 生成nview模块代码
     */
    if (nviewPaths && nviewPaths.length) {
        for (var i = 0; i < nviewPaths.length; i++) {
            var module = nviewPaths[i];
            var code = parseNView(path.join(projectPath, module));
            if (code) {
                nviewCodes.push(defineCode.replace('/*{MODULE}*/', module).replace('/*{CODE}*/', function() {
                    return code;
                }));
            }
        }
    }

    /**
     * 生成app及页面模块代码
     */
    if (pagePaths && pagePaths.length) {
        for (var i = 0; i < pagePaths.length; i++) {
            var module = pagePaths[i];
            var isPage = module !== 'app.js';
            var code = fs.readFileSync(path.join(projectPath, module), 'utf-8');
            if (isPage) {
                var result = babel.transform(code, {
                    plugins: [
                        [page, {
                            module: module
                        }]
                    ]
                });
                if (result && result.code) {
                    code = result.code;
                }
            }
            pageCodes.push(defineCode.replace('/*{MODULE}*/', module).replace('/*{CODE}*/', function() {
                return code;
            }) + '\r\nrequire("' + module + '");\r\n');
        }
    }
    generate(appid, sitemapCode, utilCodes.join(''), nviewCodes.join(''), pageCodes.join(''), toPath);
    console.log(JSON.stringify({
        exclude: pagePaths.concat(utilPaths).concat(nviewPaths),
        compile: ['__wap2appconfig.js', 'sitemap.json']
    }));
};
if (process.argv.length === 5) {
    __compile__(process.argv[2], process.argv[3], process.argv[4]);
} else {
    throw new Error('$$参数不正确$$');
}