{%extends file='../baidu/baidu/page.tpl'%}  {%block name="global_vars_ext"%}{%* 模板中的变量 *%}{%$footUrlComponent = "&oq=`$query|vui_escape:'url'``$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type`&bundleid=com.baidu.baiduhd"%}{%$clUrlComponent = "&cl=0`$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type`&bundleid=com.baidu.baiduhd"%}{%$lmUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type`&bundleid=com.baidu.baiduhd"%}{%$ztypeUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts`&bundleid=com.baidu.baiduhd"%}{%$hintUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type`&bundleid=com.baidu.baiduhd"%}{%$rsUrlComponent = "&oq=`$query|vui_escape:'url'``$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.dsp``$urlArgs.z_type`&bundleid=com.baidu.baiduhd"%}{%$pager.urlComponent = "`$pager.cl``$pager.ct``$pager.tn``$pager.rn``$pager.ie``$pager.f``$pager.lm``$pager.si``$pager.dsp``$pager.usm``$pager.z_type``$pager.ch``$pager.sts`&bundleid=com.baidu.baiduhd"%}{%$ubs_log_apptype = 1%} {%* native app *%}{%* mobile 1.0.8新增了历史Sug功能，hd模板先不上线，所以依然引用1.0.7版本. page.js同mobile *%}{%$PAD_JS_WWW_PAGE ='/cache/pad/js/page/page-1.0.12.js' scope='global'%}{%/block%}{%block name="header_start"%}<header id="bds-header-ipadhd">{%/block%}{%block name="login"%}{%/block%}{%block name="top_search_form"%}{%/block%}{%block name="bottom_search_form"%}{%/block%}{%block name="navigation"%}<style>.bds-nav-ipadhd{border-bottom:1px solid #eff2f6;width:100%}.bds-nav-ipadhd:after{content:" ";display:block;height:0;clear:left}.navigator-list,.navigator-list li{list-style:none;padding:0;margin:0;float:left}.navigator-list{margin-top:10px;position:relative}.navigator-list li a{padding:10px 17px;font-size:15px;color:#64696e;text-decoration:none;outline:0;display:block;-webkit-tap-highlight-color:transparent}.navigator-list .nav-tab-pressed{background:#f7f7f7;-webkit-box-shadow:1px 1px 4px #ddd inset;-webkit-border-radius:2px}.navigator-list .nav-tab-pressed a{-webkit-box-shadow:-1px -1px 4px #ddd inset;-webkit-border-radius:2px}.bds-logo{float:left;margin:7px 10px 0 22px;-webkit-tap-highlight-color:rgba(0,0,0,0.3)}.navigator-list .active-item a{color:#000;font-weight:bold}.dialog-more{position:absolute;right:4px;top:47px;border:1px solid #c4c4c4;-webkit-border-radius:3px;-webkit-box-shadow:0 0 2px .5px #ccc;display:none;clear:left;z-index:298}.dialog-more li a{border-bottom:1px solid #eff2f5;padding:10px 0;text-align:center;display:block;width:100px;color:#64696e;text-decoration:none;-webkit-tap-highlight-color:transparent;background:#fff;font-size:14px}.dialog-more li{float:none}.dialog-more li:last-child a{border-bottom:0}.dialog-arrow{position:absolute;right:15px;top:-6px;width:10px;height:10px;border:1px solid #c4c4c4;border-right:0;border-bottom:0;-webkit-transform:rotate(45deg)}.dialog-arrow div{display:block;border:5px solid #fff;border-right-color:transparent;border-bottom-color:transparent;width:0;height:0}.nav-dialog-tab-pressed a{background:#f1f3f5}.more-btn a{width:18px;height:19px;background:url({%$STATIC_DOMAIN_WWW0%}/cache/pad/img/ipadapp-sprite-1.0.1.png) no-repeat 20px -48px;background-size:150px 100px;position:relative}@media all and (orientation:portrait){.more-item{display:none}.more-btn{display:block}}@media all and (orientation:landscape){.more-btn{display:none}.dialog-more{display:none}}</style><div class="bds-nav-ipadhd">{%$fe_tmp_bdsNavUaArray = array()%}{%$fe_tmp_bdsNavUaResult = preg_match_all('/BaiduHD.(\d\.\d)/i', $browser.userAgent, $fe_tmp_bdsNavUaArray)%}{%if !strpos($browser.userAgent, 'BaiduHD') || ($fe_tmp_bdsNavUaResult && $fe_tmp_bdsNavUaArray[1][0] < 2.4)%}<a class="bds-logo" href="http://www.baidu.com" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'logo'})" {%/if%}><img src="http://s1.bdstatic.com/r/www/cache/pad/img/ipadhd2-logo-1.0.0.png" width="90" height="29"></a>{%/if%}<ul class="navigator-list"><li class="active-item"><a href="#" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'pic'})" {%/if%}>网页</a></li><li><a href="{%$image_domain%}/img?tn=bdlistiphone&ct=201326592&lm=-1&cl=2&fr=wwwt&word={%$queryEnc%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'pic'})" {%/if%}>图片</a></li><li><a href="{%$video_domain%}/v?ct=301989888&rn=20&pn=0&db=0&s=25&word={%$queryEnc%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'video'})" {%/if%}>视频</a></li><li><a href="{%$ikown_domain%}/q?ct=17&pn=0&tn=ikaslist&rn=10&word={%$queryEnc%}&fr=wwwt" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'zhidao'})" {%/if%}>知道</a></li><li><a href="{%$news_domain%}/ns?cl=2&rn=20&tn=news&word={%$queryEnc%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'news'})" {%/if%}>新闻</a></li><li><a href="{%$tieba_domain%}/f?kw={%$queryEnc%}&fr=wwwt" wdfield="kw" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'tieba'})" {%/if%}>贴吧</a></li><li><a href="{%$music_domain%}/search?fr=ps&key={%$queryEnc%}" wdfield="key" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'music'})" {%/if%}>音乐</a></li><li><a href="{%$map_domain%}/m?word={%$queryEnc%}&fr=ps01000" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'map'})" {%/if%}>地图</a></li><li><a href="{%$baike_domain%}/search?word={%$queryEnc%}&type=0" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'baike'})" {%/if%}>百科</a></li><li class="more-item"><a href="{%$wenku_domain%}/search?word={%$queryEnc%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'wenku'})" {%/if%}>文库</a></li><li class="more-item"><a href="{%$hao123_domain%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'hao123'})" {%/if%}>Hao123</a></li><li class="more-item"><a href="{%$more_domain%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'more'})" {%/if%}>更多</a></li><li class="more-item more-btn"><a href="#" wdfield="word" onmousedown="return c({'fm':'tab','tab':'more-btn'})"></a></li> <div class="dialog-more"><div class="dialog-arrow"><div></div></div><ul><li><a href="{%$wenku_domain%}/search?word={%$queryEnc%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'wenku'})" {%/if%}>文库</a></li><li><a href="{%$hao123_domain%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'hao123'})" {%/if%}>Hao123</a></li><li><a href="{%$more_domain%}" wdfield="word" {%if $needubs == 1%} onmousedown="return c({'fm':'tab','tab':'more'})" {%/if%}>更多</a></li></ul></div></ul></div><iframe src="qid://qid:{%$queryId%}" style="display:none;"></iframe><script>(function(){$(".navigator-list li").on("touchstart",function(){$(this).addClass("nav-tab-pressed");}).on("touchend",function(){$(this).removeClass("nav-tab-pressed");});$(".dialog-more li").on("touchstart",function(){$(this).addClass("nav-dialog-tab-pressed");}).on("touchend",function(){$(this).removeClass("nav-dialog-tab-pressed");});$(document.body).on("touchend",function(e){$(".navigator-list li").each(function(index,item){$(item).removeClass("nav-tab-pressed");});$(".dialog-more li").each(function(index,item){$(item).removeClass("nav-dialog-tab-pressed");});if(!$(e.target).parent().parent().parent().hasClass("dialog-more")){$(".dialog-more").css("display","none");}});$(".more-btn a").click(function(e){$(".dialog-more").css("display","block");e.preventDefault();});$(window).on("orientationchange",function(event){var orientation = window.orientation;if(orientation === -90 || orientation === 90){$(".dialog-more").css("display","none");}});})();</script>{%/block%}{%block name="footer"%}<p id="bds-cp">&copy;{%$lable_foot_year%} Baidu <span>{%$lable_foot_word%}</span></p>{%/block%}{%block name="foot_script_ext"%}{%/block%}