{%extends 'right_base.tpl'%} {%block name='content'%}<style type="text/css">.opr-weather-container{font-size:15px;color:#333;margin-bottom:-4px}.opr-weather-container{width:270px}.opr-weather-container h2{position:relative;height:22px;line-height:22px;padding:0;margin:0;margin-bottom:8px}.opr-weather-title{font-size:16px;position:absolute;z-index:2;padding-right:10px;background:#fff;font-weight:bold}.opr-weather-title-line{width:100%;position:absolute;z-index:1;border-top:1px solid #eaeaea;top:11px}.opr-weather-content{line-height:24px}.opr-weathe{%*i*%}r-temperature{padding-left:2px}.opr-weather-comefrom{color:#666}.opr-weather-content-block{display:block}.opr-weather-comefrom{margin-left:0}.opr-weather-icon{position:relative;top:-6px;display:inline-block;border:0;width:22px;height:22px;vertical-align:middle}.opr-weather-week{margin-left:4px}</style><div class="opr-weather-container"><h2><div class="opr-weather-title">{%$tplData.title|escape%}</div><div class="opr-weather-title-line"></div></h2> <div class="opr-weather-content"> <span class="opr-weather-content-block"> <img src="{%$tplData.icon%}" class="opr-weather-icon" data-nolog /><span class="opr-weather-temperature">{%$tplData.content|escape%}</span> <a class="opr-weather-week" href="{%$tplData.more%}" target="_blank">未来一周天气&gt;&gt;</a> </span> <span class="opr-weather-content-block"> <span class="opr-weather-comefrom">来自：{%$tplData.from|escape%}</span> </span> </div> </div>{%/block%}