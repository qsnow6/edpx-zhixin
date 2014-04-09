{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasShowURLGap = true%}{%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%/block%}{%block name='title'%}<style type="text/css">.op-{%$escaped_tpl%}-label,.op-{%$escaped_tpl%}-dep-container,.op-{%$escaped_tpl%}-query-container,.op-{%$escaped_tpl%}-search-btn{float:left;display:inline}.op-{%$escaped_tpl%}-label{line-height:28px;width:44px}.op-{%$escaped_tpl%}-dep-container{width:89px;outline:0}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-dep-container{width:99px}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-query-container .c-input12{width:234px}.op-{%$escaped_tpl%}-title-longdep .op-{%$escaped_tpl%}-query-container .c-input12 input{width:216px}.op-{%$escaped_tpl%}-query-container{position:relative}.op-{%$escaped_tpl%}-query-container-active{z-index:200}.op-{%$escaped_tpl%}-hot-title{font-weight:bold}.op-{%$escaped_tpl%}-hot-links span{color:#00c;display:inline-block;cursor:pointer;text-decoration:none}.op-{%$escaped_tpl%}-hot-links span:hover{color:#f60}.op-{%$escaped_tpl%}-query-container-active .op-{%$escaped_tpl%}-hot-query{display:block}.op-{%$escaped_tpl%}-hot-query{position:absolute;display:none;top:25px;left:0;background-color:#fff;border:1px solid #bbb;padding:5px 4px}.op-{%$escaped_tpl%}-dep-tabs{border-bottom:1px solid #ddd}.op-{%$escaped_tpl%}-dep-tab{position:relative;height:20px;line-height:20px;float:left;border:1px solid #ddd;border-bottom:0;padding:0 8px;cursor:pointer;color:#39f;background-color:#f9f9f9}.op-{%$escaped_tpl%}-dep-tab-active{margin-bottom:-1px;height:21px;background-color:#fff}.op-{%$escaped_tpl%}-dep-panel{display:none;padding:5px 0}.op-{%$escaped_tpl%}-dep-panel-active{display:block}.op-{%$escaped_tpl%}-dep-panel li{float:left;width:70px;text-align:center;line-height:28px;height:28px;overflow:hidden}.op-{%$escaped_tpl%}-dep-panel .c-dropdown2-selected{background-color:#fff;color:#f60}.op-{%$escaped_tpl%}-query-container .op-{%$escaped_tpl%}-large-input{width:388px}.op-{%$escaped_tpl%}-query-container .op-{%$escaped_tpl%}-large-input input{width:370px}.op-{%$escaped_tpl%}-hot-captain,.op-{%$escaped_tpl%}-hot-links{border-bottom:1px solid #ddd;padding-bottom:5px}.op-{%$escaped_tpl%}-hot-links-last{border-bottom:0}.op-{%$escaped_tpl%}-hot-query-box{padding:0 5px}.op-{%$escaped_tpl%}-filters{position:relative}.op-{%$escaped_tpl%}-filter{position:relative;padding-left:70px;display:none}.op-{%$escaped_tpl%}-filters .op-{%$escaped_tpl%}-filter-first,.op-{%$escaped_tpl%}-filters-active .op-{%$escaped_tpl%}-filter{display:block}.op-{%$escaped_tpl%}-filters-unactive .c-icon-chevron-top,.op-{%$escaped_tpl%}-filters-active .c-icon-chevron-bottom{display:none}.op-{%$escaped_tpl%}-filter-more{position:absolute;right:0;top:3px;cursor:pointer;color:#00c}.op-{%$escaped_tpl%}-filter *{font-size:12px}.op-{%$escaped_tpl%}-filter-label{position:absolute;font-weight:bold;left:0;top:0}.op-{%$escaped_tpl%}-filter-seperator{color:#ddd}.op-{%$escaped_tpl%}-filter-disabled{color:#ccc;cursor:default}.op-{%$escaped_tpl%}-filter-item,.op-{%$escaped_tpl%}-filter-disabled{padding:0 3px}.op-{%$escaped_tpl%}-filter-item{color:#00c;cursor:pointer}.op-{%$escaped_tpl%}-filter-item:hover,.op-{%$escaped_tpl%}-filter-item-hover{text-decoration:underline}.op-{%$escaped_tpl%}-filter-selected{color:#fff;background-color:#67a5eb;border:1px solid #418ce5;padding:0 2px;cursor:default}.op-{%$escaped_tpl%}-routes li{border-top:1px solid #eee;padding:10px 0 5px}.op-{%$escaped_tpl%}-route-thumb{position:relative;height:90px;overflow:hidden}.op-{%$escaped_tpl%}-route-thumb img{float:left}.op-{%$escaped_tpl%}-route-thumb a,.op-{%$escaped_tpl%}-route-thumb a *{text-decoration:none}.op-{%$escaped_tpl%}-route-mask,.op-{%$escaped_tpl%}-route-type{color:#fff;position:absolute;bottom:0;left:0;height:20px;line-height:20px;text-align:center}.op-{%$escaped_tpl%}-route-mask{background-color:#000;opacity:.4;_filter:alpha(opacity=40)}.op-{%$escaped_tpl%}-route-title{font-size:110%}.op-{%$escaped_tpl%}-route-title a,.op-{%$escaped_tpl%}-route-title a em{text-decoration:none}.op-{%$escaped_tpl%}-route-title a:hover,.op-{%$escaped_tpl%}-route-title a:hover em{text-decoration:underline}.op-{%$escaped_tpl%}-desc span{color:#666}.op-{%$escaped_tpl%}-route-booking{padding-top:15px}.op-{%$escaped_tpl%}-route-hasdiscount{padding-top:0}.op-{%$escaped_tpl%}-route-booking p{text-align:center;margin-left:14px}.op-{%$escaped_tpl%}-route-booking .op-{%$escaped_tpl%}-price{color:#f60;font-weight:bold}.op-{%$escaped_tpl%}-route-discount{color:#777}.op-{%$escaped_tpl%}-pager{text-align:center;overflow:hidden;padding:4px 0}.op-{%$escaped_tpl%}-pager span{display:inline-block;_display:inline;border:1px solid #d5d5d5;overflow:hidden;padding:3px 7px;margin:0 1px;color:#00c;text-decoration:none;line-height:18px;font:normal 12px Arial,Helvetica,sans-serif;text-align:center;vertical-align:middle}.op-{%$escaped_tpl%}-pager .op-{%$escaped_tpl%}-pager-current,.op-{%$escaped_tpl%}-pager .op-{%$escaped_tpl%}-pager-seperator,.op-{%$escaped_tpl%}-pager .op-{%$escaped_tpl%}-pager-loading{border:0;padding:4px 8px;color:#666}.op-{%$escaped_tpl%}-pager .op-{%$escaped_tpl%}-pager-current{color:#000}.op-{%$escaped_tpl%}-pager .op-{%$escaped_tpl%}-pager-item{cursor:pointer}.op-{%$escaped_tpl%}-header-title .op-{%$escaped_tpl%}-icon{width:16px;height:16px;background:url(http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png) no-repeat left top}</style><h3 class="t c-gap-bottom-small"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url|escape%}"><span class="c-icon c-gap-icon-right-small op-{%$escaped_tpl%}-icon"></span>{%$tplData.title|limitlen:60|escape|highlight:0%}</a> <span class="tsuf tsuf-op"></span></h3>{%/block%}{%block name='content'%}<div class="op-{%$escaped_tpl%} c-border"> <div class="op-{%$escaped_tpl%}-title c-row c-gap-top"> <div class="op-{%$escaped_tpl%}-search"> <div class="op-{%$escaped_tpl%}-label">出发地</div> <div class="op-{%$escaped_tpl%}-dep-container c-gap-right"> <div class="c-dropdown2 op-{%$escaped_tpl%}-dep"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn">{%$tplData.dep|escape%}</div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <div class="c-dropdown2-menubox"> <ul class="op-{%$escaped_tpl%}-dep-tabs c-row c-gap-top"> {%foreach $tplData.depsec as $sec%} <li class="op-{%$escaped_tpl%}-dep-tab c-gap-left{%if $sec@first%} op-{%$escaped_tpl%}-dep-tab-active{%/if%}">{%$sec.name|escape%}</li> {%/foreach%} </ul> {%$depinsec=0%} {%foreach $tplData.depsec as $sec%} <ul class="c-row op-{%$escaped_tpl%}-dep-panel{%if $sec@first%} op-{%$escaped_tpl%}-dep-panel-active{%/if%}"> {%foreach $sec.dep as $dep%} <li class="c-dropdown2-option" data-value="{%$dep.city|escape%}">{%$dep.city|escape%}</li> {%if $dep.city==$tplData.dep%} {%$depinsec=1%} {%/if%} {%/foreach%} </ul> {%/foreach%} {%if $depinsec==0 and $tplData.dep != ''%} <span style="display: none;" class="c-dropdown2-option" data-value="{%$tplData.dep|escape%}">{%$tplData.dep|escape%}</span> {%/if%} </div> </div> </div> </div> </div> <div class="op-{%$escaped_tpl%}-query-container c-gap-right"> <span class="c-input c-input12"> <input type="text" class="op-{%$escaped_tpl%}-query" value="{%$tplData.key|escape%}" placeholder="请输入内容"/> </span> <div class="op-{%$escaped_tpl%}-hot-query c-input12"> <div class="op-{%$escaped_tpl%}-hot-query-box"> <div class="c-row op-{%$escaped_tpl%}-hot-captain">热门搜索</div> {%foreach $tplData.hotstype as $type%} <div class="op-{%$escaped_tpl%}-hot-title c-row c-gap-top-small">{%$type.name|escape%}</div> <div class="op-{%$escaped_tpl%}-hot-links c-row{%if $type@last%} op-{%$escaped_tpl%}-hot-links-last{%/if%}"> {%foreach $type.link as $link%} <span class="c-gap-right op-{%$escaped_tpl%}-hot-query-link">{%$link.name|escape%}</span> {%/foreach%} </div> {%/foreach%} </div> </div> </div> <a href="" target="_blank" class="op-{%$escaped_tpl%}-search-btn c-btn OP_LOG_BTN c-btn-primary">去哪儿查询</a> </div> </div> <div class="op-{%$escaped_tpl%}-filters op-{%$escaped_tpl%}-filters-unactive c-row c-gap-top"> {%foreach $tplData.filter as $filter%} <div class="op-{%$escaped_tpl%}-filter c-row{%if $filter@first%} op-{%$escaped_tpl%}-filter-first{%else%} c-gap-top{%/if%}" data-filter="{%$filter.param|escape%}" data-name="{%$filter.name|escape%}"> <div class="op-{%$escaped_tpl%}-filter-label">{%$filter.name|escape%}：</div> {%foreach $filter.item as $item%} {%if !$item@first%}<span class="op-{%$escaped_tpl%}-filter-seperator">|</span>{%/if%} {%if $item.count == "0"%} <span class="op-{%$escaped_tpl%}-filter-disabled">{%$item.content|escape%}</span> {%elseif $item.selected%} <span class="op-{%$escaped_tpl%}-filter-selected" data-value="{%$item.value|escape%}">{%$item.content|escape%}</span> {%else%} <span class="op-{%$escaped_tpl%}-filter-item OP_LOG_OTHERS" data-click="{fm:'beha',qunartype:'filter'}" data-value="{%$item.value|escape%}">{%$item.content|escape%}</span> {%/if%} {%/foreach%} </div> {%/foreach%} {%if count($tplData.filter) > 0%} <span class="op-{%$escaped_tpl%}-filter-more">更多筛选<i class="c-icon c-icon-chevron-bottom"></i><i class="c-icon c-icon-chevron-top"></i></span> {%/if%} </div> <ul class="op-{%$escaped_tpl%}-routes c-gap-top"> {%foreach $tplData.route as $route%} <li class="c-row"> <div class="op-{%$escaped_tpl%}-route-thumb c-span6"> <a href="{%$route.link|escape%}" target="_blank"> <img src="{%$route.image|escape%}" class="c-img6" /> <span class="op-{%$escaped_tpl%}-route-mask c-img6"></span> <span class="op-{%$escaped_tpl%}-route-type c-img6">{%$route.type|escape%}</span> </a> </div> <div class="op-{%$escaped_tpl%}-route-content c-span13"> <p class="op-{%$escaped_tpl%}-route-title"><a href="{%$route.link|escape%}" target="_blank">{%$route.title|limitlen:72|escape|highlight%}</a></p> {%if $route.date%} <p class="op-{%$escaped_tpl%}-desc"><span>出发日期：</span>{%$route.date|limitlen:28|escape%}</p> {%/if%} <p class="op-{%$escaped_tpl%}-desc"><span>供 应 &nbsp;商：</span>{%$route.supplier|limitlen:28|escape%}</p> </div> <div class="op-{%$escaped_tpl%}-route-booking c-span5 c-span-last{%if $route.discount%} op-{%$escaped_tpl%}-route-hasdiscount{%/if%}"> {%$escaped_price=intval($route.price)%} <p class="op-{%$escaped_tpl%}-price">&yen;{%$escaped_price%}起</p> {%$escaped_discount=intval($route.discount)%} {%if $escaped_discount>0%} <p class="op-{%$escaped_tpl%}-route-discount c-gap-top-small"> {%if $escaped_discount>(($escaped_discount+$escaped_price)*0.2)%}{%(round($escaped_price*10/($escaped_discount+$escaped_price),1))%}折{%else%}节省&yen;{%$escaped_discount%}{%/if%} </p> {%/if%} <p class="op-{%$escaped_tpl%}-action c-gap-top-small"><a class="c-btn" href="{%$route.link|escape%}" target="_blank">查看详情</a></p> </div> </li> {%/foreach%} </ul> <div class="op-{%$escaped_tpl%}-pager c-gap-top-small" data-count="{%$tplData.count|escape%}"></div> <img src="http://dujia.qunar.com/bs.png?checkstats={%$tplData.checkstats|escape:'url'%}&amp;r={%time()%}{%100000000+rand(0,100000000)%}" style="position: absolute;" /></div><script >
    A.setup({dep:'{%$tplData.dep|escape:"javascript"%}',tpl:'{%$escaped_tpl|escape:"javascript"%}',query:'{%$tplData.key|escape:"javascript"%}'});
</script>{%/block%}