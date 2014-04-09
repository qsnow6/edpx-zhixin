{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasShowURLGap = true%}{%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%$escaped_url=preg_replace(array("/(&amp;|&)tf=[_\w\d]+/i","/tf=[_\w\d]+(&amp;|&)/i","/(&amp;|&)ex_track=[_\w\d]+/i","/ex_track=[_\w\d]+(&amp;|&)/i"),array("","","",""),$tplData.url)%}{%if strpos($escaped_url,'?')%}{%$escaped_url="{%$escaped_url%}&amp;"%}{%else%}{%$escaped_url="{%$escaped_url%}?"%}{%/if%}{%/block%}{%block name='title'%}<style type="text/css">.op-{%$escaped_tpl%}-header-title .op-{%$escaped_tpl%}-icon{width:16px;height:16px;background:url(http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png) no-repeat left top}.op-{%$escaped_tpl%}-list-captain{color:#666;border-bottom:1px solid #ddd;line-height:24px;padding-bottom:5px}.op-{%$escaped_tpl%}-list li{height:24px;line-height:24px;overflow:hidden;clear:both}.op-{%$escaped_tpl%}-list .op-{%$escaped_tpl%}-title,.op-{%$escaped_tpl%}-more{text-indent:10px}.op-{%$escaped_tpl%}-list .op-{%$escaped_tpl%}-price{text-align:right;color:#f60}.op-{%$escaped_tpl%}-list .op-{%$escaped_tpl%}-price b{font-weight:bold;font-family:Arial}.op-{%$escaped_tpl%}-list .op-{%$escaped_tpl%}-area{text-align:center;color:#777}.op-{%$escaped_tpl%}-hotlinks{height:40px;overflow:hidden;padding-left:10px}.op-{%$escaped_tpl%}-hotlinks-title{display:block;font-weight:bold}.op-{%$escaped_tpl%}-hotlinks *{white-space:nowrap}</style><h3 class="t c-gap-bottom-small"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url|escape%}"><span class="c-icon c-gap-icon-right-small op-{%$escaped_tpl%}-icon"></span>{%$tplData.title|limitlen:60|escape|highlight:0%}</a> <span class="tsuf tsuf-op"></span></h3>{%/block%}{%block name='content'%}<div class="op-{%$escaped_tpl%}"> <div class="op-{%$escaped_tpl%}-info c-row"> <div class="c-span6"><a href="{%$escaped_url%}tf=bd_zhixin_place2_desc_1&amp;ex_track=bd_zhixin_dujia_place2_04" target="_blank"><img src="{%$tplData.thumbnail|escape%}" class="c-img6" /></a></div> <div class="c-span18 c-span-last"> {%if $tplData.desc and count($tplData.desc)%} {%foreach $tplData.desc as $desc%} <p>{%$desc.content|limitlen:170|escape|highlight%}</p> {%/foreach%} {%else%} 去哪儿网度假频道-提供在线旅游一站式预订服务，含有<a href="http://dujia.qunar.com/pqd/slist_{%$tplData.key|escape:'url'%}_{%$tplData.dep|escape:'url'%}?sight_id={%$tplData.sightid|escape:'url'%}&amp;tf=bd_zhixin_place2_desc_2&amp;ex_track=bd_zhixin_dujia_place2_04" target="_blank">{%$tplData.dep|escape|highlight%}-{%$tplData.key|escape|highlight%}旅游线路</a>、<a href="http://dujia.qunar.com/pqdk/slist_{%$tplData.key|escape:'url'%}_{%$tplData.dep|escape:'url'%}_around?sight_id={%$tplData.sightid|escape:'url'%}&amp;tf=bd_zhixin_place2_desc_3&amp;ex_track=bd_zhixin_dujia_place2_04" target="_blank">{%$tplData.key|escape|highlight%}当地游</a>等超值线路报价，更有惊喜的团购价，多多优惠供您选择 {%/if%} </div> </div> <div class="op-{%$escaped_tpl%}-list c-row"> <div class="op-{%$escaped_tpl%}-list-captain"><a href="{%$escaped_url%}tf=bd_zhixin_place2_more_01&amp;ex_track=bd_zhixin_dujia_place2_02" target="blank">{%$tplData.key|escape|highlight%}旅游要多少钱 - {%$tplData.count|escape%}条线路报价</a></div> <ul class="c-gap-top-small"> {%foreach $tplData.route as $index => $route%} <li class="c-row"> <span class="c-span14 op-{%$escaped_tpl%}-title"><a href="{%$route.link|escape%}{%if strpos($route.link,'?')==''%}?{%else%}&amp;{%/if%}tf=bd_zhixin_place2_route_{%$index+1|escape%}&amp;ex_track=bd_zhixin_dujia_place2_02" target="_blank">{%$route.title|limitlen:46|escape|highlight%}</a></span> <span class="c-span5 op-{%$escaped_tpl%}-area">{%$route.area|limitlen:16|escape%}</span> <span class="c-span5 op-{%$escaped_tpl%}-price c-span-last"><span class="c-gap-right">&yen;<b>{%$route.price|escape%}</b>起</span></span> </li> {%/foreach%} </ul> </div> {%if $tplData.play and count($tplData.play)%} {%$hots=$tplData.play%} {%$hotstype="play"%} {%elseif $tplData.hotq and count($tplData.hotq)%} {%$hots=$tplData.hotq%} {%$hotstype="hotq"%} {%/if%} {%if $hots and count($hots)%} <div class="op-{%$escaped_tpl%}-hotlinks c-gap-top op-{%$escaped_tpl%}-clear"> <span class="op-{%$escaped_tpl%}-hotlinks-title c-gap-right">{%if $hotstype=="hotq"%}{%$tplData.key|escape%}必去景点{%else%}精彩玩法推荐{%/if%}：</span> {%foreach $hots as $index => $link%} <a class="c-gap-right" href="{%if $hotstype=="hotq"%}http://dujia.qunar.com/pq/slist_{%$link.name|escape:'url'%}?sight_id={%$link.sightid|escape:'url'%}&amp;tf=bd_zhixin_place2_jingdian{%else%}{%$link.link|escape%}{%if strpos($route.link,'?')==''%}?{%else%}&amp;{%/if%}tf=bd_zhixin_place2_play_{%$index+1|escape%}{%/if%}&amp;ex_track=bd_zhixin_dujia_place2_03" target="_blank">{%$link.name|limitlen:36|escape%}</a> {%/foreach%} </div> {%/if%} <img src="http://dujia.qunar.com/bs.png?checkstats={%$tplData.checkstats|escape:'url'%}&amp;r={%time()%}{%100000000+rand(0,100000000)%}" style="position: absolute;" /></div>{%/block%}