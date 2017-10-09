var path = require('path');
var fs = require('fs-extra');
var stripHtmlComments = require('strip-html-comments');

var babel = require("babel-core");
var parse = require('../parser/parser');
var nview = require("../plugin/nview");
var nviewValidate = require("../plugin/nview.validate");
var nviewRename = require("../plugin/nview.rename");

var scriptRegex = /<script[\s\S]*?>([\s\S]*)?<\/script>/gi;

module.exports = function(from) {
    var result = parse.parseComponent(fs.readFileSync(from, 'utf-8'), {
        pad: 'space'
    });
    if (result) {
        var template = result.template;
        var script = result.script;
        var stylesArray = result.styles;

        var renderCode = false;
        var scriptCode = false;
        //第一步:编译template
        if (template && template.content) {
            var result = babel.transform(stripHtmlComments(template.content), {
                plugins: [
                    nviewValidate.template, nviewRename.template, ["transform-react-jsx", {
                        pragma: 'SubNView.createElement'
                    }],
                    nview.template
                ]
            });
            if (result && result.code) {
                renderCode = result.code;
            }
        }
        if (!renderCode) {
            throw new Error('$$'+from + 'template节点 编译失败$$');
        }
        //第二步:编译script
        if (script && script.content) {
            var result = babel.transform(script.content, {
                plugins: [
                    nview.render,
                    nview.exports
                ]
            });
            if (result && result.code) {
                scriptCode = result.code;
            }
        }
        if (!scriptCode) {
            throw new Error('$$'+from + 'script节点 编译失败$$')
        }
        scriptCode = scriptCode.replace('\'/*{RENDER_FUNCTION}*/\'', function() {
            return 'function(data){ return ' + renderCode.trim() + '}'
        }).replace('\"/*{RENDER_FUNCTION}*/\"', function() {
            return 'function(data){ return ' + renderCode.trim() + '}'
        }).trim();
        return scriptCode;
    }
}