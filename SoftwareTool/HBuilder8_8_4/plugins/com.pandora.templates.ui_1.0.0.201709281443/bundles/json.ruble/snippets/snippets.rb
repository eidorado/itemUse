require 'ruble'
with_defaults :scope => "source.json" do   #=====json代码块编辑===============================
	
snippet "page" do |s| #单个page的配置信息
s.trigger = "wpage"
s.locationType="SITEMAP"
s.expansion = "{
	\"webviewId\": \"$1\",
	\"matchUrls\": [
		{
			\"hostname\": \"R:${2:.*}\",
			\"pathname\": \"R:${3:.*}\"
		}
	],
	\"webviewParameter\": {
		\"titleNView\": {
			\"backgroundColor\": \"#F7F7F7\",
			\"titleColor\": \"#000000\",
			\"titleSize\": \"17px\",
			\"titleText\": \"标题$4\",
			\"splitLine\": {
				\"color\": \"#CCCCCC\",
				\"height\": \"1px\"
			},
			\"autoBackButton\": true
		},
		\"appendCss\": \"$5\",
		\"appendJs\": \"$6\"
	},
	\"easyConfig\": {
		\"back\": {
			\"before\": [{
				\"popupSelector\": \"$7\",
				\"closeSelector\": \"$8\",
				\"eventType\": \"click$9\"
			}]
		}
	}
}$0"
end

snippet "matchurl" do |s| #单个matchurl的配置
s.trigger = "wmatchurl"
s.locationType = "SITEMAP"
s.expansion = "{
	\"hostname\": \"R:${1:.*}\",
	\"pathname\": \"R:${2:.*}\"
}$0"
end

snippet "before" do |s| #单个before的配置
s.trigger = "wbefore"
s.locationType = "SITEMAP"
s.expansion = "{
	\"popupSelector\": \"$1\",
	\"closeSelector\": \"$2\",
	\"eventType\": \"click$3\"
}$0"
end

snippet "waiting" do |s| #waiting的配置
s.trigger = "wwaiting"
s.locationType = "SITEMAP"
s.expansion = "\"waiting\": {
	\"title\":\"$1\",
	\"options\":{
        \"background\":\"$2\",
        \"color\":\"$3\"
   }
}$0" 
end

end