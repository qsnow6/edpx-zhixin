{%extends 'c_right_base.tpl'%} {%block name='content'%}<style>.opr-favorvideo-img{height:{%fe_fn_c_get_img_height col=4 rate=4/3 border="1" %}px;overflow:hidden}</style><div> {%if $tplData.cardtype%} <div class="cr-title c-gap-bottom"> {%if $tplData.more[0]['linker'] && $tplData.list|count>11%} <a class="cr-title-sub" href="{%build_search_url params="`$tplData.more[0]['linker']`"%}" target="_blank">{%$tplData.more[0]['label']%}</a> {%/if%} <span title="{%$tplData.subtitle%}">{%$tplData.subtitle|limitlen:52%}</span> </div> <div class="c-row" {%if $tplData.cardid%}data-click="{'rsv_re_cardid':'{%$tplData.cardid%}'}"{%/if%}> {%foreach array_slice($tplData.list, 0, 4) as $item%} <div class="c-span4{%if $item@index ==3%} c-span-last opr-favorvideo-aimgspec{%/if%}{%if $item@index ==2%} c-span-last-s{%/if%}" data-click="{'rsv_re_ename':'{%$item.name%}'{%if $item.uri%},'rsv_re_uri':'{%$item.uri%}'{%/if%}}"> <a target="_blank" title="{%$item.name%}" href="{%build_search_url params="`$item.params`"%}" class="opr-favorvideo-imga"> <img {%$item.src|img_base64_render%} class="c-img c-img4 opr-favorvideo-img" /> <span></span> </a> {%$len = mb_strwidth($item.name)%} {%$len = 20%} <span class="opr-favorvideo-name c-gap-top-small"><a target="_blank" href="{%build_search_url params="`$item.params`"%}" title="{%$item.name%}">{%$item.name|limitlen:$len%}</a></span> <span class="opr-favorvideo-type">{%$item.type|limitlen:10%}</span> </div> {%/foreach%} </div> {%else%} <div class="cr-title c-gap-bottom"> {%if $tplData.favorvideoTitle[0]['link'] && $tplData.favorvideo|count>11%} <a class="cr-title-sub" href="{%build_search_url params="`$tplData.favorvideoTitle[0]['link']`"%}" target="_blank">{%$tplData.favorvideoTitle[0]['moretip']%}</a> {%/if%} <span title="{%$tplData.subtitle%}">{%$tplData.favorvideoTitle[0].title|limitlen:52%}</span> </div> <div class="c-row"> {%foreach array_slice($tplData.favorvideo, 0, 4) as $item%} <div class="c-span4{%if $item@index ==3%} c-span-last opr-favorvideo-aimgspec{%/if%}{%if $item@index ==2%} c-span-last-s{%/if%}  opr-favorvideo1-aimg"> <a target="_blank" title="{%$item.name%}" href="{%build_search_url params="`$item.link`"%}" class="opr-favorvideo-imga"> <img src="{%$item.img%}" class="c-img c-img4" height="100" /> <span></span> </a> {%$len = mb_strwidth($item.name)%} {%$len = 20%} <span class="opr-favorvideo-name c-gap-top-small"><a target="_blank" href="{%build_search_url params="`$item.link`"%}" title="{%$item.name%}">{%$item.name|limitlen:$len%}</a></span> <span class="opr-favorvideo-type">{%$item.type|limitlen:10%}</span> </div> {%/foreach%} </div> {%/if%}</div>{%/block%}