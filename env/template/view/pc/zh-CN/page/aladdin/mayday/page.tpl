{%extends 'base_div.tpl'%} {%block name='content'%}<style type="text/css">.op_mayday_init_state .result,.op_mayday_init_state .result-op{visibility:hidden}.op_mayday_init_state .op_mayday{visibility:visible}.op_mayday_init_state .op_mayday_copyright{visibility:hidden}.op_mayday_wrap{width:600px;height:868px;position:relative;overflow:hidden}.op_mayday_flash{position:absolute;left:0;top:0;height:868px;width:100%}.op_mayday_content{position:absolute;left:0;top:0;width:100%}.op_mayday_center{text-align:center}.op_mayday_icon{background-image:url(ht{%*i*%}tp://www.baidu.com/aladdin/img/51/bg.gif);background-repeat:no-repeat;over-flow:hidden;display:block}.op_mayday_progress{width:100px;height:7px;margin-top:3px;overflow:hidden}.op_mayday_progress div{background:#e5e5e5;height:7px}.op_mayday_morelink{margin-top:5px}.op_mayday_score{background:url(http://www.baidu.com/aladdin/img/videoidea/videoidea.png) 0 0;width:75px;height:13px;overflow:hidden;float:left}.op_mayday_score div{background:url(http://www.baidu.com/aladdin/img/videoidea/videoidea.png{%*i*%}) 0 -28px;height:13px;overflow:hidden;float:left}.op_mayday_mod table.op_mayday_score_table{width:96px;margin:2px auto}.op_mayday_img_text{margin-top:3px}.op_mayday_close{width:19px;height:19px;background-position:0 -50px;position:absolute;top:0;right:0}.op_mayday_close:hover{background-position:-20px -50px}.op_mayday_close:active{background-position:-20px -50px}.op_mayday_mod{margin-bottom:24px;display:none}.op_mayday_video{height:258px}.op_mayday_game{height:140px}.op_mayday_music{height:248px{%*i*%}}.op_mayday_food{height:150px}.op_mayday_mod h3{font-size:14px;line-height:18px;margin-bottom:3px;font-weight:bold}.op_mayday_mod a{font-size:13px;text-decoration:none}.op_mayday_mod table{border-collapse:collapse;width:100%}.op_mayday_mod th{font-size:13px;font-weight:normal;text-align:left;background:#fafafa}.op_mayday_mod th,.op_mayday_mod td{padding:0;border:0;color:#666;line-height:normal;white-space:nowrap;text-overflow:ellipsis}.op_mayday_video img{width:120px;height:162px;padding:5px}.op{%*i*%}_mayday_video_split{width:10px!important}.op_mayday_game img{width:70px;height:70px;border:0}.op_mayday_center_childDiv{width:140px}.op_mayday_game_split{width:36px}.op_mayday_music th{padding:5px 5px;border-bottom:1px solid #f3f3f3}.op_mayday_music td{padding:7px 5px;border-bottom:1px solid #f3f3f3}.op_mayday_paly_btn{width:95px;height:24px;background-position:0 0;padding:4px 0 0 25px;*padding-top:6px;margin-top:2px;color:#444;overflow:hidden}.op_mayday_mod .op_mayday_all_link{text-decoration:u{%*i*%}nderline}.op_mayday_music .op_mayday_play_icon{height:18px;width:18px;background-position:0 -30px;font-size:0;margin-left:5px}.op_mayday_music .op_mayday_download_icon{height:18px;width:18px;background-position:-20px -30px;font-size:0;margin-left:5px}.op_mayday_food img{width:140px;height:105px}.op_mayday_food_split{width:13px}.op_mayday_copyright{font-size:12px;color:#666;margin-top:25px}.op_mayday_copyright i{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") -40px 0 no-r{%*i*%}epeat;padding-left:20px}.op_mayday_show_effect{display:block;-webkit-animation-name:op_mayday_fadein;-webkit-animation-duration:1s;-webkit-animation-timing-function:ease;-webkit-animation-iteration-count:1;-moz-animation-name:op_mayday_fadein;-moz-animation-duration:1s;-moz-animation-timing-function:ease;-moz-animation-iteration-count:1;-o-animation-name:op_mayday_fadein;-o-animation-duration:1s;-o-animation-timing-function:ease;-o-animation-iteration-count:1}@-webkit-keyframes op_mayday_fadein{{%*i*%}0%{-webkit-transform:rotateX(270deg);opacity:0}100%{-webkit-transform:rotateX(360deg);opacity:1}}@-moz-keyframes op_mayday_fadein{0%{-moz-transform:rotateX(270deg);opacity:0}100%{-moz-transform:rotateX(360deg);opacity:1}}@-o-keyframes op_mayday_fadein{0%{-o-transform:rotateX(270deg);opacity:0}100%{-o-transform:rotateX(360deg);opacity:1}}</style><div class="op_mayday_wrap"> <div class="op_mayday_flash"></div> <div class="op_mayday_content"> <div class="op_mayday_mod op_mayday_video"></div> <div c{%*i*%}lass="op_mayday_mod op_mayday_game"></div> <div class="op_mayday_mod op_mayday_music"></div> <div class="op_mayday_mod op_mayday_food"></div> </div> <a href="#" class="op_mayday_icon op_mayday_close" style="display:none;"></a></div><div class="op_mayday_copyright"><i>&nbsp;</i>以上信息由百度根据您的搜索词自动产生</div><script>A.setup("man", {%json_encode($tplData.man)%});A.setup('flash', '{%$tplData.flash|escape:'javascript'%}');</script><script type="text/template" class="op_mayday_template_video"><h3><#=header#></h3><div style="display:none"><#for(var i=0;i<link.length;i++){#><span class="op-mayday-video-tab-item"><#=link[i].title#></span><#}#></div><div class="op-mayday-video-tabxbox"></div><table class="op-mayday-video-tab" style="display:none"><tr><#for(var i=0;i<item.length;i++){#><#if(item[i].tab== 0){#><td class="op_mayday_center"><div class="op_mayday_center_childDiv"><a href="<#=item[i].url#>" target="_blan{%*i*%}k"><img src="<#=item[i].img#>" /></a></div><div class="op_mayday_img_text"><a href="<#=item[i].url#>" target="_blank"><#=item[i].title#></a></div><table class="op_mayday_score_table"><tr><td><div class="op_mayday_score"><div style="width:<#=item[i].score*10+'%'#>"></div></div></td><td><#=item[i].score#></td></tr></table></td><#if(i < item.length - 1){#><td class="op_mayday_video_split"></td><#}#><#}#><#}#></tr></table><table style="display:none" class="op-mayday-video-tab"><tr><#for(var i=0;i<it{%*i*%}em.length;i++){#><#if(item[i].tab == 1){#><td class="op_mayday_center"><div class="op_mayday_center_childDiv"><a href="<#=item[i].url#>" target="_blank"><img src="<#=item[i].img#>" /></a></div><div class="op_mayday_img_text"><a href="<#=item[i].url#>" target="_blank"><#=item[i].title#></a></div><table class="op_mayday_score_table"><tr><td><div class="op_mayday_score"><div style="width:<#=item[i].score*10+'%'#>"></div></div></td><td><#=item[i].score#></td></tr></table></td><#if(i < item.length - {%*i*%}1){#><td class="op_mayday_video_split"></td><#}#><#}#><#}#></tr></table></script><script type="text/template" class="op_mayday_template_game"><h3><#=header#></h3><table><tr><#for(var i=0;i<item.length;i++){#><td class="op_mayday_center"><div><a href="<#=item[i].url#>" target="_blank"><img src="<#=item[i].img#>" /></a></div><div class="op_mayday_img_text"><a href="<#=item[i].url#>" target="_blank"><#=item[i].title#></a></div></td><#if(i < item.length - 1){#><td class="op_mayday_game_split"></td><#{%*i*%}}#><#}#></tr></table><div class="op_mayday_morelink"><a href="<#=link[0].url#>" target="_blank"><#=link[0].title#></a></div></script><script type="text/template" class="op_mayday_template_music"><h3><#=header#></h3><table><tr><#for(var i=0;i<5;i++){#><th <#if(i == 0){#>colspan=2<#}#> ><#if(th[0]['col'+i+'url']){#><a <#if(i == 0){#>class="op_mayday_icon op_mayday_paly_btn"<#}#> <#if(i == 1){#>class="op_mayday_all_link"<#}#>href="<#=th[0]['col'+i+'url']#>" target="_blank"><#=th[0]['col'+i]#></a><#{%*i*%}}else{#><#=th[0]['col'+i]#> <#}#> </th><#}#></tr><#for(var i=0;i<td.length;i++){#><tr><#for(var j=0;j<5;j++){#><#if(j == 0){#><td><#='0' + (i + 1)#></td><#}#><td><#if(td[i]['col'+j+'url']){#><a href="<#=td[i]['col'+j+'url']#>"<#if(j == 3){#>class="op_mayday_icon op_mayday_play_icon"<#}#><#if(j == 4){#>class="op_mayday_icon op_mayday_download_icon"<#}#> target="_blank"><#=td[i]['col'+j]#></a><#}else{#><#if(j == 2){#><div class="op_mayday_progress"><div style="width:<#=td[i]['col'+j]+'%'#>"></div>{%*i*%}</div><#}else{#><#=td[i]['col'+j]#> <#}#><#}#> </td><#}#></tr><#}#> </table><div class="op_mayday_morelink"><a href="<#=link[0].url#>" target="_blank"><#=link[0].title#></a></div></script><script type="text/template" class="op_mayday_template_food"><h3><#=header#></h3><table><tr><#for(var i=0;i<item.length;i++){#><td class="op_mayday_center"><a href="<#=item[i].url#>" target="_blank"><img src="<#=item[i].img#>" /></a><div class="op_mayday_img_text"><a href="<#=item[i].url#>" target="_blank"><#=i{%*i*%}tem[i].title#></a></div></td><#if(i < item.length - 1){#><td class="op_mayday_food_split"></td><#}#><#}#></tr></table></script><script>bds.ready(function(){(function(window){var baidu=typeof module==='undefined'?(window.baidu=window.baidu||{}):module.exports;baidu.template=function(str,data){var fn=(function(){if(!window.document){return bt._compile(str);};var element=document.getElementById(str);if(element){if(bt.cache[str]){return bt.cache[str];};var html=/^(textarea|input)$/i.test(element.nod{%*i*%}eName)?element.value:element.innerHTML;return bt._compile(html);}else{return bt._compile(str);};})();var result=bt._isObject(data)?fn(data):fn;fn=null;return result;};var bt=baidu.template;bt.versions=bt.versions||[];bt.versions.push('1.0.6');bt.cache={};bt.LEFT_DELIMITER=bt.LEFT_DELIMITER||'<%';bt.RIGHT_DELIMITER=bt.RIGHT_DELIMITER||'%>';bt.ESCAPE=true;bt._encodeHTML=function(source){return String(source).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/\\/g,'&#92;').rep{%*i*%}lace(/"/g,'&quot;').replace(/'/g,'&#39;');};bt._encodeReg=function(source){return String(source).replace(/([.*+?^=!:${}()|[\]/\\])/g,'\\$1');};bt._encodeEventHTML=function(source){return String(source).replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;').replace(/"/g,'&quot;').replace(/'/g,'&#39;').replace(/\\\\/g,'\\').replace(/\\\//g,'\/').replace(/\\n/g,'\n').replace(/\\r/g,'\r');};bt._compile=function(str){var funBody="var _template_fun_array=[];\nvar fn=(function(__data__){\nvar {%*i*%}_template_varName='';\nfor(name in __data__){\nif(__data__.hasOwnProperty(name)){\n_template_varName+=('var '+name+'=__data__[\"'+name+'\"];');\n}\n};\neval(_template_varName);\n_template_fun_array.push('"+bt._analysisStr(str)+"');\n_template_varName=null;\n})(_template_object);\nfn = null;\nreturn _template_fun_array.join('');\n";return new Function("_template_object",funBody);};bt._isObject=function(source){return'function'===typeof source||!!(source&&'object'===typeof source);};bt._analysisSt{%*i*%}r=function(str){var _left_=bt.LEFT_DELIMITER;var _right_=bt.RIGHT_DELIMITER;var _left=bt._encodeReg(_left_);var _right=bt._encodeReg(_right_);str=String(str).replace(new RegExp("("+_left+"[^"+_right+"]*)//.*\n","g"),"$1").replace(new RegExp("<!--.*?-->","g"),"").replace(new RegExp(_left+"\\*.*?\\*"+_right,"g"),"").replace(new RegExp("[\\r\\t\\n]","g"),"").replace(new RegExp(_left+"(?:(?!"+_right+")[\\s\\S])*"+_right+"|((?:(?!"+_left+")[\\s\\S])+)","g"),function(item,$1){var str='';if($1){str=$1.{%*i*%}replace(/\\/g,"&#92;").replace(/'/g,'&#39;');while(/<[^<]*?&#39;[^<]*?>/g.test(str)){str=str.replace(/(<[^<]*?)&#39;([^<]*?>)/g,'$1\r$2')};}else{str=item;}return str;});str=str.replace(new RegExp("("+_left+"[\\s]*?var[\\s]*?.*?[\\s]*?[^;])[\\s]*?"+_right,"g"),"$1;"+_right_).replace(new RegExp("("+_left+":?[hvu]?[\\s]*?=[\\s]*?[^;|"+_right+"]*?);[\\s]*?"+_right,"g"),"$1"+_right_).split(_left_).join("\t");if(bt.ESCAPE){str=str.replace(new RegExp("\\t=(.*?)"+_right,"g"),"',typeof($1) === 'undefined{%*i*%}'?'':baidu.template._encodeHTML($1),'");}else{str=str.replace(new RegExp("\\t=(.*?)"+_right,"g"),"',typeof($1) === 'undefined'?'':$1,'");};str=str.replace(new RegExp("\\t:h=(.*?)"+_right,"g"),"',typeof($1) === 'undefined'?'':baidu.template._encodeHTML($1),'").replace(new RegExp("\\t(?::=|-)(.*?)"+_right,"g"),"',typeof($1)==='undefined'?'':$1,'").replace(new RegExp("\\t:u=(.*?)"+_right,"g"),"',typeof($1)==='undefined'?'':encodeURIComponent($1),'").replace(new RegExp("\\t:v=(.*?)"+_right,"g"),"',t{%*i*%}ypeof($1)==='undefined'?'':baidu.template._encodeEventHTML($1),'").split("\t").join("');").split(_right_).join("_template_fun_array.push('").split("\r").join("\\'");return str;};})(window);});</script><script type="text/javascript">A.init(function(){var baidu = A.baidu, _this = this;var flash,an,animation;var getModDom = function(m){return _this.qq('op_mayday_' + m );};var closeBtn = _this.qq('op_mayday_close');var modNames = ['video', 'game', 'music', 'food'];var isRendered = false;var wrapTop {%*i*%}= baidu.dom.getPosition(_this.qq('op_mayday_wrap')).top;var modTops = {};var template = A.baidu.template;template.LEFT_DELIMITER = '<#';template.RIGHT_DELIMITER = '#>';var init = function(){baidu.addClass(_this.container, 'op_mayday');if(baidu.swf.version && parseInt(baidu.swf.version) > 9){startFlash();}else{showAllMods();}};var startFlash = function(){var name = "op_mayway_flash";baidu.swf.create({'id' : name,'url' : _this.data.flash,'vars' : 'ns=op_mayday_flash1234','width' : 600,'height' : 8{%*i*%}48,'wmode' : 'opaque','allowscriptaccess' : 'always','allownetworking' : 'all'}, _this.qq('op_mayday_flash'));var modHeightMap = {'video' : 31, 'game' : 62,'music' : 80,'food' : 100};flash = window.op_mayday_flash1234 = {};flash.onInit = function(){};flash.onRunStart = function(){};flash.onRunCompleted = function(){};flash.onRunProgress = function(x){var map = modHeightMap;var value = parseInt(x);for(var m in map){if(map.hasOwnProperty(m)){if(map[m] && value >= map[m]){map[m] = null; delete map[{%*i*%}m];fadeInMod(m, true);} }}};flash.onSelectGender = function(x){var map = ['man', 'woman'];var data = _this.data[map[x]] || _this.data['man'];render(data);};flash.onCancel = function(){endFlash();};flash.onExit = function(){endFlash();};baidu.show(closeBtn);closeBtn.onclick = function(){flash.onCancel();return false;};};var endFlash = function(){reconver();for(var i in flash){if(flash.hasOwnProperty(i)){flash[i] = function(){};}}baidu.hide(closeBtn);baidu.hide(_this.qq('op_mayday_flash'));showAll{%*i*%}Mods();};var reconver = function(){};var fadeInMod = function(modName, isScroll){var mod = getModDom(modName); mod.style.display = 'block';if(baidu.browser.ie){an = A.ui.animation(function(){var pos = baidu.dom.getPosition(mod);var from = {opacity:0}, to = {opacity:100};this.tween(from).to(to, 1000).onUpdate(function(){mod.style.filter = 'alpha(opacity='+this.opacity+');';}).onComplete(function(){an.stop();}).start();}).start();}else{baidu.addClass(mod, 'op_mayday_show_effect');}if(isScroll){ mo{%*i*%}dTops.video = wrapTop + getModDom('video').offsetHeight;modTops.game = modTops.video + 24 + getModDom('game').offsetHeight;modTops.music = modTops.game + 24 + getModDom('music').offsetHeight;modTops.food = modTops.music + 24 + getModDom('food').offsetHeight;animation = A.ui.animation(function(){var top = Math.max(document.body.scrollTop, document.documentElement.scrollTop);var from = {top:top}, to = {top:modTops[modName] - 100};if(modName == 'food'){baidu.hide(closeBtn);to = {top:0};}this.tween({%*i*%}from).to(to, 400).delay(800).onUpdate(function(){document.body.scrollTop = this.top;document.documentElement.scrollTop = this.top;closeBtn.style.top = this.top + 'px';}).onComplete(function(){animation.stop();}).start();}).start();}};var checkAndShowMod = function(modName){var mod = getModDom(modName); if(mod.style.display != 'block'){fadeInMod(modName);}};var showAllMods = function(){if(!isRendered) render(_this.data['man']);for(var i=0;i<modNames.length;i++){checkAndShowMod(modNames[i]);}};var{%*i*%} render = function(data){var mods = modNames;baidu.each(mods, function(m){var tpl = _this.qq('op_mayday_template_' + m).innerHTML; var modData = data[m];var html = template(tpl, cleanData(modData));getModDom(m).innerHTML = html;});isRendered = true;var tabItems = baidu.dom.q("op-mayday-video-tab-item"), tabContents = baidu.dom.q("op-mayday-video-tab");A.use("tabx", function(){A.ui.tabx(_this.qq("op-mayday-video-tabxbox")).add(tabItems, tabContents);});};var cleanData = function(data){for(var i i{%*i*%}n data){if(data.hasOwnProperty(i)){if(i.indexOf('#') != -1) delete data[i]; }}return data;};A.use('animation', function(){init();});this.dispose = function(){an&&an.dispose&&an.dispose();animation&&animation.dispose&&animation.dispose();};});</script>{%/block%}