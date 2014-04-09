{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name="data_modifier"%}{%$tplData.showurl='gouwu.baidu.com/'%}{%/block%}{%block name='content'%}<h3 class="t"> <a target="_blank" href="{%$tplData.url%}">【{%$tplData.filteredQuery|highlight:0%}】{%$tplData.TitleSuffix%}_百度购物搜索</a></h3> <div class="op_minisearch_main">  {%$op_urlperfix = explode('wd=', $tplData.url)%}  {%$tplData = $tplData|shop_data_process%}  {%$loop_maxcount_2=count($tplData['ShopStatInfo']['brand'])%} {%$loop_maxcount_3=count($tplData['ShopStatInfo']['store'])%} {%if $loop_maxcount_2<2 or $loop_maxcount_3<2%}  百度商品搜索服务，汇集{%$tplData.filteredQuery|highlight:0%}优质在线商家、商品信息。包括{%$tplData.filteredQuery|highlight:0%}优质商家、{%$tplData.filteredQuery|highlight:0%}购物保障、{%$tplData.filteredQuery|highlight:0%}报价、{%$tplData.filteredQuery|highlight:0%}图片、{%$tplData.filteredQuery|highlight:0%}评价信息... {%else%}  <p>已汇集了<span>{%$tplData.storeCount%}</span>家商城，共<span>{%$tplData.dispNum%}</span>款与<em>{%$tplData.filteredQuery%}</em>相关的商品</p> <span class="op_minisearch_sug">点击以下链接进入选购：</span> <table cellspacing="0" cellpadding="0" class="op_minisearch_rank"> {%$tempDataShowCate=false%} {%if isset($tplData['ShopStatInfo']['subcate']) && !empty($tplData['ShopStatInfo']['subcate'])%} {%$loop_maxcount_1=count($tplData['ShopStatInfo']['subcate'])%} {%if $loop_maxcount_1>1%} {%$tempDataShowCate=true%} {%/if%} {%elseif isset($tplData['ShopStatInfo']['subcate'])%} {%$loop_maxcount_1=count($tplData['ShopStatInfo']['cate'])%} {%if isset($tplData.type) && $tplData.type==0 && $loop_maxcount_1>1%} {%$tempDataShowCate=true%} {%/if%} {%/if%} {%if $tempDataShowCate%} <tr> <td style="white-space:nowrap;">商品分类：</td> <td class="op_minisearch_td"> {%if isset($tplData['ShopStatInfo']['subcate']) && !empty($tplData['ShopStatInfo']['subcate'])%} <div class="op_minisearch_item" data-item="op_minisearch_cata"> {%for $op_loop_count=0 to $loop_maxcount_1-1%}{%if $op_loop_count<13%} {%if $tplData['ShopStatInfo']['subcate'][$op_loop_count]['name']!=""%} <span><a href="{%$op_urlperfix[0]%}wd={%$tplData.filteredQuery|escape:'url'%}&cat={%$tplData.type%}_{%$tplData['ShopStatInfo']['subcate'][$op_loop_count]['k']|escape:'url'%}&ie=utf-8" target="_blank">{%$tplData['ShopStatInfo']['subcate'][$op_loop_count]['name']%}</a></span> {%/if%} {%else%}{%break%} {%/if%}{%/for%} </div> <div class="op_minisearch_item_more op_minisearch_cata_more" style="display:none;"><a href="{%$tplData.url%}&lanmu=cate" target="_blank">更多>></a></div> {%else%} {%for $op_loop_count=0 to $loop_maxcount_1-1%} {%if $tplData['type']==$tplData['ShopStatInfo']['cate'][$op_loop_count]['k'] && $op_loop_count>0%} {%$firstCate=array_splice($tplData['ShopStatInfo']['cate'],$op_loop_count,1)%} {%$newCateLength=array_unshift($tplData['ShopStatInfo']['cate'],$firstCate[0])%} {%break%} {%/if%} {%/for%} <div class="op_minisearch_item" data-item="op_minisearch_cata"> {%for $op_loop_count=0 to $loop_maxcount_1-1%}{%if $op_loop_count<13%} {%if $tplData['ShopStatInfo']['cate'][$op_loop_count]['name']!=""%} <span><a href="{%$op_urlperfix[0]%}wd={%$tplData.filteredQuery|escape:'url'%}&cat={%$tplData['ShopStatInfo']['cate'][$op_loop_count]['k']|escape:'url'%}&ie=utf-8" target="_blank">{%$tplData['ShopStatInfo']['cate'][$op_loop_count]['name']%}</a></span> {%/if%} {%else%}{%break%} {%/if%}{%/for%} </div> <div class="op_minisearch_item_more op_minisearch_cata_more" style="display:none;"><a href="{%$tplData.url%}&lanmu=cate" target="_blank">更多>></a></div> {%/if%} </td> </tr> {%/if%} {%if $loop_maxcount_2>1%} <tr> <td style="white-space:nowrap;">品牌分类：</td> <td class="op_minisearch_td"> <div class="op_minisearch_item" data-item="op_minisearch_brand"> {%for $op_loop_count=0 to $loop_maxcount_2-1%}{%if $op_loop_count<13%} {%if $tplData['ShopStatInfo']['brand'][$op_loop_count]['ba']!=""%} <span><a href="{%$op_urlperfix[0]%}wd={%$tplData.filteredQuery|escape:'url'%}&shop_brand={%$tplData['ShopStatInfo']['brand'][$op_loop_count]['ba']|escape:'url'%}&ignl=brand&stat=brand&ie=utf-8" target="_blank">{%$tplData['ShopStatInfo']['brand'][$op_loop_count]['ba']%}</a></span> {%/if%} {%else%}{%break%} {%/if%}{%/for%} </div> <div class="op_minisearch_item_more op_minisearch_brand_more" style="display:none;"><a href="{%$tplData.url%}&lanmu=brand" target="_blank">更多>></a></div> </td> </tr> {%/if%} {%if $loop_maxcount_3>1%} <tr> <td style="white-space:nowrap;">商家选择：</td> <td class="op_minisearch_td"> <div class="op_minisearch_item" data-item="op_minisearch_store"> {%for $op_loop_count=0 to $loop_maxcount_3-1%}{%if $op_loop_count<13%} {%if $tplData['ShopStatInfo']['store'][$op_loop_count]['sa']!=""%} <span><a href="{%$op_urlperfix[0]%}wd={%$tplData.filteredQuery|escape:'url'%}&shop_store={%$tplData['ShopStatInfo']['store'][$op_loop_count]['sa']|escape:'url'%}&ignl=store&stat=store&ie=utf-8" target="_blank">{%$tplData['ShopStatInfo']['store'][$op_loop_count]['sa']%}{%*{%if $tplData['ShopStatInfo']['store'][$op_loop_count]['su']!=""%}（共{%$tplData['ShopStatInfo']['store'][$op_loop_count]['su']%}件）{%/if%} *%}</a></span> {%/if%} {%else%}{%break%} {%/if%}{%/for%} </div> <div class="op_minisearch_item_more op_minisearch_store_more" style="display:none;"><a href="{%$tplData.url%}&lanmu=store" target="_blank">更多>></a></div> </td> </tr> {%/if%} </table> <div class="op_minisearch_morelink"><a href="{%$tplData.url%}" target="_blank">查看全部结果>></a></div> {%/if%} </div>{%/block%}