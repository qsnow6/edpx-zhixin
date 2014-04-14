{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasShowURLGap = true%}{%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%/block%}{%block name='title'%}<style type="text/css">{%fe_fn_c_css css='input'%}{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='dropdown2'%}{%fe_fn_c_css css='img'%}.op-{%$escaped_tpl%}-label,.op-{%$escaped_tpl%}-dep-container,.op-{%$escaped_tpl%}-query-container,.op-{%$escaped_tpl%}-search-btn{float:left;display:inline}.op-{%$escaped_tpl%}-label{line-height:1.87em;width:55px}.op-{%$escaped_tpl%}-dep-container{width:89px;outline:0}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-dep-container{width:99px}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-query-container .c-input12{width:234px}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-query-container .c-input12 input{width:216px}.op-{%$escaped_tpl%}-query-container{position:relative}.op-{%$escaped_tpl%}-query-container-active{z-index:200}.op-{%$escaped_tpl%}-hot-title{font-weight:bold}.op-{%$escaped_tpl%}-hot-links span{color:#00c;display:inline-block;cursor:pointer;text-decoration:none}.op-{%$escaped_tpl%}-hot-links span:hover{color:#f60}.op-{%$escaped_tpl%}-query-container-active .op-{%$escaped_tpl%}-hot-query{display:block}.op-{%$escaped_tpl%}-hot-query{position:absolute;display:none;top:25px;left:0;background-color:#fff;border:1px solid #bbb;padding:5px 4px}.op-{%$escaped_tpl%}-dep-tabs{border-bottom:1px solid #ddd}.op-{%$escaped_tpl%}-dep-tab{position:relative;height:20px;line-height:1.33em;float:left;border:1px solid #ddd;border-bottom:0;padding:0 8px;cursor:pointer;color:#39f;background-color:#f9f9f9}.op-{%$escaped_tpl%}-dep-tab-active{margin-bottom:-1px;height:21px;background-color:#fff}.op-{%$escaped_tpl%}-dep-panel{display:none;padding:5px 0}.op-{%$escaped_tpl%}-dep-panel-active{display:block}.op-{%$escaped_tpl%}-dep-panel li{float:left;width:70px;text-align:center;line-height:1.87em;height:28px;overflow:hidden}.op-{%$escaped_tpl%}-dep-panel .c-dropdown2-selected{background-color:#fff;color:#f60}.op-{%$escaped_tpl%}-query-container .op-{%$escaped_tpl%}-large-input{width:388px}.op-{%$escaped_tpl%}-query-container .op-{%$escaped_tpl%}-large-input input{width:370px}.op-{%$escaped_tpl%}-hot-captain,.op-{%$escaped_tpl%}-hot-links{border-bottom:1px solid #ddd;padding-bottom:5px}.op-{%$escaped_tpl%}-hot-links-last{border-bottom:0}.op-{%$escaped_tpl%}-hot-query-box{padding:0 5px}.op-{%$escaped_tpl%}-sights{border-top:1px solid #eee}.op-{%$escaped_tpl%}-sight{display:block;position:relative;padding-top:9px;overflow:hidden;height:81px;overflow:hidden}.op-{%$escaped_tpl%}-sight span{display:block;line-height:1.33em;bottom:0;left:0;height:20px;overflow:hidden;color:#fff;text-align:center;position:absolute}.op-{%$escaped_tpl%}-sight-mask{background-color:#000;opacity:.5;_filter:alpha(opacity=50)}.op-{%$escaped_tpl%}-sight,.op-{%$escaped_tpl%}-sight *,.op-{%$escaped_tpl%}-sight:hover,.op-{%$escaped_tpl%}-sight *:hover{text-decoration:none;cursor:pointer}.op-{%$escaped_tpl%}-price{color:#f60;font-weight:bold}.op-{%$escaped_tpl%}-price-label{color:#999;font-weight:normal}.op-{%$escaped_tpl%}-desc{color:#aaa}.op-{%$escaped_tpl%}-routes,.op-{%$escaped_tpl%}-hotlinks{border-top:1px solid #eee;padding-top:5px}.op-{%$escaped_tpl%}-routes .op-{%$escaped_tpl%}-routes-title{font-weight:bold;line-height:1.6em}.op-{%$escaped_tpl%}-routes .op-{%$escaped_tpl%}-price{position:absolute;right:0;top:0}.op-{%$escaped_tpl%}-routes li{clear:both;line-height:1.6em;position:relative}.op-{%$escaped_tpl%}-hotlinks{height:20px;overflow:hidden}.op-{%$escaped_tpl%}-hotlinks-title{font-weight:bold}.op-{%$escaped_tpl%}-hotlinks *{white-space:nowrap}.op-{%$escaped_tpl%}-header-title .op-{%$escaped_tpl%}-icon{width:16px;height:16px;background:url(http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png) no-repeat left top}</style><h3 class="t c-gap-bottom-small"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url|escape%}"><span class="c-icon c-gap-icon-right-small op-{%$escaped_tpl%}-icon"></span>{%$tplData.title|limitlen:60|escape|highlight:0%}</a> <span class="tsuf tsuf-op"></span></h3>{%/block%}{%block name='content'%}<div class="op-{%$escaped_tpl%} c-border"> <div class="op-{%$escaped_tpl%}-title c-row c-gap-top"> <div class="op-{%$escaped_tpl%}-search"> <div class="op-{%$escaped_tpl%}-label">出发地</div> <div class="op-{%$escaped_tpl%}-dep-container c-gap-right"> <div class="c-dropdown2 op-{%$escaped_tpl%}-dep"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn">{%$tplData.dep|escape%}</div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <div class="c-dropdown2-menubox"> <ul class="op-{%$escaped_tpl%}-dep-tabs c-row c-gap-top"> {%foreach $tplData.depsec as $sec%} <li class="op-{%$escaped_tpl%}-dep-tab c-gap-left{%if $sec@first%} op-{%$escaped_tpl%}-dep-tab-active{%/if%}">{%$sec.name|escape%}</li> {%/foreach%} </ul> {%$depinsec=0%} {%foreach $tplData.depsec as $sec%} <ul class="c-row op-{%$escaped_tpl%}-dep-panel{%if $sec@first%} op-{%$escaped_tpl%}-dep-panel-active{%/if%}"> {%foreach $sec.dep as $dep%} <li class="c-dropdown2-option" data-value="{%$dep.city|escape%}">{%$dep.city|escape%}</li> {%if $dep.city==$tplData.dep%} {%$depinsec=1%} {%/if%} {%/foreach%} </ul> {%/foreach%} {%if $depinsec==0 and $tplData.dep != ''%} <span style="display: none;" class="c-dropdown2-option" data-value="{%$tplData.dep|escape%}">{%$tplData.dep|escape%}</span> {%/if%} </div> </div> </div> </div> </div> <div class="op-{%$escaped_tpl%}-query-container c-gap-right"> <span class="c-input c-input12"> <input type="text" class="op-{%$escaped_tpl%}-query" value="{%$tplData.key|escape%}" placeholder="请输入内容"/> </span> <div class="op-{%$escaped_tpl%}-hot-query op-{%$escaped_tpl%}-large-input"> <div class="op-{%$escaped_tpl%}-hot-query-box"> <div class="c-row op-{%$escaped_tpl%}-hot-captain">热门搜索</div> {%foreach $tplData.hotstype as $type%} <div class="op-{%$escaped_tpl%}-hot-title c-row c-gap-top-small">{%$type.name|escape%}</div> <div class="op-{%$escaped_tpl%}-hot-links c-row{%if $type@last%} op-{%$escaped_tpl%}-hot-links-last{%/if%}"> {%foreach $type.link as $link%} <span class="c-gap-right op-{%$escaped_tpl%}-hot-query-link">{%$link.name|escape%}</span> {%/foreach%} </div> {%/foreach%} </div> </div> </div> <a href="" target="_blank" class="op-{%$escaped_tpl%}-search-btn c-btn OP_LOG_BTN c-btn-primary">去哪儿查询</a> </div> </div> <ul class="c-gap-top c-row op-{%$escaped_tpl%}-sights"> {%foreach $tplData.sight as $index=>$item%} <li class="c-span6{%if $item@last%} c-span-last{%/if%}"> <a class="op-{%$escaped_tpl%}-sight c-gap-bottom" target="_blank" href="http://dujia.qunar.com/p/slist?sight_id={%$item.sightid|escape:'url'%}&amp;query={%$item.name|escape:'url'%}&amp;ex_track=bd_zhixin_dujia_theme_03&amp;tf=bd_zhixin_theme_arrive_{%($index+1)|escape%}"> <img src="{%$item.image|escape%}" class="c-img c-img6" /><span class="op-{%$escaped_tpl%}-sight-mask c-img6"></span><span class="c-img6">{%$item.name|escape%}</span> </a> <p class="op-{%$escaped_tpl%}-price"><span class="op-{%$escaped_tpl%}-price-label c-gap-right-small">{%if $item.tprice%}门票价{%else%}最低价{%/if%}</span>&yen;{%if $item.tprice%}{%$item.tprice|escape%}{%else%}{%$item.price|escape%}{%/if%}起</p> </li> {%/foreach%} </ul> <div class="op-{%$escaped_tpl%}-routes c-gap-top"> <div class="op-{%$escaped_tpl%}-routes-title">热门<em>{%$tplData.key|escape%}</em>线路推荐</div> <ul class="c-row"> {%foreach $tplData.route as $routeindex=> $route%} <li class="c-span24 c-span-last"> {%$reducelength=2%} {%if $route.type == "tuan"%} <i class="c-text c-text-warning">团</i> {%elseif $route.type == "discount"%} <i class="c-text c-text-warning">惠</i> {%else%} {%$reducelength=0%} {%/if%} <a href="{%$route.link|escape%}{%if strpos($route.link,'?')==''%}?{%else%}&amp;{%/if%}tf=bd_zhixin_theme_route_{%($routeindex+1)|escape%}&amp;ex_track=bd_zhixin_dujia_theme_04" target="_blank"> {%$route.title|limitlen:(66-$reducelength)|escape|highlight%} </a> <span class="op-{%$escaped_tpl%}-price">&yen;{%$route.price|escape%}起</span> </li> {%/foreach%} </ul> </div> {%if $tplData.hotq and count($tplData.hotq)%} <div class="op-{%$escaped_tpl%}-hotlinks c-gap-top op-{%$escaped_tpl%}-clear"> <span class="op-{%$escaped_tpl%}-hotlinks-title c-gap-right">热门目的地</span> {%foreach $tplData.hotq as $link%} <a class="c-gap-right" href="http://dujia.qunar.com/p/slist?sight_id={%$link.sightid|escape:'url'%}&amp;query={%$link.name|escape:'url'%}&amp;tf=bd_zhixin_theme_arrive_other&ex_track=bd_zhixin_dujia_theme_05" target="_blank">{%$link.name|escape%}</a> {%/foreach%} </div> {%/if%} <img src="http://dujia.qunar.com/bs.png?checkstats={%$tplData.checkstats|escape:'url'%}&amp;r={%time()%}{%100000000+rand(0,100000000)%}" style="position: absolute;" /></div><script >
    A.setup({dep:'{%$tplData.dep|escape:"javascript"%}',tpl:'{%$escaped_tpl|escape:"javascript"%}'});
</script><script data-merge>A.setup(function(){var _this = this;var dep=_this.data.dep||'';var replaceCls=function(str){return (str||'').replace(/##tpl##/g,'op-'+_this.data.tpl);};var Deppanel=(function(){var depselector;var $title=_this.find('.'+replaceCls('##tpl##-title'));var $dom = _this.find('.'+replaceCls('##tpl##-dep-container'));if($dom.length){A.use('dropdown21', function(){ depselector = A.ui.dropdown21($dom.get(0),{type: 'custom',width: 350,onchange: function(){dep=depselector.getValu{%*i*%}e();_update();}});var _update=function(){dep=depselector.getValue();if(dep.length>3){$title.find('.'+replaceCls('##tpl##-title-longdep'));}else{$title.find('.'+replaceCls('##tpl##-title-longdep'));}};if(dep){depselector.setValue(dep);}_update();var $tabs=_this.find('.'+replaceCls('##tpl##-dep-tab'));var $panels=_this.find('.'+replaceCls('##tpl##-dep-panel'));var currentindex=0;var activeCls=replaceCls('##tpl##-dep-tab-active');var panelactiveCls=replaceCls('##tpl##-dep-panel-active');$tabs.each({%*i*%}function(index,tab){if(index<$panels.length){$(tab).bind('click',function(){$tabs.eq(currentindex).removeClass(activeCls);$panels.eq(currentindex).removeClass(panelactiveCls);currentindex=index;$tabs.eq(currentindex).addClass(activeCls);$panels.eq(currentindex).addClass(panelactiveCls);});}});});}return {dispose: function(){if(depselector&&depselector.dispose){depselector.dispose();}}};})();var Search=(function(){var $querydom=_this.find('.'+replaceCls('##tpl##-query-container'));var $searchdom={%*i*%}_this.find('.'+replaceCls('##tpl##-query'));var enter=false;var activeCls=replaceCls('##tpl##-query-container-active');$searchdom.bind('focus',function(e){if(!$searchdom.val()){$querydom.addClass(activeCls);}});$searchdom.bind('keyup',function(e){if(!$searchdom.val()){$querydom.addClass(activeCls);}else{$querydom.removeClass(activeCls);}});$querydom.bind('mouseenter',function(){enter=true;});$querydom.bind('mouseleave',function(){enter=false;});var qmousedown=function(){if(!enter){$querydom.remo{%*i*%}veClass(activeCls);}};$(document).bind('mousedown',qmousedown);var search=function(){var v=$searchdom.val();var params=[];if(dep){params.push('dep='+encodeURIComponent(dep));}if(v){params.push('query='+encodeURIComponent(v));}return 'http://dujia.qunar.com/p/slist?'+params.join('&');};var $ns=_this.find('.'+replaceCls('##tpl##-hot-query-link')),linkdom;$ns.each(function(i,linkdom){var city=(linkdom.innerText||linkdom.textContent);$(linkdom).bind('click',function(e){$querydom.removeClass(activeCl{%*i*%}s);$searchdom.val(city);});});var $button=_this.find('.'+replaceCls('##tpl##-search-btn'));$button.bind('click',function(e){$button.attr('href',search()+'&tf=bd_zhixin_search_04&ex_track=bd_zhixin_dujia_theme_02');});return {dispose: function(){$(document).unbind('mousedown',qmousedown);}};})();this.dispose=function(){Search.dispose();Deppanel.dispose();};});</script>{%/block%}