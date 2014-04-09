{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css">.op-zx-tour-viewport-container{color:#333;overflow:hidden}.op-zx-tour-viewport-title-container{margin-bottom:10px;font-weight:normal}.op-zx-tour-viewport-left{float:left;width:306px;height:188px;position:relative;border:1px solid #ccc}.op-zx-tour-viewport-left a{text-decoration:none}.op-zx-tour-viewport-left img{width:306px;height:188px;border:0;display:block}.op-zx-tour-viewport-right{margin-left:318px}.op-zx-tour-viewport-right a{text-decoration:none}.op-zx-tour-viewport{%*i*%}-right div{width:152px;height:88px;float:left;position:relative;border:1px solid #ccc}.op-zx-tour-viewport-right img{width:152px;height:88px;border:0;display:block}.op-zx-tour-viewport-img-bg{width:152px;height:24px;line-height:24px;position:absolute;left:0;bottom:0;background:#000;opacity:.65;filter:alpha(opacity=65);color:#fff}.op-zx-tour-viewport-img-title{width:152px;height:24px;line-height:24px;position:absolute;left:0;bottom:0;color:#fff;padding-left:8px}.op-zx-tour-viewport-primaryimg-bg,{%*i*%}.op-zx-tour-viewport-primaryimg-title{width:306px}.op-zx-tour-viewport-img-container{margin-bottom:10px}</style><div class="op-zx-tour-viewport-container c-abstract-size"> <div class="op-zx-tour-viewport-title-container c-title-size"> <a class="op-zx-tour-viewport-title" href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a> </div> <div class="op-zx-tour-viewport-img-container"> <div class="op-zx-tour-viewport-left"> <a href="{%$tplData.primaryimg[0]['url']%}" target="_blank"> <img src="{%$tplData.primaryimg[0]['src']%}"> <span class="op-zx-tour-viewport-img-bg op-zx-tour-viewport-primaryimg-bg"></span> <span class="op-zx-tour-viewport-img-title op-zx-tour-viewport-primaryimg-title">{%$tplData.primaryimg[0]['title']|limitlen:32|escape%}</span> </a> </div> <div class="op-zx-tour-viewport-right"> {%foreach $tplData.img as $item%} <div style="{%if $item@index==0%}margin-right:10px{%elseif $item@index==2%}margin:10px 10px 0 0{%elseif $item@index==3%}margin-top:10px{%/if%}"> <a href="{%$item['url']%}" target="_blank"> <img src="{%$item['src']%}"> <span class="op-zx-tour-viewport-img-bg"></span> <span class="op-zx-tour-viewport-img-title">{%$item['title']|limitlen:18|escape%}</span> </a> </div> {%/foreach%} </div> <div style="clear:both"></div> </div> <a href="{%$tplData.total[0]['url']%}" target="_blank">{%$tplData.total[0]['title']|escape%}</a></div>{%/block%}