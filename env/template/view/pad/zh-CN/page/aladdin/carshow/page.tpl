{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='content'%}<style  data-merge>.op_carshow_info{margin-top:8px;width:100%;font-size:1em}.op_carshow_info td{line-height:22px}.op_carshow_info td a{margin-right:6px}.op_carshow_info td.op_carshow_menglink{padding-top:5px}.op_carshow_info td.op_carshow_menglink a{margin-right:0}.op_carshow_info td.op_carshow_old{white-space:nowrap}.op_carshow_price{color:#c00;font-weight:bold}.op_carshow_img{width:132px}.op_carshow_img .img_wrap,.op_carshow_mengimg .img_wrap{position:relative;height:90px}.op_carshow_mengimg .{%*i*%}img_wrap{position:relative;height:120px}.op_carshow_img img{width:120px;height:90px}.op_carshow_mengimg img{width:120px;height:120px}.op_carshow_txt{line-height:28px;overflow:hidden}.op_carshow_txt span{margin-right:25px}.op_carshow_color .op_carshow_white{width:12px;height:12px;border:1px solid #dcdcdc}.op_carshow_link2{font-size:1.077em;margin-top:8px}.op_carshow_link3{padding-left:14px;margin-top:4px;line-height:20px}.op_carshow_onsale_icon{margin-left:-9px;width:17px;height:21px;vertical-ali{%*i*%}gn:middle;display:inline-block}.op_carshow_map{color:#7976c9}</style>{%fe_fn_c_title_prefix%}{%fe_fn_c_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%if $tplData.showgw%}<span class="icon-gw op-carshow-gw">官网</span>{%/if%}{%fe_fn_c_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<table cellspacing="0" cellpadding="0" class="op_carshow_info"><tr> <td {%if $tplData.meng%}rowspan="2"{%else%}rowspan="4"{%/if%} class="op_carshow_img{%if $tplData.meng%} op_carshow_mengimg{%/if%}"><div class="img_wrap"><a href="{%$tplData.icon[0]['link']%}" target="_blank"><img src="{%$tplData.icon[0]['url']%}" /></a></div></td> <td> {%if $tplData.meng%} {%build_search_url_limit_ubburl content={%$tplData.meng|escape|highlight:0%}%} {%else%} {%$tplData.info1[0]['name']|escape:'html'%}<span>{%$tplData.info1[0]['value']|limitlen:60|escape:'html'%}</span> {%/if%} </td></tr> {%if $tplData.menglink%} <tr> <td class="op_carshow_menglink"> {%foreach $tplData.menglink as $item%}{%build_search_url_limit_ubburl content=$item.title%}{%if !$item@last%}&nbsp;-&nbsp;{%/if%}{%/foreach%} </td> </tr> {%/if%} {%if $tplData.meng%} {%else%}<tr><td>{%$tplData.info2[0]['name']|escape:'html'%}{%$tplData.info2[0]['value']|limitlen:40|escape:'html'%}{%if $tplData.map%}<a href="{%$tplData.map[0].url%}" target="_blank" class="op_carshow_map">{%$tplData.map[0].value|escape:'html'%}</a>{%/if%}</td></tr><tr><td class="op_carshow_old">{%$tplData.info3[0]['name']|escape:'html'%}{%$tplData.info3[0]['value']|escape:'html'%}</td></tr><tr><td> {%$tplData.info4[0]['name']|escape:'html'%}{%if $tplData.link1[0]['name']!=""%} {%foreach array_slice($tplData.link1, 0, 6) as $item%} <span><a href="{%$item['url']%}" target="_blank">{%$item['name']|escape:'html'%}</a></span> {%/foreach%}{%/if%} {%if $tplData.icon[1]%}<a class="op_carshow_onsale_icon" style="background:url({%$tplData.icon[1]['url']|escape:'html'%})  no-repeat; margin-right:0;" href="{%$tplData.icon[1]['link']%}" target="_blank"></a>{%/if%} </td></tr> {%/if%}</table><div class="op_carshow_link2"><a href="{%$tplData.link2[0]['url']%}" target="_blank">{%$tplData.link2[0]['name']|escape:'html'|highlight:0%}</a></div><div class="op_carshow_link3">{%foreach array_slice($tplData.link3, 0, 6) as $item%}<p><a href="{%$item['url']%}" target="_blank">{%$item['name']|highlight:0%}</a></p>{%/foreach%}</div> <script >
   A.setup({'srcid':'{%$extData.resourceid%}','mengbg':'{%$tplData.mengbg%}'});
</script><script  data-merge>A.init(function(){var T = A.baidu, _this = this;parentBorder = _this.container.parentNode;if(_this.data.mengbg && $(parentBorder).hasClass("c-border")){var oCarurl = _this.data.mengbg,oCarbg='url(' + oCarurl+ ') no-repeat';parentBorder.style.background = oCarbg;parentBorder.style.paddingTop = '28px';}});</script>{%/block%}