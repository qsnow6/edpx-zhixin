<?php 
  class CssJs_Util_right_divine10
   {
      private static $cssStr = '.opr-divine10{position:relative;}.container_l .opr-divine10-rswf{width:400px;position:relative;z-index:2;display:block;}.container_l .opr-divine10-rswfs{display:none;}.container_s .opr-divine10-rswfs{width:250px;display:block;}.container_s .opr-divine10-rswf{display:none;}.opr-divine10-bottom{width:100%;position:absolute;bottom:0;display:none;z-index:300;}.opr-divine10-flashBclose{width:22px;height:22px;background:url(\'http://www.baidu.com/aladdin/img/swf/close.png\') no-repeat;position:absolute;right:20px;top:20px;z-index:301;cursor:pointer;}.opr-divine10-body{background:-webkit-linear-gradient(#f5f7fa,#fff) no-repeat;}.opr-divine10-baikebtn{width:266px;height:31px;position:absolute;right:20px;top:200px;_top:-100px;background:url(\'http://www.baidu.com/aladdin/img/swf/baike.png\') no-repeat;cursor:pointer;z-index:500;}.container_l .opr-divine10-rightimg{width:400px;height:69px;background:url(\'http://www.baidu.com/aladdin/img/swf/rbmword.jpg\');right:0;position:absolute;left:0;top:211px;z-index:5;}.opr-divine10-lenvo{margin-top:5px;text-align:right;padding-right:45px;}.opr-divine10-hidden{display:none;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = 'A.merge("right_divine10",function(){A.setup(function(){var p=this,h=p.data.rightFlshA,g=p.data.rightFlshAs,a=p.data.mianFlshB,y=p.find(".opr-divine10-rswf")[0],l=p.find(".opr-divine10-rswfs")[0],s=y.style.width,x=p.find(".opr-divine10-baikebtn").eq(0),e=p.find(".opr-divine10-rightimg").eq(0),d=0,q=0,v=false,t,f,n;var j=function(E,D){var C=document.createElement("div");C.innerHTML=D;while(C.childNodes.length){E.appendChild(C.childNodes[0])}};j(document.body,\'<div class="opr-divine10-bottom"></div>\');j(document.body,\'<div class="opr-divine10-flashBclose opr-divine10-hidden OP_LOG_BTN"></div>\');$(function(){var H=$(".opr-divine10-bottom")[0],L=$(".opr-divine10-flashBclose").eq(0);var M=document.documentElement.scrollHeight||document.body.scrollHeight,I=document.documentElement.clientHeight||document.body.clientHeight,N=document.documentElement.clientWidth||document.body.clientWidth,C=document.documentElement.scrollTop||document.body.scrollTop,G=M+300;var O=function(){K()};var K=function(){FlashA=window.opr_divine10_flashA={};FlashA.onCancel=function(){y.style.display="none";l.style.display="none";$("#con-ar")[0].style.marginBottom="0px";p.container.style.marginBottom="0px"};FlashA.onInit=function(){var Q=$(".container_l")[0];var P=Q?r("opr-divine10-rswf"):r("opr-divine10-rswfs");if(r("opr-divine10-bottom")){P.onFlashB(true)}};FlashA.onComplete=function(){J();L.removeClass("opr-divine10-hidden")};FlashA.onShowImg=function(){if(!q){e.removeClass("opr-divine10-hidden");q++}};FlashA.onCannelImg=function(){e.addClass("opr-divine10-hidden")};w({id:"opr-divine10-rswf",url:h,width:400,height:280,vars:{first_several:d,person_url:p.data.personurl,countnum:p.data.countnum},wmode:"transparent",allowscriptaccess:"always",allownetworking:"all"},y);w({id:"opr-divine10-rswfs",url:g,width:250,height:280,vars:{first_several:d,person_url:p.data.personurl,countnum:p.data.countnum},wmode:"transparent",allowscriptaccess:"always",allownetworking:"all"},l)};var J=function(){var Q=scrollHeight=document.documentElement.scrollHeight||document.body.scrollHeight;I=document.documentElement.clientHeight||document.body.clientHeight;H.style.display="block";if(scrollHeight<1500){H.style.height="1800px"}else{H.style.height=scrollHeight+300+"px"}FlashB=window.opr_divine10_flashB={};FlashB.onInit=function(){var R=r("opr-divine10-bottom");R.flashBWidth(N);f=function(){N=document.documentElement.clientWidth||document.body.clientWidth;var S=r("opr-divine10-bottom");S.flashBWidth(N)};$(window).on("resize",f)};FlashB.onLoad=function(S){D(true);if(scrollHeight<1500){document.body.style.paddingBottom=(1500-scrollHeight)+"px"}scrollHeight=document.documentElement.scrollHeight||document.body.scrollHeight;var T=(scrollHeight-I)/100;var R=parseInt(T*S);if(parseInt(S)==100){document.body.scrollTop=scrollHeight-I+20}else{document.body.scrollTop=R}document.documentElement.scrollTop=R;if(parseInt(S,10)==100){D(false)}};FlashB.onAssemblyEnd=function(){if(document.activeElement.tagName=="OBJECT"){document.body.focus()}FlashB.onEnter=function(){};t=function(T){var S=T||event;var R=T.target||T.srcElement;var U=r("opr-divine10-bottom");if(S.keyCode==13){$(this).off("mousemove",arguments.callee);U.onEnter()}};$("body").on("keydown",t)};FlashB.onRun=function(S){D(true);if(window.navigator.userAgent.indexOf("MSIE 6.0")==-1){$("#u")[0].style.top="304px"}document.body.style.paddingTop="300px";C=1800-I;unitPage=(1800-I)/100;var R=(unitPage*S).toFixed(2);document.body.scrollTop=C-R;document.documentElement.scrollTop=C-R};FlashB.onComplete=function(){H.style.zIndex=-1;D(false);x.removeClass("opr-divine10-hidden")};if(scrollHeight<1500){var P=1800}else{var P=scrollHeight+300}w({id:"opr-divine10-bottom",url:a,width:"100%",height:P,vars:{clientHeight:I,countnum:p.data.countnum},wmode:"transparent",allowscriptaccess:"always",allownetworking:"all"},H)};var F=function(){A.use("animation",function(){n=A.ui.animation(function(){var Q={paddingTop:300,top:304},P={paddingTop:0,top:4};this.tween(Q).to(P,300).onUpdate(function(){document.body.style.paddingTop=this.paddingTop+"px";$("#u")[0].style.top="304px"}).start()}).start()})};var D=function(P){if(P){$(document).on("DOMMouseScroll",E);$(document).on("mousewheel",E)}else{$(document).unbind("DOMMouseScroll",E);$(document).unbind("mousewheel",E)}};var E=function(P){P=P||window.event;if(P.preventDefault){P.preventDefault();P.stopPropagation()}else{P.cancelBubble=true;P.returnValue=false}return false};$.ajax({url:p.data.geturl+"&cb=rdivine",dataType:"jsonp",success:function(P){if(v){return}if(P.status==0){d=P.data.sum;O()}},error:function(){shownum()},timeout:5000,jsonpCallback:"rdivine"});if(L.length){L.on("click",function(){L.addClass("opr-divine10-hidden");$(H).remove();x.addClass("opr-divine10-hidden");if(C){F();D(false)}document.body.style.paddingBottom="0px"})}});function r(E){var C=document[E],D;return(/msie (\\d+\\.\\d+)/i.test(navigator.userAgent)?(document.documentMode||+RegExp["\\x241"]):undefined)==9?C&&C.length?(D=i(B(C),function(F){return F.tagName.toLowerCase()!="embed"})).length==1?D[0]:D:C:C||window[E]}function i(E,D){var C=E.length;while(C--){if(C in E&&E[C]===D){E.splice(C,1)}}return E}function B(D){if(D===null||D===undefined){return[]}if(c(D)){return D}if(typeof D.length!=="number"||typeof D==="string"||u(D)){return[D]}if(D.item){var C=D.length,E=new Array(C);while(C--){E[C]=D[C]}return E}return[].slice.call(D)}function c(C){return"[object Array]"==Object.prototype.toString.call(C)}function u(C){return"[object Function]"==Object.prototype.toString.call(C)}function w(C,E){C=C||{};var D=o(C)||C.errorMessage||"";if(E&&"string"==typeof E){E=document.getElementById(E)}z(E||document.body,"beforeEnd",D)}function o(S){S=S||{};var K=k,I=S.ver||"6.0.0",H,F,G,E,J,R,C={},O=b;for(E in S){C[E]=S[E]}S=C;if(K){K=K.split(".");I=I.split(".");for(G=0;G<3;G++){H=parseInt(K[G],10);F=parseInt(I[G],10);if(F<H){break}else{if(F>H){return""}}}}else{return""}var M=S.vars,L=["classid","codebase","id","width","height","align"];S.align=S.align||"middle";S.classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000";S.codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0";S.movie=S.url||"";delete S.vars;delete S.url;if("string"==typeof M){S.flashvars=M}else{var P=[];for(E in M){R=M[E];P.push(E+"="+encodeURIComponent(R))}S.flashvars=P.join("&")}var N=["<object "];for(G=0,J=L.length;G<J;G++){R=L[G];N.push(" ",R,\'="\',O(S[R]),\'"\')}N.push(">");var D={wmode:1,scale:1,quality:1,play:1,loop:1,menu:1,salign:1,bgcolor:1,base:1,allowscriptaccess:1,allownetworking:1,allowfullscreen:1,seamlesstabbing:1,devicefont:1,swliveconnect:1,flashvars:1,movie:1};for(E in S){R=S[E];E=E.toLowerCase();if(D[E]&&(R||R===false||R===0)){N.push(\'<param name="\'+E+\'" value="\'+O(R)+\'" />\')}}S.src=S.movie;S.name=S.id;delete S.id;delete S.movie;delete S.classid;delete S.codebase;S.type="application/x-shockwave-flash";S.pluginspage="http://www.macromedia.com/go/getflashplayer";N.push("<embed");var Q;for(E in S){R=S[E];if(R||R===false||R===0){if((new RegExp("^salign\\x24","i")).test(E)){Q=R;continue}N.push(" ",E,\'="\',O(R),\'"\')}}if(Q){N.push(\' salign="\',O(Q),\'"\')}N.push("></embed></object>");return N.join("")}function z(F,C,E){F=m(F);var D,G;if(F.insertAdjacentHTML&&!(/opera(\\/| )(\\d+(\\.\\d+)?)(.+?(version\\/(\\d+(\\.\\d+)?)))?/i.test(navigator.userAgent)?+(RegExp["\\x246"]||RegExp["\\x242"]):undefined)){F.insertAdjacentHTML(C,E)}else{D=F.ownerDocument.createRange();C=C.toUpperCase();if(C=="AFTERBEGIN"||C=="BEFOREEND"){D.selectNodeContents(F);D.collapse(C=="AFTERBEGIN")}else{G=C=="BEFOREBEGIN";D[G?"setStartBefore":"setEndAfter"](F);D.collapse(G)}D.insertNode(D.createContextualFragment(E))}return F}function m(C){if(!C){return null}if("string"==typeof C||C instanceof String){return document.getElementById(C)}else{if(C.nodeName&&(C.nodeType==1||C.nodeType==9)){return C}}return null}function b(C){return String(C).replace(/&/g,"&amp;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/"/g,"&quot;").replace(/\'/g,"&#39;")}var k=(function(){var H=navigator;if(H.plugins&&H.mimeTypes.length){var E=H.plugins["Shockwave Flash"];if(E&&E.description){return E.description.replace(/([a-zA-Z]|\\s)+/,"").replace(/(\\s)+r/,".")+".0"}}else{if(window.ActiveXObject&&!window.opera){for(var D=12;D>=2;D--){try{var G=new ActiveXObject("ShockwaveFlash.ShockwaveFlash."+D);if(G){var C=G.GetVariable("$version");return C.replace(/WIN/g,"").replace(/,/g,".")}}catch(F){}}}}})();this.dispose=function(){$(document).unbind("keydown",t);$(document).unbind("DOMMouseScroll",scrollFunc);$(document).unbind("mousewheel",scrollFunc);if(!v){v=true}n&&n.dispose&&n.dispose()}})});';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
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
