{%extends 'c_base.tpl'%} {%block name='content'%}<style>{%fe_fn_c_css css='btn'%}</style><div id="app-div"> <div id="app-tooltip-container"></div> <div id="app-frame"> <div id="app-container">  <div class="app-header"> <div class="app-header-content"></div> </div>  <div class="app-body"> <div id="app-list-scene" class="app-scene-clip clearfix"></div> </div> </div>  <div id="app-rcmd" class="app-rcmd"></div> </div></div><script>(function(){var app = window.app = {},cache = {},loading = {}, waiting = {},doc = document,head = doc.getElementsByTagName('head')[0],empty = function(){}; app.dislist={"timer":{},"globalVar":["baiduInstance","BAPP","BAPPCustomSkin","BAPPFlashWrapper","arrBaiduAds"],"ajaxCb":[]};app.dispose=function(){try{app.clickLog.unmouseDown();BAPP && BAPP.message && app.baidu &&app.baidu.un(window,"message",BAPP.message);app.getClass('widget/Sandbox').bapp && app.getClass('widget/Sandbox').bapp.unbind();for(var i=0,l=app.dislist.globalVar.length;i<l;i++){window[app.dislist.globalVar[i]] && (window[app.dislist.globalVar[i]] = undefined);}for(var i=0,l=app.dislist.ajaxCb.length;i<l;i++){window[app.dislist.ajaxCb[i]] && (window[app.dislist.ajaxCb[i]] = empty);}for(var t in app.dislist.timer){if(app.dislist.timer.hasOwnProperty(t) && app.dislist.timer[t]){clearTimeout(app.dislist.timer[t]);}}if(app.baidu.$$ && app.baidu.$$._instances && (typeof app.baidu.$$._instances)){for(var f in app.baidu.$$._instances){if(app.baidu.$$._instances.hasOwnProperty(f)){if(app.baidu.$$._instances[f].__type && app.baidu.$$._instances[f].__type.indexOf("baidu.fx")!=-1){app.baidu.$$._instances[f].cancel();}}}}window.app=undefined;}catch(e){}}; app.asyncScript=function(path, callback){callback = callback || empty;if(path in cache){callback();return;}if(path in loading){waiting[path].push(callback);return;}loading[path] = 1;var fns = waiting[path] = [callback];var script = doc.createElement('script');script.type = 'text/javascript';script.charset = 'utf-8';script.onload = script.onreadystatechange = function(){if((!this.readyState || this.readyState === "loaded" || this.readyState === "complete")){while(fns.length){fns.shift()();}delete loading[path];cache[path] = 1;script.onload = script.onreadystatechange = null;if ( head && script.parentNode ) {head.removeChild( script );}}};script.src = path;head.insertBefore( script, head.firstChild );};app.loadStatic=function(names, callback){!names.pop && (names=[names]);callback = callback || empty;if(names.length > 1){app.loadStatic(names.shift(), function(){if(names.length > 0){app.loadStatic(names, callback);}});return;}var name = names[0];app.asyncScript(name, callback);};app.loadCss=function(path, callback){callback = callback || empty;if(path in cache){callback();return;}var css = doc.createElement('link');css.rel = 'stylesheet';css.type = 'text/css';css.href = path;head.appendChild(css);cache[path] = 1;callback();};})(window);var app = app || {};app.args = app.args || {};app.args.app_domain = 'http://app.baidu.com';app.args.appListExist = 1;app.args.appStartTime = app.args.appStartTime || (+new Date());app.args.isOpen = false;app.data = app.data || {};(function() {app.load_info_script = function(url, callback) {window['app_detail_callback'] = function(data) {callback(data);};var head = document.getElementsByTagName('head')[0];var script = document.createElement('script');script.type = 'text/javascript';script.src = url;script.charset = 'utf-8';head.insertBefore(script, head.firstChild);};var context = app.data.__data__= {'other_data' : [{'Query': '{%$tplData.Query|escape:'javascript'%}', {%if $tplData.QueryStrategy%}'appQueryStrategy': '{%$tplData.QueryStrategy|escape:'javascript'%}', {%else%}'appQueryStrategy': '{"type":"60000", "all":"0"}', {%/if%}'app_sType': '{%$tplData.sType%}', 'Keyword': '{%$tplData.Keyword|limitlen:50|escape:'javascript'|escape:'html'%}', 'PageNo': 1, 'ListNum': {%$tplData.ListNum%}, 'DispNum': {%$tplData.DispNum%}, 'NowTime': window['bdServerTime']}],'data': [{%$loop_maxcount=$tplData.ResNum%}{%for $op_loop_count=0 to 11%}{%if $op_loop_count<$loop_maxcount%} {'app_id': '{%$tplData.result[$op_loop_count]['appId']%}','app_cid': '{%$tplData.result[$op_loop_count]['catPid1']|escape:'javascript'%}','app_leaf_cid': '{%$tplData.result[$op_loop_count]['catId1']|escape:'javascript'%}',{%if $tplData.result[$op_loop_count]['rankExpand']%}'rankExpand' : {%$tplData.result[$op_loop_count]['rankExpand']%}, {%/if%}{%if $tplData.result[$op_loop_count]['hotLevel']%}'hotLevel' : {%$tplData.result[$op_loop_count]['hotLevel']|escape:'javascript'%}, {%/if%}'app_name': '{%$tplData.result[$op_loop_count]['appName']|escape:'html'%}','app_name_hilight': '{%$tplData.result[$op_loop_count]['appName']|highlight:0%}','developer_name': '{%$tplData.result[$op_loop_count]['developerType']|escape:'html'%}：{%$tplData.result[$op_loop_count]['developerName']|escape:'html'%}','developer_title': '{%$tplData.result[$op_loop_count]['developerName']|escape:'html'%}','developer_type': '{%$tplData.result[$op_loop_count]['developerType']|escape:'html'%}','developer_alias': '{%$tplData.result[$op_loop_count]['developerAlias']|escape:'html'%}', 'developer_website': '{%$tplData.result[$op_loop_count]['developerWebsite']%}','developer_level' : '{%$tplData.result[$op_loop_count]['developerLevel']%}','app_shortdesc': '{%$tplData.result[$op_loop_count]['appShortdesc']|escape:'javascript'|escape:'html'%}','app_sType': '{%$tplData.result[$op_loop_count]['sType']%}',{%if $tplData.result[$op_loop_count]['attribute']%}'attribute': eval('({%$tplData.result[$op_loop_count]['attribute']|escape:'javascript'%})'),{%else%}'attribute': null,{%/if%}'score': '{%$tplData.result[$op_loop_count]['score']%}','score_num': {%$tplData.result[$op_loop_count]['commentNum']%},'app_price': '{%$tplData.result[$op_loop_count]['appPrice']%}','app_logo': '{%$tplData.result[$op_loop_count]['appLogo']%}','app_useTimes': '{%$tplData.result[$op_loop_count]['useTimes']|escape:'javascript'%}'{%if $tplData.result[$op_loop_count]['searchTabLabel']%}, 'app_lable': '{%$tplData.result[$op_loop_count]['searchTabLabel']|escape:'javascript'%}'{%/if%}{%if $tplData.result[$op_loop_count]['stagValue']%}, 'stag_value' : '{%$tplData.result[$op_loop_count]['stagValue']|escape:'javascript'%}'{%/if%}{%if $tplData.result[$op_loop_count]['createTime']%}, 'create_time': {%$tplData.result[$op_loop_count]['createTime']%}{%/if%}},{%else%}{%break%}{%/if%}{%/for%}{}].slice(0, -1)};app.args.ListNum = context.other_data[0].ListNum; app.sType = context.other_data[0].app_sType;app.queryStrategy = context.other_data[0].appQueryStrategy;app.queryStrategy = app.queryStrategy && (eval('(' + app.queryStrategy + ')'));app.queryStrategy = app.queryStrategy || {};app.data.initData = app.data.__data__;app.data.searchData = app.data.initData.data;if (app.queryStrategy.type == '2001') {}else if (context.data && context.data.length == 1) {var _appData = context.data[0];app.load_info_script('http://app.baidu.com/appweb/api/render/search?appid=' + _appData.app_id + '&t=' + new Date(), function(data) {app.args.info = data;});}})();;(function(A){var A=A||{};A.fileMap=A.fileMap||{"tangram.js":"b3df9283","pub.js":"538aa726","delay_detail.js":"44b1c1b9","mix_six.js":"3a0487a7","mix_one.js":"73403e5b","common_general.js":"1e2f4b76","pub.css":"921087ea","delay_detail.css":"196088f2","mix_six.css":"94d09716","mix_one.css":"94d09716","common_general.css":"94b4cc95","delay_default.js":"5aa71319","detail.js":"f3fa592f","delay_default.css":"f3b5406e","detail.css":"2d047925","static/app_contact.html":"680e3a1e","static/bd_app_relay.html":"922971a9","static/image/app.gif":"2d0e759d","static/image/icon/filter.png":"1b080e63","static/image/icon/filter_active.png":"23a78a87","static/image/icon/filter_hover.png":"5fae861e","static/image/icon/tooltip_bg.png":"a7813832","static/image/tooltip_bg.png":"a7813832","static/swf/AppClipboard.swf":"2c34c5a7","static/swf/app_ad_float.swf":"04e280c8","static/swf/app_ad_right.swf":"dc77e865","static/swf/BaiduAPPShell.swf":"3697aec2","none":""};})(app);app.getPathByFileName = function(name) {var n = name.split('.');var md5 = app.fileMap[name];md5 && n.splice(n.length - 1, 0, md5);return app.args.root + n.join('.');};app.args.root = '/cache/app/app/';app.loadCss(app.getPathByFileName('pub.css'));app.loadStatic([app.getPathByFileName('tangram.js'),app.getPathByFileName('pub.js')], function(){app.whetherOpen = function(){ if(!app.data){return false;}var data = app.data.initData.data;if(app.args.appListExist){if(!data[0].rankExpand){app.args.isOpen = false;}else if(data.length == 1){app.args.isOpen = true;app.clickLog = app.clickLog || new app.ClickLog();if(app.args.isOpen && data[0].rankExpand && (parseInt(app.clickLog.getP1()) > parseInt(data[0].rankExpand))){app.args.isOpen = false;}} }app.args.isDetail = app.args.isOpen; };app.whetherSame = function(){var openGroups = [],groups = [],probSum = 0;var searchData = app.data.initData.data,open = app.queryStrategy.data.open,noopen = app.queryStrategy.data.noopen,groups = [],openGroups = [],probSum = 0;for (var i = 0, l = searchData.length; i < l; i++) {var appData = searchData[i];if (open) {for (var j = 0, jlen = open.length; j < jlen; j++) {if (open[j].prob && open[j].app_id == appData.app_id) {appData.prob = open[j].prob || 0;probSum += parseFloat(appData.prob);groups.push(appData);openGroups.push(appData);}}}if (noopen) {for (var j = 0, jlen = noopen.length; j < jlen; j++) {if (noopen[j].app_id == appData.app_id) {appData.prob = 0;groups.push(appData);}}}}app.args.openGroups = openGroups;app.args.groups = groups;app.args.probSum = probSum;if (app.args.openGroups && app.args.openGroups.length > 0) {var openGroups = app.args.openGroups,groups = app.args.group,probSum = parseInt(app.args.probSum);app.args.isSameGroupOpen = true;openGroups.sort(function(a, b) {return b.prob - a.prob;});var pnum = 1;probSum = parseInt(probSum);if (document.cookie) {var d = new Date();pnum = (parseInt(document.cookie.match(/BAIDUID=((\d|\w)+)/)[1], 16) % probSum + d.getDate() * d.getDay()) % probSum;}app.args.isDetail = (app.args.openGroups && app.args.openGroups.length > 0);app.args.groupOpenAppId = openGroups[0].app_id;var temp = 0;for (var i = 0; i < openGroups.length; i++) {temp += parseFloat(openGroups[i].prob);if (temp >= pnum) {app.args.groupOpenAppId = openGroups[i].app_id;break;}}app.data.groups = {data: groups};var appId = app.args.firstAppId;if (app.args.isSameGroupOpen) {appId = app.args.groupOpenAppId;app.load_info_script('http://app.baidu.com/appweb/api/render/search?appid=' + appId + '&t=' + new Date(), function(data) {app.args.info = data;});}} };app.strategyMap = {"1001" : "mix_six","3001" : "common_general","3003" : "common_general","3005" : "common_general","30001" : "common_general","30002" : "common_general","30003" : "common_general","30004" : "common_general","30005" : "common_general" ,"30006" : "common_general","40000" : "mix","50001" : "mix","50002" : "mix","50003" : "mix","50004" : "mix","50005" : "mix","50006" : "mix","60000" : "mix"};app.strategy = function(qt){var strategyName = app.strategyMap[qt] || 'mix';var pqt=qt.substr(0,4),cqt=qt.substr(4);if(qt>9999){switch (pqt){case '4000':case '5000': case '6000':app.whetherOpen();if(app.args.isDetail){strategyName = "detail"; break; }if(app.args.ListNum<=1){strategyName += "_one";}else{strategyName += "_six";}break;}}else{app.queryStrategy && (app.queryStrategy.all = '1');if(qt == "2001"){app.whetherSame();app.args.isDetail && (strategyName = "detail"); }}if(!strategyName || strategyName == "" || strategyName == "mix"){if(app.args.ListNum<=1){strategyName = "mix_one";}else{strategyName = "mix_six";}}return strategyName;}; app.args.currentStragegy = app.strategy(app.queryStrategy.type); if(app.fileMap[app.args.currentStragegy + '.css']) {app.loadCss(app.getPathByFileName(app.args.currentStragegy + ".css"));}var data = {appSType: '{%$tplData.sType%}'};var baidu=app.baidu;baidu.extend(app.data, data);var args = {keyword: '{%$tplData.Keyword|escape:'html'|escape:'javascript'%}',initKeyword: '{%$tplData.Query|escape:'javascript'%}',dispNum: {%$tplData.DispNum%},totalNum: {%$tplData.ListNum%},sType: '{%$tplData.sType%}',firstAppId: '{%$tplData.result[0]['appId']|escape:'javascript'%}'};baidu.extend(app.args, args); app.init();app.loadStatic(app.getPathByFileName(app.args.currentStragegy + ".js"),function(){ var delay = app.args.isDetail ? 'delay_detail' : 'delay_default';app.loadStatic(app.getPathByFileName(delay + '.js'), function(){});if(app.fileMap[delay + '.css']){app.loadCss(app.getPathByFileName(delay + '.css'));}});}, 'utf-8');</script>{%/block%}