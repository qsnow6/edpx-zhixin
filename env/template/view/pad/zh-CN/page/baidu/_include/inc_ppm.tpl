{%*同步统计代码*%}{%block name="ppm_title"%}{%if $PPM%}{%*全局统计变量以及页面头部时间戳*%}<script>var _WWW_ST = 0,_WWW_SRV_T = 0,_WWW_ST_TITLE = new Date().getTime();</script><script>function addEV(o, e, f){if(window.attachEvent){o.attachEvent("on" + e, f);}else if(window.addEventListener){o.addEventListener(e, f, false);}};var PPM = {_opt:{is_login: false,sample: 0,product_id: 0,page_id: 0,special_pages: [],display: false},sendLog:function() {var params = PPM.s_params,opt = PPM._opt,logPath = opt.log_path + "?",queryString = '',_metrics = [];for (var i in params) {if (params.hasOwnP{%*i*%}roperty(i)) {_metrics.push("cus_" + i + "=" + params[i]);}};for (var j in opt) {if (opt.hasOwnProperty(j)) {_metrics.push(j + "=" + opt[j]);}};var img = window['_WWW_PPM_' + new Date().getTime()] = new Image();img.src = logPath + (_metrics.join('&'));}};</script>{%/if%}{%/block%}{%block name="pdc_content"%}{%if $CHUNKED && $PDC%}<script>var _WWW_ST_CTS = new Date().getTime();</script>{%/if%}{%/block%}{%*body_end之后插入*%}{%block name="ppm_init"%}{%if $PPM%}<script>addEV(window,"load",function(){var FIRST_SCREEN_HEIGHT = 600, fsTime = 0,l_fsTime = 0,r_fsTime = 0,mon = bds.se.mon,FIRST_SCREEN_IC = 0,FIRST_SCREEN_IMG = [];try {for (var i = 0,len = mon.loadedItems.length; i < len; i++) {var loadedDom = mon.loadedItems[i],loadedDomTop = $(loadedDom.dom).position().top;if (loadedDomTop < FIRST_SCREEN_HEIGHT) {FIRST_SCREEN_IC++;FIRST_SCREEN_IMG.push(loadedDom.dom.src);fsTime = loadedDom.time > fsTime ? loadedDom.time : fsTime;if(loadedDom.position == 'le{%*i*%}ft') {l_fsTime = loadedDom.time > l_fsTime ? loadedDom.time : l_fsTime;}if(loadedDom.position == 'right') {r_fsTime = loadedDom.time > r_fsTime ? loadedDom.time : r_fsTime;}}}}catch(e){}if (fsTime == 0) {fsTime = _WWW_ST_TTI;}bds.se.mon.fsTime = fsTime;bds.se.mon.l_fsTime = l_fsTime;bds.se.mon.r_fsTime = r_fsTime;var _APP_ARGS;try {_APP_ARGS = app.args.currentStragegy;}catch(e){}_WWW_SRV_T = _WWW_SRV_T || bds.se.mon.srvt;var _WWW_CK_SAM = /BD_CK_SAM/.test(document.cookie);var _WWW_SRCID = [];var{%*i*%} _WWW_ECOMID = "{%$ecomIds%}";(function(){$.each($(".result-op").get(),function(i,res){try {var srcid = res.getAttribute("srcid"),dataClick = res.getAttribute("data-click");if (!srcid && dataClick) {srcid = eval('('+res.getAttribute("data-click")+')').rsv_srcid;}if (srcid) _WWW_SRCID.push(srcid);}catch(e){}});})();var _WWW_PAGES = [];var _PRELOADIMG_SUC = 0;{%if !empty($predictImgList) && ($CHUNKED)%}(function(){var preimg = _WWW_PRELOADIMG_LIST,nowimg = FIRST_SCREEN_IMG;for(var i = 0;i < preimg.length; i++){for(var j = 0;j < nowimg.length; j++){if(nowimg[j] == preimg[i]) {_PRELOADIMG_SUC += 1; }}}})();{%/if%}if(typeof PPM != 'undefined'){ PPM.special_pages = _WWW_PAGES;PPM.s_params = {'q' : encodeURIComponent('{%$query|escape:'javascript'%}'), 'tplp' : '', 'stime' : _WWW_ST ? _WWW_ST_TITLE - _WWW_ST : -1, 'tti2' : _WWW_ST ? _WWW_ST_TTI - _WWW_ST : -1, 'fs' : _WWW_ST ? bds.se.mon.fsTime - _WWW_ST : -1, 'srv' : _WWW_SRV_T, {%if $CHUNKED%}'net' : _WWW_ST ? _WWW_ST_TITLE - _WWW_ST - bds.se.mon.srvt : -1, {%else%}'net' : _WWW_ST ? _WWW_ST_TITLE - _WWW_ST - _WWW_SRV_T : -1, {%/if%}'fr' : bds.se.mon.fsTime - _WWW_ST_TITLE, {%if $CHUNKED%}'frdom' : _WWW_ST_TTI - _WWW_ST_CTS + _WWW_ST_HTTI - _WWW_ST_TITLE, {%else%}'frdom' : _WWW_ST_TTI - _WWW_ST_TITLE, {%/if%}'frext' : bds.se.mon.fsTime - _WWW_ST_TTI, 'app' : _APP_ARGS, 'srcid' : _WWW_SRCID.join("_"), 'sid' : bds.comm.sid, 'eid' : _WWW_ECOMID, 'qid' : bds.comm.qid, 'ic' : document.getElementsByTagName("img").length, 'extic' : FIRST_SCREEN_IC, 'icl' : document.getElementById("bds-container").getElementsByTagName("img").length, 'icr' : document.getElementById("bds-right-ads").getElementsByTagName("img").length,'ck' : bds.comm.chunked, 'b64' : {%($tplData.queryInfo.base64 == "on")?1:0%}, {%if !empty($predictImgList) && ($CHUNKED)%}'ic_pre' : _WWW_PRELOADIMG_LIST ? _WWW_PRELOADIMG_LIST.length : 0, 'ic_pre_suc' : _PRELOADIMG_SUC ? _PRELOADIMG_SUC : 0, {%/if%}'lfs' : _WWW_ST ? bds.se.mon.l_fsTime - _WWW_ST : -1, 'rfs' : _WWW_ST ? bds.se.mon.r_fsTime - _WWW_ST : -1, 'cusval': bds.comm.cusval }}if(_WWW_CK_SAM) {document.cookie="BD_CK_SAM=;expires=Sat, 01 Jan 2000 00:00:00 GMT";}PPM.sendLog();});if(typeof PPM != 'undefined'){PPM._opt = {'is_login' : {%($isUserLogin)?1:0%}, 'sample' : 1, 'product_id' : 45, 'page_id' : '{%$PDC_ID%}', 'log_path' : "http://www.baidu.com/nocache/fesplg/s.gif" };}</script>{%/if%}{%/block%}{%*翻页之前插入*%}{%block name="ppm_tti"%}{%if $PPM%}<script>var _WWW_ST_TTI = new Date().getTime();try {_WWW_ST = (eval(unescape(document.cookie.match(new RegExp("(^| )PMS_JT=([^;]*)(;|$)"))[2])))['s'];}catch(e){}var cont = G("container"),cont_left = G("bds-container"),cont_right = G("bds-right-ads"),imgs_left = cont_left.getElementsByTagName("IMG"),imgs_right = cont_right.getElementsByTagName("IMG"),ifms_left = cont_left.getElementsByTagName("IFRAME"),ifms_right = cont_right.getElementsByTagName("IFRAME");for (var i=0,len=imgs_left.length;i<len;{%*i*%}i++) {addEV(imgs_left[i],"load",(function(img){return function(){bds.se.mon.load(img,"left");};})(imgs_left[i])); }for (var i=0,len=imgs_right.length;i<len;i++) {addEV(imgs_right[i],"load",(function(img){return function(){bds.se.mon.load(img,"right");};})(imgs_right[i])); }for (var i=0,len=ifms_left.length;i<len;i++) {addEV(ifms_left[i],"load",(function(ifm){return function(){bds.se.mon.load(ifm,"left");};})(ifms_left[i])); }for (var i=0,len=ifms_right.length;i<len;i++) {addEV(ifms_right[i],"loa{%*i*%}d",(function(ifm){return function(){bds.se.mon.load(ifm,"right");};})(ifms_right[i])); }</script>{%/if%}{%/block%}