{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%/block%}{%block name="title"%}<style type="text/css">.op-{%$escaped_tpl%}-icon-qunar{width:16px;height:16px;background:url(http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png) no-repeat left top}.op-{%$escaped_tpl%}-piao-desc a,.op-{%$escaped_tpl%}-piao-desc a em,.op-{%$escaped_tpl%}-piao-more a,.op-{%$escaped_tpl%}-piao-more a em,.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-title a,.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-title a em{text-decoration:none}.op-{%$escaped_tpl%}-piao-desc a:hover,.op-{%$escaped_tpl%}-piao-more a:hover,.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-title a:hover{text-decoration:underline}.op-{%$escaped_tpl%}-piao-box a{text-decoration:none}.op-{%$escaped_tpl%}-piao-sight .op-{%$escaped_tpl%}-piao-info{padding-top:1px;line-height:22px}.op-{%$escaped_tpl%}-piao-show img{vertical-align:top}.op-{%$escaped_tpl%}-piao-desc a.op-{%$escaped_tpl%}-piao-side{float:right;line-height:22px}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-full,.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-half{display:block;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-full{width:100%}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-half{width:330px;float:left}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-label{color:#666;display:inline-block;vertical-align:top}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-grey{color:#666}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-detail{display:inline-block}.op-{%$escaped_tpl%}-piao-desc .op-{%$escaped_tpl%}-piao-description{display:inline-block;width:320px}.op-{%$escaped_tpl%}-piao-ticket li,.op-{%$escaped_tpl%}-piao-more{border-top:1px solid #eee;line-height:32px}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-title{overflow:hidden;float:left;width:270px;white-space:nowrap;text-overflow:ellipsis}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-order,.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-sale{float:right}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-order{_display:inline;margin-top:3px}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-sale{white-space:nowrap}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-sale .op-{%$escaped_tpl%}-piao-price{font-weight:700;color:#f60}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-sale .op-{%$escaped_tpl%}-piao-price span{font-family:Arial,sans-serif}.op-{%$escaped_tpl%}-piao-ticket li .op-{%$escaped_tpl%}-piao-cost{color:#666;text-decoration:line-through}.op-{%$escaped_tpl%}-piao-more{line-height:12px;padding-top:10px;text-align:center}</style><h3 class="t c-gap-bottom-small"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url|escape%}"><span class="c-icon c-gap-icon-right-small op-{%$escaped_tpl%}-icon-qunar"></span>{%$tplData.title|limitlen:56|escape|highlight:0%}</a> <span class="tsuf tsuf-op"></span></h3>{%/block%}{%block name="content"%}<div class="op-{%$escaped_tpl%}-piao"><div class="op-{%$escaped_tpl%}-piao-box c-container c-border c-gap-bottom-small"><div class="op-{%$escaped_tpl%}-piao-sight c-row"><div class="op-{%$escaped_tpl%}-piao-show c-span6"><a href="{%$tplData.sight.detailUrl%}" target="_blank"><img src="{%$tplData.sight.imgUrl%}" class="c-img6" /></a></div><div class="c-span18 c-span-last op-{%$escaped_tpl%}-piao-info">{%if $tplData.sight.opentime%} <div class="op-{%$escaped_tpl%}-piao-desc"><span class="op-{%$escaped_tpl%}-piao-half"><span class="op-{%$escaped_tpl%}-piao-grey">开放时间：</span>{%$tplData.sight.opentime|escape|limitlen:40|highlight:0%}</span> <a href="{%$tplData.sight.pointUrl%}" target="_blank" class="op-{%$escaped_tpl%}-piao-side">查看地图</a></div> {%/if%} {%if $tplData.sight.address%}<div class="op-{%$escaped_tpl%}-piao-desc"><span><span class="op-{%$escaped_tpl%}-piao-grey">地　　址：</span>{%$tplData.sight.address|escape|limitlen:48|highlight:0%}</span></div> {%/if%}{%if $tplData.sight.event%}<div class="op-{%$escaped_tpl%}-piao-desc"><span><span class="op-{%$escaped_tpl%}-piao-label">优惠活动：</span>{%$tplData.sight.event|escape|highlight:0%}{%if !empty($tplData.sight.eventUrl)%}<a href="{%$tplData.sight.eventUrl%}" class="op-{%$escaped_tpl%}-piao-detail" target="_blank">详情&gt;&gt;</a>{%/if%}</span></div>{%/if%}{%if empty($tplData.sight.event) && $tplData.sight.freeInfo%}<div class="op-{%$escaped_tpl%}-piao-desc"><span><span class="op-{%$escaped_tpl%}-piao-label">特惠政策：</span><span class="op-{%$escaped_tpl%}-piao-description">{%$tplData.sight.freeInfo|escape|highlight:0%}{%if !empty($tplData.sight.detailUrl)%}<a href="{%$tplData.sight.detailUrl%}" class="op-{%$escaped_tpl%}-piao-detail" target="_blank">详情&gt;&gt;</a>{%/if%}</span></span></div>{%/if%}{%if empty($tplData.sight.event) && empty($tplData.sight.freeInfo) && $tplData.sight.feature%}<div class="op-{%$escaped_tpl%}-piao-desc"><span><span class="op-{%$escaped_tpl%}-piao-label">推荐理由：</span><span class="op-{%$escaped_tpl%}-piao-description">{%$tplData.sight.feature|escape|highlight:0%}{%if !empty($tplData.sight.featureUrl)%}<a href="{%$tplData.sight.featureUrl%}" class="op-{%$escaped_tpl%}-piao-detail" target="_blank">详情&gt;&gt;</a>{%/if%}</span></span></div>{%/if%}</div></div><ul class="op-{%$escaped_tpl%}-piao-ticket c-gap-top">{%foreach $tplData.prices as $key => $price%}<li class="c-row"><div class="op-{%$escaped_tpl%}-piao-title"><a href="{%$price.nameUrl%}" target="_blank">{%$price.name|escape|highlight:0%}</a></div><a href="{%$price.bookingUrl%}" target="_blank" class="c-btn c-btn-primary op-{%$escaped_tpl%}-piao-order c-gap-left c-gap-top-small">立即预订</a> <div class="op-{%$escaped_tpl%}-piao-sale">{%if $price.saveprice && $price.marketPrice%}<span class="op-{%$escaped_tpl%}-piao-cost c-gap-right">&yen;{%$price.marketPrice|escape%}</span>{%/if%}<strong class="op-{%$escaped_tpl%}-piao-price"><span>&yen;{%$price.qunarPrice|escape%}</span>起</strong></div></li>{%/foreach%}</ul>{%if $tplData.more%}<div class="op-{%$escaped_tpl%}-piao-more"><a href="{%$tplData.more.detailUrl%}" target="_blank">{%$tplData.more.title|escape|highlight:0%}</a></div>{%/if%}</div><img style="display:none;" src="http://piao.qunar.com/trace.json?ty=zhixin&sight={%$tplData.sight.name|escape%}&a=jqkp_01&{%time()%}"/></div>{%/block%}