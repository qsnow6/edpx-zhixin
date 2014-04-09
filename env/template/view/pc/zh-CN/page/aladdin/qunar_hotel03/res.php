<?php 
  class CssJs_Util_qunar_hotel03
   {
      private static $cssStr = '';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("qunar_hotel03",function(){A.setup(function(){var h=this;var j="http://www.baidu.com/qunarui/hotel";var E=false;var m=(function(T){var R="op-"+T.data.TPL_NAME+"-";var S={};var U;return U={isIE6:function(){return/msie 6/i.test(navigator.userAgent)},isIE7:function(){return/msie 7/i.test(navigator.userAgent)},getClass:function(V){return(R+V)},getTags:function(W,V){if(!W){return[]}return W.getElementsByTagName(V)||[]},getElementByClassName:function(V,W){if(W){return $(W).find("."+V)[0]}else{return $("."+V)[0]}},getChildrens:function(V){return V&&V.childNodes||[]},hasClass:function(W,V){return $(W).hasClass(V)},addClass:function(W,V){$(W).addClass(V)},removeClass:function(W,V){$(W).removeClass(V)},removeAllClass:function(V){V.className=""},getOffset:function(W){var V=W.parentNode;var X=$(V).offset();return X},on:function(W,V,X){$(W).bind(V,X)},unbind:function(W,V,X){$(W).unbind(V,X)},jsonToQuery:function(V){var X=[];var W=null;$.each(V,function(Y,Z){if(/[^\\x00-\\xFF]/.test(Z)){W=encodeURIComponent(Z)}else{W=Z}X.push(Y+"="+W)});return X.join("&")},ajax:function(W,Y,X,V){V=V||function(){};$.ajax({type:"POST",url:W,data:m.jsonToQuery(Y),success:function(Z){X&&X(Z)},error:function(Z){V(Z)}})},jsonp:function(W,Z,X,Y,V){V=V||function(){};$.ajax({type:"POST",url:W,dataType:"jsonp",jsonp:X||"__jscallback",data:m.jsonToQuery(Z),success:function(aa){try{Y&&Y(aa)}catch(ab){V();return}},error:function(aa){V(aa)}})},extend:function(V,Y,X){var W=null;for(W in Y){if(Y.hasOwnProperty(W)){V[W]=Y[W]}}for(W in X){if(X.hasOwnProperty(W)){V[W]=X[W]}}return V},trim:function(V){return V.replace(/(^\\s*)|(\\s*$)/g,"")},bind:function(V,W){if(!S[V]){S[V]=[]}S[V].push(W)},trigger:function(W){var Y=arguments||[];var aa=S[W]||[];if(aa.length===0){return}var V=[];for(var Z=1;Z<Y.length;Z++){V.push(Y[Z])}for(var X=0;X<aa.length;X++){aa[X].apply(T,V)}},isObjEmpty:function(X){var W=true;for(var V in X){if(X.hasOwnProperty(V)&&"undefined"!=typeof V){W=false;break}}return W},remove:function(Y,X){if(!(Y instanceof Array)){return}if(Y.length==0){return}var V=[];for(var W=0;W<Y.length;W++){if(Y[W]==X){continue}else{V.push(Y[W])}}return V},isExist:function(X,W){if(!(X instanceof Array)){return}if(X.length==0){return}for(var V=0;V<X.length;V++){if(X[V]==W){return true}}return false},GetZoomFactor:function(){var W=1;if(document.body.getBoundingClientRect){var X=document.body.getBoundingClientRect();var Y=X.right-X.left;var V=document.body.offsetWidth;W=Math.round((Y/V)*100)/100}return W},toFixed:function(W,Y){var V=W;if(!W){return}if(!Y){Y=0}W*=Math.pow(10,Y);var X=parseInt(W);W=X/(Math.pow(10,Y));if(W===parseInt(V)){return V+".0"}return W},format:function(V,W){return $.format(V,W)},subByte:function(X,W,V){return $.subByte(X,W,V)}}})(h);function o(R){R=R||{};if(!R.dom||!R.offsetdom){return}this.offsetdom=R.offsetdom;this.display=R.display||"none";this.dom=R.dom;this.url=R.url;this.success=R.success;this.error=R.error;this.cache={};this.params={};if(R.html){R.dom.innerHTML=R.html}if(this.display!=="none"){this.show()}}o.prototype.render=function(){var R=this.getQuerykey();if(this.cache[R]){this._callback(1,this.cache[R])}else{this._getData()}};o.prototype.show=function(T){if(this.dom){var S=this.offsetdom.offsetHeight;if(T){S=2}var R=m.getOffset(this.offsetdom);this.top=R.top+S-1;this.left=R.left;if(m.isIE7()){var U=m.GetZoomFactor()||0.1;this.top=(R.top/U)+S-1;this.left=R.left/U}this.dom.style.top=this.top+"px";this.dom.style.left=this.left+"px";this.display="block"}};o.prototype.hide=function(){if(this.dom){this.dom.style.top="-9999px";this.dom.style.left="-9999px";this.display="none"}};o.prototype.setQueryParams=function(S){S=S||{};if(!S.queryName){return}var R={};R[S.queryName]=m.trim(S.queryKey);this.params=m.extend({},this.params,R)};o.prototype.getQueryParams=function(){return this.params||{}};o.prototype.clearCache=function(){if(this.getCacheSize()>20){this.cache={}}};o.prototype.getCacheSize=function(){var S=0;for(var R in this.cache){if(this.cache.hasOwnProperty(R)){S++}}return S};o.prototype._getData=function(){var R=this;R.onsuccess=function(S){E=true;if(!S){R._callback();return}R._callback(1,S);R.clearCache();R.cache[R.getQuerykey()]=S};R.onerror=function(S){E=true;R._callback(0,S)};m.jsonp(this.url,m.extend({},{_t:new Date().getTime()},this.params),"__jscallback",R.onsuccess,R.onerror)};o.prototype.getQuerykey=function(){var S="";for(var R in this.params){if(this.params.hasOwnProperty(R)){S=S+this.params[R]}}return S};o.prototype._callback=function(R,S){if(!this.dom){return}if(R===1){if(this.success){this.success(S)}}else{if(this.error){this.error(S)}}};var r=m.getElementByClassName(m.getClass("jshotelmore"));var t=(function(U){var X={};var Y={driving:"驾车",walking:"步行"};var aa=["","国家旅游局评定为一星级","国家旅游局评定为二星级","国家旅游局评定为三星级","国家旅游局评定为四星级","国家旅游局评定为五星级"];var ab=m.getElementByClassName(m.getClass("jshotels"));var Z=m.getElementByClassName(m.getClass("jsnohotels"));var R=m.getElementByClassName(m.getClass("jsnohotelsfilter"));var S=m.getElementByClassName(m.getClass("jshotelcount"));var W=m.getClass("hide");var T=function(aB){var al=[];var ax,az=U.data.TPL_NAME;var at=[\'<div class="c-row op-#{tplname}-hotels op-#{tplname}-hotels#{index}">\',\'<div class="c-span4 op-#{tplname}-hotelimage">\',\'<a target="_blank" href="#{hotelimageurl}"><img class="c-img c-img4" src="#{imageurl}"/></a>\',"</div>",\'<div class="c-span12 op-#{tplname}-hotelintro">\',\'<p class="op-#{tplname}-hoteltitle">\',\'<a title="#{hoteltitlesource}" href="#{hoteltitleurl}" target="_blank">#{title}</a>#{starHtml}#{dangciHtml}\',"</p>","#{trafficHtml}","#{reviewHtml}","</div>",\'<div class="c-span4 op-#{tplname}-hotelreview">\',"<p>&nbsp;</p>",\'<p class="op-#{tplname}-hotelscore">#{scoreHtml}</p>\',\'<p><a href="#{reviewurl}" target="_blank">#{reviewcount}</a></p>\',"</div>",\'<div class="c-span4 c-span-last op-#{tplname}-hotellook">\',\'<p class="op-#{tplname}-hotelprice"><b>&yen;#{price}</b>起</p>\',\'<p class="op-#{tplname}-detail"><a class="op-#{tplname}-detailbtn c-btn c-btn-primary c-btn-small OP_LOG_BTN" href="#{hotelbtnurl}" target="_blank">查看详情</a></p>\',"</div>","</div>"].join("");var ap,au,am,ae,an="",av,ao=[],ac,aq,aA,af,aD,ar,aj;var ak="",ag="",ad="",aC="";var aw,ay,ai="";var ah=0;for(ax=0;ax<aB.length;ax++){ag="";an="";ap=aB[ax].hotelseq.lastIndexOf("_");am="dt-"+aB[ax].hotelseq.substring(ap+1);au=aB[ax].hotelseq.substring(0,ap);ae="http://hotel.qunar.com/city/"+au+"/"+am;ao=aB[ax].selected||[];if(aB[ax].star>0){aA=22}else{if(aB[ax].dangci){aA=26}else{aA=32}}for(av=0;av<ao.length;av++){ac=m.toFixed(ao[av].distance,1);aD=m.subByte(ao[av].poi,8);aD=(ao[av].poi===aD)?ao[av].poi:aD;if(ao[av].trans){an=an+(an?"，":"")+"距<em>"+aD+"</em>"+Y[ao[av].trans]+"距离约"+ac+"公里";ag=ag+(ag?"，":"")+"距"+ao[av].poi+Y[ao[av].trans]+"距离约"+ac+"公里"}else{an=an+(an?"，":"")+"距<em>"+aD+"</em>直线距离约"+ac+"公里";ag=ag+(ag?"，":"")+"距"+ao[av].poi+"直线距离约"+ac+"公里"}}af=m.subByte(aB[ax].title,aA);ar=m.subByte(aB[ax].review,26);aj=m.subByte(aB[ax].address,26);if(af===aB[ax].title){af=aB[ax].title;ak=""}else{af=af;ak=aB[ax].title}if(ar===aB[ax].review){ar=aB[ax].review;ad=""}else{ar=ar;ad=aB[ax].review}if(aj===aB[ax].address){aj=aB[ax].address;aC=""}else{aj=aj;aC=aB[ax].address}if(ao.length>0){if(ao.length>1||(ao[0].poi!=m.subByte(ao[0].poi,8))){}else{ag=""}}else{ah++}aw=aB[ax].score>0?m.toFixed(aB[ax].score,1)+"/5分":"";ay=ae+"?ex_track=bd_zhixin_hotel_poi_score&"+U.data.QHFP;ai=aB[ax].address?\'<p title="\'+aC+\'">地址：\'+aj+"</p>":"";al.push(m.format(at,{tplname:az,index:ax,hotelimageurl:ae+"?ex_track=bd_zhixin_hotel_poi_image&"+U.data.QHFP,imageurl:aB[ax].img,hoteltitleurl:ae+"?ex_track=bd_zhixin_hotel_poi_hotelname&"+U.data.QHFP,hoteltitlesource:ak,title:af,starHtml:aB[ax].star>0?\'<i class="c-icon c-icon-star c-gap-left-small op-\'+az+"-star"+aB[ax].star+\'"  title="\'+aa[aB[ax].star]+\'"></i>\':"",dangciHtml:(!aB[ax].star&&aB[ax].dangci)?\'<span class="c-gap-left-small op-\'+az+\'-hoteldangci" title="\'+("去哪儿网用户评定为"+aB[ax].dangci+"酒店")+\'">\'+aB[ax].dangci+"</span>":"",trafficHtml:an?\'<p title="\'+ag+\'">交通：\'+an+"</p>":ai,reviewHtml:aB[ax].review?\'<p title="\'+ad+\'">评价：\'+ar+"</p>":"",scoreHtml:aw?\'<a href="\'+ay+\'" target="_blank">\'+aw+"</a>":\'<span class="op-\'+az+\'-hotelnoscore">暂无评分</span>\',reviewurl:ae+"/comments.html?ex_track=bd_zhixin_hotel_poi_comment&"+U.data.QHFP,reviewcount:aB[ax].reviewcount>0?aB[ax].reviewcount+"条点评":"",price:aB[ax].price,hotelbtnurl:ae+"?ex_track=bd_zhixin_hotel_poi_viewdetail&"+U.data.QHFP}))}ab.innerHTML=al.join("");m.addClass(Z,W);m.removeClass(ab,W);if(ah===aB.length){M.hideItem("distance")}else{M.showItem("distance")}};var V=function(ad){var ac=ad&&ad.getFilterNames();S.innerHTML="在0家酒店中";R.innerHTML=\'<span>很抱歉，没有找到与"<em>\'+ac.join("|")+\'</em>"相关的酒店</span>\';m.addClass(ab,W);m.addClass(r,W);m.removeClass(Z,W)};return X={render:function(ad){var ac=function(ae){T(ae.hotellinks);if(ae.hotelCount>=4){m.removeClass(r,W)}else{m.addClass(r,W)}S.innerHTML="在"+ae.hotelCount+"家酒店中"};ac(ad)},getFilterTip:V}})(h);var i=m.getElementByClassName(m.getClass("city-input"));var H=m.getElementByClassName(m.getClass("hotcity"));var O=m.getElementByClassName(m.getClass("keyword-input"));var k=m.getElementByClassName(m.getClass("hotkey"));var b=m.getElementByClassName(m.getClass("placeholder"));var a=new o({dom:H,offsetdom:i});var v=new o({dom:b,offsetdom:O});if(h.data.HOTQUERY){v.hide()}else{v.show(true)}var Q=new o({dom:k,offsetdom:O,url:j+"/sugg.jsp?v=1&queryid="+h.data.QUERYID,success:function(T){if(T&&T.data){Q.dom.style.borderWidth="1px";Q.dom.innerHTML=T.data.replace(/onmousedown="return searchword\\(.*\\)"/ig,"");var R=m.getElementByClassName("js_cityguide",k);if(R){var S=R.getAttribute("data-url")+"&ex_track=bd_zhixin_hotel_divcityguide&"+h.data.QHFP;R.setAttribute("data-url",S)}}},error:function(R){Q.dom.innerHTML="";Q.dom.style.borderWidth="0px"}});var C=function(R){a.hide();Q.hide();if(!O.value){v.show(true)}};m.on(document,"click",C);var p=function(R){a.hide();Q.hide();if(!O.value){v.show(true)}};m.on(window,"blur",p);m.on(i,"click",function(R){Q.hide();h._sug&&h._sug.hide();if(a.display==="block"){a.hide()}else{a.show()}R.stopPropagation()});m.on(H,"click",function(T){T.stopPropagation();T.preventDefault();var S=T.target||T.srcElement;if(S.tagName.toUpperCase()==="A"){var R=S.getAttribute("data-city");if(i.value!=R){m.trigger("citychanged",R)}if(R){if(h._sug){h._sug.hide();h._sug.pick(\'<span class="js_cityname" data-cityname="\'+R+\'">\'+R+"</span>")}else{i.value=R}a.hide()}}});m.on(O,"click",function(R){if(Q.display==="block"){Q.hide()}else{Q.setQueryParams({queryName:"city",queryKey:i.value});Q.render();Q.show();a.hide();v.hide()}R.stopPropagation();R.preventDefault()});m.on(k,"click",function(T){T.preventDefault();var S=T.target||T.srcElement;if(S.tagName.toUpperCase()==="A"){var R=m.trim(S.innerHTML);if(R){v.hide();O.value=R;Q.hide()}}});m.on(b,"click",function(S){var R=S.target||S.srcElement;S.stopPropagation();S.preventDefault();if(R.tagName.toUpperCase()==="DIV"){O.focus();v.hide();Q.setQueryParams({queryName:"city",queryKey:i.value});Q.render();a.hide();Q.show()}});m.bind("citychanged",function(R){});var q=m.getElementByClassName(m.getClass("jsquerybtn"));m.on(q,"click",function(U){var S=encodeURIComponent(i.value);var R=encodeURIComponent(O.value);var T=h._filterManager.getFilterHashurl();q.href="http://hotel.qunar.com/search.jsp?ex_track=bd_zhixin_hotel_poi_search&toCity="+S+"&q="+R+"&"+h.data.QHFP+T});m.on(r,"click",function(V){var T=encodeURIComponent(i.value);var S=encodeURIComponent(O.value);var U=h._filterManager.getFilterHashurl();var R=$(r).find("a");if(R.size()>0){R[0].href="http://hotel.qunar.com/search.jsp?ex_track=bd_zhixin_hotel_poi_morehotel&toCity="+T+"&q="+S+"&"+h.data.QHFP+U}});if(m.isIE6()){var z=m.getElementByClassName(m.getClass("jssearch"));if(z){var c=z.offsetHeight;if(c>48){z.style.height="48px";z.style.overflow="hidden"}}}var B=function(Z,S,X){var Y=this;var U=Z;var V=S||{};var T=X||[];var R=null;var W=null;this.render=function(){};this.hide=function(){U.style.display="none"};this.show=function(){U.style.display="block"};this.setData=function(aa){V=aa};this.getData=function(){return V};this.setFilters=function(aa){R=aa};this.getFilters=function(){return R||[]};this.setFilterNames=function(aa){W=aa};this.getFilterNames=function(){return W||[]};this.getListener=function(){return T};this.getWrapElem=function(){return U};this.setListener=function(aa){T=aa};this.getType=function(){return this.type};this.bindEvent=function(ab){if(ab instanceof Array&&ab.length>0){for(var aa=0;aa<ab.length;aa++){(function(){var ac=aa;m.bind("updateFilter"+Y.type,function(){ab[ac].updateFilter&&ab[ac].updateFilter(Y)})})()}}}};var d=function(T,U,R){var S=this;var V=function(){if(!T){return}B.call(S,T,U,R);if(m.isObjEmpty(U)||U==null||typeof U=="undefined"){S.hide()}S.setFilters([]);S.setFilterNames([])};V();this.addFilters=function(X,W){this.setFilters([]);this.setFilterNames([]);this.getFilters().push(X);this.getFilterNames().push(W);m.trigger("updateFilter"+this.type)};this.removeFilters=function(X,W){if(this.getFilters().length==0){return}this.setFilters(m.remove(this.getFilters(),X));this.setFilterNames(m.remove(this.getFilterNames(),W));m.trigger("updateFilter"+this.type)};this.removeAllFilters=function(){this.setFilters([]);this.setFilterNames([]);m.trigger("updateFilter"+this.type)};this.updateFilter=function(W){this.setFilters(W.getFilters());this.setFilterNames(W.getFilterNames());this.relayout();this.update()}};var L=function(){this.getFilterOption=function(S,R){if(S=="bgSelect"){return new FilterOptionBgSelect(R)}else{if(S=="checkOut"){return new N(R)}else{if(S=="radio"){return new FilterOptionRadio(R)}else{return null}}}}};var N=function(ah){var af=this;var ad=ah.getWrapElem();var al=m.getClass("active");var V=m.getClass("hide");var Z="c-icon-chevron-unfold";var ac="c-icon-chevron-fold";var aa=m.getClass("filtermore-noborder");var S=m.getClass("disabled");var X={type:"filter"+new Date().getTime(),title:"过滤项目：",unlimited:"不限",display:1000,moretitle:"所有",wrapTpl:[\'<div class="op-#{tplname}-find op-#{tplname}-clearfix op-#{tplname}-jsfilterPanel">\',"<span>#{title}</span>",\'<div class="op-#{tplname}-nolimit op-#{tplname}-active op-#{tplname}-jsnolimit"><a href="#" onclick="return false;">#{unlimited}</a></div>\',\'<ul class="op-#{tplname}-jsfilter">\',"#{filterHtml}","</ul>","#{moreHtml}","</div>"].join(""),tpl:\'<li class="#{disabledClass}"><a href="#" onclick="return false;" data-count="#{count}" data-filter="#{value}" data-name="#{filter}">#{filter}</a></li>\',moreTpl:\'<div class="op-#{tplname}-filtermore #{hideClass}"><a href="#" title="#{moretitle}" onclick="return false;" class="c-icon c-icon-chevron-unfold op-#{tplname}-jsfiltermore"></a></div>\'};ah.setData(m.extend({},X,ah.getData()));var T=m.getElementByClassName(m.getClass("jsfilterPanel"),ad);var R=m.getElementByClassName(m.getClass("jsnolimit"),ad);var ag=m.getElementByClassName(m.getClass("jsfilter"),ad);var ae=m.getElementByClassName(m.getClass("jsfiltermore"),ad);var W=m.getElementByClassName(m.getClass("jsfiltermorectn"),ad);this.render=function(){var ao=ah.getData();if(!ao||!ao.tplData||!ao.tplData.value||ao.tplData.value.length===0){ah.hide();return}ah.show();var au=ao.tplData.value,av=[],at=[],an=[],ar=ao.tpl,aq=ao.moreTpl,ap=ao.wrapTpl,am=0;for(am=0;am<au.length;am++){av.push(m.format(ar,{disabledClass:au[am].count<=0?S:"",count:au[am].count||0,filter:au[am].name.replace(/%26/g,"&")||"",value:au[am].value.replace(/%26/g,"&")||""}))}ah.setFilters([]);U();at.push(m.format(aq,{tplname:h.data.TPL_NAME,moretitle:"查看"+ao.moretitle,hideClass:au.length>ao.display?"":V}));an.push(m.format(ap,{title:ao.title,tplname:h.data.TPL_NAME,unlimited:ao.unlimited,filterHtml:av.join(""),moreHtml:at.join("")}));T.innerHTML=an.join("");R=m.getElementByClassName(m.getClass("jsnolimit"),ad);ag=m.getElementByClassName(m.getClass("jsfilter"),ad);ae=m.getElementByClassName(m.getClass("jsfiltermore"),ad);this.registerEvent()};this.hideMore=function(){var am=ah.getData();W&&m.addClass(W,V);if(ae){m.removeClass(ae,ac);m.addClass(ae,Z);ae.setAttribute("title","查看"+am.moretitle)}};this.showMore=function(){var am=ah.getData();W&&m.removeClass(W,V);if(ae){m.removeClass(ae,Z);m.addClass(ae,ac);ae.setAttribute("title","收起"+am.moretitle)}};this.update=function(){Y();var ao=ah.getFilters()||[];var ap=m.getChildrens(ag);var an="",am;for(am=0;am<ap.length;am++){if(ap[am].nodeType===1){an=ap[am].childNodes[0].getAttribute("data-filter");if(m.isExist(ao,an)){m.addClass(ap[am],al)}else{m.removeClass(ap[am],al)}}}};var ai=function(am,ap){var an=-1;for(var ao=0;ao<am.length;ao++){if(am[ao].value==ap){an=ao;break}}if(an!==-1){return am[an].count}else{return 0}};this.relayout=function(){var at=ah.getData();var aq=ah.getFilters()||[];var ar=(at&&at.tplData&&at.tplData.value)||[];if(ar.length===0&&aq.length===0){ah.hide();return}var am=ah.getFilterNames()||[];var ap=[];var ao=at.tpl;var an=0;if(at.haslayout){if(aq.length>0){for(an=aq.length-1;an>=0;an--){ap.push(m.format(ao,{disabledClass:"",count:ai(ar,aq[an]),filter:am[an].replace(/%26/g,"&")||"",value:aq[an].replace(/%26/g,"&")||""}))}}for(an=0;an<ar.length;an++){if(!m.isExist(aq,ar[an].value)){ap.push(m.format(ao,{disabledClass:ar[an].count>0?"":S,count:ar[an].count,filter:ar[an].name.replace(/%26/g,"&")||"",value:ar[an].value.replace(/%26/g,"&")||""}))}}}else{for(an=0;an<ar.length;an++){ap.push(m.format(ao,{disabledClass:(ar[an].count>0||m.isExist(aq,ar[an].value))?"":S,count:ar[an].count,filter:ar[an].name.replace(/%26/g,"&")||"",value:ar[an].value.replace(/%26/g,"&")||""}))}}this.hideMore();if(ar.length<=at.display){ae&&m.addClass(ae,V)}else{ae&&m.removeClass(ae,V)}ag.innerHTML=ap.join("");if(!at.ishide){ah.show()}};var Y=function(){var aq=ah.getData();if(ah.getFilters().length==0){var ap=(aq&&aq.tplData&&aq.tplData.value)||[];if(ap.length===0){ah.hide()}m.addClass(R,al);var ar=m.getChildrens(ag);var ao=false;var an=null;if(aq.haslayout){for(var am=0;am<ar.length;am++){if(ar[am].nodeType===1){ao=m.hasClass(ar[am],al);an=ar[am].childNodes[0].getAttribute("data-count");if(ao&&an==0){m.addClass(ar[am],V)}m.removeClass(ar[am],al)}}}else{for(var am=0;am<ar.length;am++){if(ar[am].nodeType===1){m.removeClass(ar[am],al)}}}}else{m.removeClass(R,al)}};var ak=function(at){var ar=at.target||at.srcElement;if(ar.tagName.toUpperCase()==="A"){if(m.hasClass(ar.parentNode,S)){return}var ao=ar.getAttribute("data-filter");var am=ar.getAttribute("data-name");var ap=ar.getAttribute("data-count");if(ah.getData().haslayout){if(ap<=0){m.addClass(ar.parentNode,V)}}else{if(ap<=0){m.addClass(ar.parentNode,S)}}if(m.isExist(ah.getFilters(),ao)){ah.removeFilters(ao,am);m.removeClass(ar.parentNode,al)}else{ah.addFilters(ao,am);var aq=m.getChildrens(ag);for(var an=0;an<aq.length;an++){if(aq[an].nodeType===1&&m.hasClass(aq[an],al)){m.removeClass(aq[an],al)}}m.addClass(ar.parentNode,al)}Y()}};var aj=function(am){if(ah.getFilters().length>0){ah.removeAllFilters();Y()}};var ab=function(an){var am=an.target||an.srcElement;if(am.tagName.toUpperCase()==="A"){if(m.hasClass(am,ac)){af.hideMore()}else{af.showMore()}}};this.registerEvent=function(){ag&&m.on(ag,"click",ak);R&&m.on(R,"click",aj);ae&&m.on(ae,"click",ab)};var U=function(){ag&&m.unbind(ag,"click",ak);R&&m.unbind(R,"click",aj);ae&&m.unbind(ae,"click",ab)}};var G=function(T,U,R){var S=this;var V=function(){d.call(S,T,U,R);S.type=U.type;var W=new L();S.filterOption=W.getFilterOption("checkOut",S);S.filterOption.registerEvent()};V();this.render=function(){this.filterOption.render()};this.update=function(){this.relayout();this.filterOption.update()};this.relayout=function(){this.filterOption.relayout()}};var y=function(T,U,R){var S=this;var V=function(){d.call(S,T,U,R);S.type=U.type;var W=new L();S.filterOption=W.getFilterOption("checkOut",S);S.filterOption.registerEvent()};V();this.render=function(){this.filterOption.render()};this.update=function(){this.relayout();this.filterOption.update()};this.relayout=function(){this.filterOption.relayout()}};var K=function(T,U,R){var S=this;var V=function(){d.call(S,T,U,R);S.type=U.type;var W=new L();S.filterOption=W.getFilterOption("checkOut",S);S.filterOption.registerEvent()};V();this.render=function(){this.filterOption.render()};this.update=function(){this.relayout();this.filterOption.update()};this.relayout=function(){this.filterOption.relayout()}};var e=function(T,U,R){var S=this;var V=function(){d.call(S,T,U,R);S.type=U.type;var W=new L();S.filterOption=W.getFilterOption("checkOut",S);S.filterOption.registerEvent()};V();this.render=function(){this.filterOption.render()};this.update=function(){this.relayout();this.filterOption.update()};this.relayout=function(){this.filterOption.relayout()}};var g=function(T,U,R){var S=this;var V=function(){d.call(S,T,U,R);S.type=U.type;var W=new L();S.filterOption=W.getFilterOption("checkOut",S);S.filterOption.registerEvent()};V();this.render=function(){this.filterOption.render()};this.update=function(){this.relayout();this.filterOption.update()};this.relayout=function(){this.filterOption.relayout()}};var x=function(T,U,R){var S=this;var V=function(){if(!T){return}B.call(S,T,U,R);S.setFilters("")};V();this.changeFilters=function(W){this.setFilters(W);m.trigger("updateFilter"+this.type)}};var w=function(U,Y,Z){x.call(this,U,Y,Z);var af=this;var ab={"default":"综合",price:"价格",distance:"距离",score:"评分",stars:"星级"};var T={price:["低","高"],distance:["近","远"],score:["低","高"],stars:["低","高"]};var V={one:{asc:"c-icon c-icon-up-blue",desc:"c-icon c-icon-down-blue",scoreno:"c-icon c-icon-down-gray",distanceno:"c-icon c-icon-up-gray"},two:{asc:"c-icon c-icon-sort-up",desc:"c-icon c-icon-sort-down",starsno:"c-icon c-icon-sort-gray",priceno:"c-icon c-icon-sort-gray"},def:{no:""}};var aa=null,R=null;var U=this.getWrapElem();var ad=m.getClass("active");this.type="sort";var ae=function(){if(!U){return}af.setSort("default");af.setFilters("default,no");ac()};this.setSort=function(ah,ag){R=m.getElementByClassName(m.getClass("js"+ah),U);S(ag)};this.clear=function(){if(aa){m.removeClass(aa.parentNode,ad);var ag=aa.childNodes;if(ag.length<=1){return}var ah=ag[1];m.removeAllClass(ah);m.addClass(ah,V[aa.getAttribute("data-sorttype")][aa.getAttribute("data-type")+"no"])}};this.render=function(){};this.hideItem=function(ag){var ah=m.getElementByClassName(m.getClass("js"+ag),this.getWrapElem());ah.style.display="none"};this.showItem=function(ag){var ah=m.getElementByClassName(m.getClass("js"+ag),this.getWrapElem());ah.style.display="inline-block"};var S=function(ag){af.clear();m.addClass(R.parentNode,ad);var ai=R.getAttribute("data-sorttype"),ak=R.getAttribute("data-type"),aj=R.getAttribute("data-sort"),ah=(ag&&V[ai][ag])||V[ai][aj],al=R.childNodes;child=null;if(al.length>1){child=R.childNodes[1];m.removeAllClass(child);m.addClass(child,ah)}R.setAttribute("data-sort",X(ai,aj));R.setAttribute("title",W(ak,X(ai,aj)));aa=R};var W=function(aj,ah){var ai="点击按"+ab[aj];var ag=T[aj];if(ah=="asc"){ai=ai+"从"+ag[0]+"到"+ag[1]}else{if(ah=="desc"){ai=ai+"从"+ag[1]+"到"+ag[0]}}ai=ai+"排序";return ai};var X=function(ag,ah){if(ag=="two"){if(ah=="asc"){ah="desc"}else{ah="asc"}}return ah};var ac=function(){m.on(U,"click",function(ag){var ak=ag.target||ag.srcElement;while(ak.tagName.toUpperCase()!=="A"){if(ak===this){break}ak=ak.parentNode}R=ak;var ah=R.getAttribute("data-sort"),aj=R.getAttribute("data-type");if(!ah||!aj){return}if(aj==aa.getAttribute("data-type")){if(aa.getAttribute("data-sorttype")=="one"||aa.getAttribute("data-sorttype")=="def"){return false}}var ai=[aj,ah].join(",");af.changeFilters(ai);S()})};ae()};var D=function(S){var U={price:"PRICE",grade:"GRADE",brand:"BRAND",hoteltype:"HOTELTYPE",facility:"FACILITY"};var V=S.single||[];var T=S.more||[];var R=S.loader||new n();this.filtersParam={};this.updateFilter=function(X){var W=0,Z,Y;this.filtersParam={};for(W=0;W<V.length;W++){if(V[W].getFilters()&&V[W].getFilters()!="default,no"){Z=V[W].getFilters().split(",");this.filtersParam[Z[0]+"sort"]=Z[1]}}for(W=0;W<T.length;W++){Z=T[W].getFilters();if(Z.length>0){Y=T[W].getType();this.filtersParam[U[Y]]=Z.join(",")}}R.load(this.filtersParam,X)};this.getFilterNames=function(){var X,Y,W=[];for(X=0;X<T.length;X++){Y=T[X].getFilterNames();if(Y.length>0){W.push(Y.join("、"))}}return W};this.getFilterHashurl=function(){var Y={price:"pr",grade:"st",brand:"br",hoteltype:"ht",facility:"fc"};var ad={LOW:"0-200",MEDIUM:"200-300",PRIOR:"300-500",HIGH:"500-max"};var ab={1:0,2:1,3:2,4:3,5:5};var ac=[],aa=[],W=[],X=0,Z="";for(X=0;X<T.length;X++){aa=T[X].getFilters();W=T[X].getFilterNames();if(aa.length>0){Z=T[X].getType();if(Z==="brand"){ac.push(Y[Z]+"="+encodeURIComponent(W.join(","))+"|"+aa.join(","))}else{if(Z==="price"){ac.push(Y[Z]+"="+ad[aa.join(",")])}else{if(Z==="grade"){ac.push(Y[Z]+"="+ab[aa.join(",")])}else{ac.push(Y[Z]+"="+aa.join(","))}}}}}return ac.length>0?"&"+ac.join("&"):""}};var n=function(){var S=j+"/hotelSearchApi.jsp";var R={};var U=function(){var W=0;for(var V in R){if(R.hasOwnProperty(V)){W++}}return W};var T={price:"pricelinks",grade:"dangcilinks",brand:"brandlinks",hoteltype:"hoteltypelinks",facility:"facilitylinks"};this.load=function(X,V){var W=this;W.onsuccess=function(Y){E=true;if(Y&&Y.ret===true&&Y.data){if(Y.data.hotelCount<=0){t&&t.getFilterTip(P)}else{t&&t.render(Y.data)}if(V){var aa=V.getListener();for(var Z=0;Z<aa.length;Z++){aa[Z].setData(m.extend({},aa[Z].getData(),{tplData:{value:Y.data[T[aa[Z].getType()]]}}));aa[Z].update()}}else{u.setData(m.extend({},u.getData(),{tplData:{value:Y.data[T[u.getType()]]}}));F.setData(m.extend({},F.getData(),{tplData:{value:Y.data[T[F.getType()]]}}));s.setData(m.extend({},s.getData(),{tplData:{value:Y.data[T[s.getType()]]}}));f.setData(m.extend({},f.getData(),{tplData:{value:Y.data[T[f.getType()]]}}));J.setData(m.extend({},J.getData(),{tplData:{value:Y.data[T[J.getType()]]}}));u&&u.render();F&&F.render();s&&s.render();f&&f.render();J&&J.render()}}};m.jsonp(S,m.extend({},{_t:new Date().getTime(),city:h.data.CITY_NAME,query:h.data.ORIGINAL_QUERY,ipcity:h.data.IP_CITY,queryid:h.data.QUERYID},X||{}),"__jscallback",W.onsuccess)}};var M=new w(m.getElementByClassName(m.getClass("jssort")));var u=new G(m.getElementByClassName(m.getClass("jspricepanel")),{type:"price",title:"价格范围：",tpl:\'<li><a href="#" onclick="return false;" data-count="9999" data-filter="#{value}" data-name="#{filter}">#{filter}</a></li>\'});var F=new y(m.getElementByClassName(m.getClass("jsdangcipanel")),{type:"grade",title:"酒店级别："});var s=new K(m.getElementByClassName(m.getClass("jsbrandpanel")),{type:"brand",title:"连锁品牌：",display:100000,moretitle:"所有品牌",haslayout:true});var f=new e(m.getElementByClassName(m.getClass("jshoteltype")),{type:"hoteltype",title:"酒店类型：",display:100000,moretitle:"所有酒店类型",haslayout:true,ishide:true});var J=new g(m.getElementByClassName(m.getClass("jsfacility")),{type:"facility",title:"入住要求：",display:100000,moretitle:"所有入住要求",haslayout:true,ishide:true});var I=new n();var P=h._filterManager=new D({single:[M],more:[u,F,s,f,J],load:I});M.bindEvent([P]);u.setListener([F,s,f,J]);u.bindEvent([P]);F.setListener([s,f,J]);F.bindEvent([P]);s.setListener([F,f,J]);s.bindEvent([P]);f.setListener([F,s,J]);f.bindEvent([P]);J.setListener([F,s,f]);J.bindEvent([P]);l();function l(){if(h.data.POICOUNT===h.data.HOTELCOUNT){M.hideItem("distance")}var R=h.data.FILTERSELECTED||[];u&&u.setData(m.extend({},u.getData(),{tplData:{value:h.data.PRICELINKS}}));F&&F.setData(m.extend({},F.getData(),{tplData:{value:h.data.DANGCILINKS}}));s&&s.setData(m.extend({},s.getData(),{tplData:{value:h.data.BRANDLINKS}}));f&&f.setData(m.extend({},f.getData(),{tplData:{value:h.data.HOTELTYPELINKS}}));J&&J.setData(m.extend({},J.getData(),{tplData:{value:h.data.FACILITYLINKS}}));var V={},T={};for(var S=0;S<R.length;S++){if(!V[R[S].type]){V[R[S].type]=[];T[R[S].type]=[]}V[R[S].type].push(R[S].value.replace(/%26/g,"&")||"");T[R[S].type].push(R[S].name.replace(/%26/g,"&")||"")}for(var U in V){if(V.hasOwnProperty(U)){switch(U){case"price":if(V[U].length===1){u&&u.setFilters(V[U]);u&&u.setFilterNames(T[U]);u&&u.update()}break;case"grade":if(V[U].length===1){F&&F.setFilters(V[U]);F&&F.setFilterNames(T[U]);F&&F.update()}break;case"brand":if(V[U].length===1){s&&s.setFilters(V[U]);s&&s.setFilterNames(T[U]);s&&s.update()}break;case"hoteltype":if(V[U].length===1){f&&f.setFilters(V[U]);f&&f.setFilterNames(T[U]);f&&f.update()}f.ishide=false;f.show();break;case"facility":if(V[U].length===1){J&&J.setFilters(V[U]);J&&J.setFilterNames(T[U]);J&&J.update()}J.ishide=false;J.show();break}}}}h.dispose=function(){if(!E){if(Q.onsuccess){Q.onsuccess=null}if(Q.onerror){Q.onerror=null}if(t.onsuccess){t.onsuccess=null}}m.unbind(document,"click",C);m.unbind(window,"blur",p)}})});';   // js字串，不含<script标签
      private static $uiList = 'btn,input,img';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }
