<script>var bds={se:{},comm : {query : "{%$query|vui_escape:'javascript'%}",qid : "{%$queryId%}",cid : "{%$urlPara.cid%}",sid : "{%$urlPara.sid%}",stoken : "{%$tplData.passport.passportUserBdstoken%}",serverTime : "{%$serverTime%}",user : "{%$userDisplayInfo|vui_escape:'javascript'%}",username : "{%$username|vui_escape:'javascript'%}",loginAction : [],useFavo : "{%$tplData.passport.isFavo%}",pinyin : "{%if $urlPara.fr != 'top1000'%}{%$tplData.rsseResult.queryPinyin|vui_escape:'javascript'%}{%/if%}",favoOn : "{%$isFavoOn%}",personalData : "{%if $tplData.queryInfo.personalData%}{%$tplData.queryInfo.personalData|vui_escape:'javascript'%}{%/if%}",isUserLogin : {%if $isUserLogin == 1%}true{%else%}false{%/if%},pageNum:parseInt('{%$tplData.queryInfo.pageNo%}')||1,pageSize:parseInt('{%$tplData.queryInfo.resNum%}')||10},util : {}};window['ORIENTATION_STATUS'] = 0;bds.se.mon = {'srvt':-1};try {bds.se.mon.srvt = parseInt(document.cookie.match(new RegExp("(^| )BDSVRTM=([^;]*)(;|$)"))[2]); document.cookie="BDSVRTM=;expires=Sat, 01 Jan 2000 00:00:00 GMT";}catch(e){}{%if $needubs == 1%}function al_c(A){while(A.tagName!="TABLE"){A=A.parentNode;}return A.getAttribute("id");}function al_c2(n,c){while(c--){while((n=n.parentNode).tagName!="TABLE");};return n.getAttribute("id");};(function(){var ua = navigator.userAgent;window.HD_VERSION = "";if(ua.indexOf("BaiduHD")){if((/BaiduHD.([\d\.]+)/).test(ua)){HD_VERSION = RegExp.$1;}}})();function c(q){var p1 = q['p1'];if(q['fm']=='alop' && !('rsv_xpath' in q)){if(p1 && G(p1).getAttribute('srcid')=='6677'){}else{return true;}}if(p1 && !('p5' in q)){q['p5'] = p1;}var p = window.document.location.href, sQ = '', sV = '', mu='', img = window["BD_PS_C" + (new Date()).getTime()] = new Image();var rsv_mobile = "{%$ubs_log_equipment%}_" + window['ORIENTATION_STATUS'] + "_" + (window['RESOLUTION'] || 99) + "_{%$ubs_log_apptype%}_" + (HD_VERSION || "0");if (q["title"]) {q["title"] = q["title"].slice(0,50);}for (v in q) {switch (v) {case "title":sV = encodeURIComponent(q[v].replace(/<[^<>]+>/g, ""));break;case "mu":case "url":sV = escape(q[v].replace("newtab:",""));break;default:sV = q[v];}sQ += "&" + v + "=" + sV;}try{if (("p2" in q)&&G(q["p1"]).getAttribute("mu") && q["fm"]!="pl") {mu= "&mu=" + escape(G(q["p1"]).getAttribute("mu"));}}catch(e){};img.src = "{%$ubs_domain%}{%$ubs_url%}?q={%$queryUbs%}" + sQ + mu + "&rsv_sid={%$urlPara.sid%}&cid={%$urlPara.cid%}&qid={%$queryId%}&t="+new Date().getTime()+"&rsv_mobile=" + rsv_mobile + "&path="+p;return true;}{%else%}function c(){return true}function al_c(){return true}function al_c2(n,c){return true}{%/if%}{%if $isUserLogin == 1%}var bdUser ="{%$userDisplayInfo|vui_escape:'javascript'%}";{%else%}var bdUser =null;{%/if%}var bdServerTime = "{%$serverTime%}";function setHeadUrl(el){var word = $.trim($("#kw").val());word = encodeURIComponent(word);var url = el.href;url = url.replace(new RegExp("(" + el.getAttribute('wdfield') + "=)[^&]*"), '\x241' + word+"&ie=utf-8");el.href = url;}function G(id){return document.getElementById(id);}window.onorientationchange = function(event){var orientation = window.orientation;window['ORIENTATION_STATUS'] = (orientation === -90 || orientation === 90) ? 1 : 0;};function ns_c(q){var p = encodeURIComponent(window.document.location.href),sQ = '',wd = '{%$queryUbs%}',sV = '',img = window["BD_PS_C" + (new Date()).getTime()] = new Image(),rsv_mobile = "{%$ubs_log_equipment%}_" + window['ORIENTATION_STATUS'] + "_" + (window['RESOLUTION'] || 99) + "_{%$ubs_log_apptype%}_" + (HD_VERSION || "0");if(!q['pj']){q['pj']='www';}for(key in q){ switch(key){ case "title": sV = encodeURIComponent(q[key].replace(/<[^<>]+>/g, "")); break; case "url":sV = encodeURIComponent(q[key]);break;default:sV = q[key];}sQ += key + "=" + sV + "&";}img.src = "http://nsclick.baidu.com/v.gif?pid=201&rsv_sid={%$urlPara.sid|vui_escape:'javascript'%}&" + sQ + "path=" + p + "&wd=" + wd + "&t=" + new Date().getTime() + "&rsv_mobile=" + rsv_mobile + "&clfrom=1";return true;};(function(){var fns = [], isReady = false;var exec = function(fn, thisobj){try{fn.call(thisobj);}catch(e){}};bds.ready = function(fn){if(typeof fn != 'function') return;if(isReady){exec(fn)}else{fns.push(fn);}};bds.doReady = function(){isReady = true;while(fns.length) exec(fns.shift());};document.addEventListener("DOMContentLoaded",function(){isReady = true;bds.doReady();},false);})();</script><script src="{%$STATIC_DOMAIN_WWW0%}{%$PAD_JS_WWW_ZEPTO%}"></script><script>bds.comm.tapHighlight = function(elements){var timeout = 0;$(elements).on("touchstart",function(e){var that = this;$(that).addClass("tap-transparent-color");timeout = setTimeout(function(){$(that).addClass("tap-highlight");},50);setTimeout(function(){$(that).removeClass("tap-highlight");clearTimeout(timeout);},600);}).on("touchmove",function(e){$(this).removeClass("tap-highlight");clearTimeout(timeout);}).on("touchend",function(e){$(this).removeClass("tap-highlight");clearTimeout(timeout);});};</script>