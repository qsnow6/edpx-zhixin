{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}<style>.op-sport-game-img,.op-sport-game-img img{height:{%fe_fn_c_get_img_height col=6 rate=91/121%}px}</style><ul class="c-clearfix"> {%foreach array_slice($tplData.content,0,6) as $item%} <li class="op-sport-game-li {%if $item.sel=='true'%}op-sport-game-li-active{%/if%} {%if !$item@first%}c-gap-left{%/if%}"> <span>{%$item.name|limitlen:18|escape:html%}</span> </li> {%/foreach%}</ul>{%foreach array_slice($tplData.content,0,6) as $item%}<div class="op-sport-game-cont op-sport-game-main {%if $item.sel!='true'%}op-sport-game-hidden{%/if%}"> <div class="c-row"> {%foreach array_slice($item.tag,0,8) as $itemtag%} <div class="op-sport-game-tag c-span6 c-gap-top {%if $itemtag@index%4==3%}c-span-last{%/if%} {%if $itemtag@index>3%}op-sport-game-isshow{%/if%}"> <a href="{%$itemtag.link%}" target="_blank" class="op-sport-game-img c-gap-bottom-small"> <img class="c-img c-img6" {%if $itemtag@index<=3 && $item@first%}src="{%$itemtag.poster%}"{%else%}srctxt="{%$itemtag.poster%}" {%/if%}/> {%if $itemtag.ishot=='true'%} <span class="op-sport-game-hot">&nbsp;</span> {%elseif $itemtag.isnew=='true'%} <span class="op-sport-game-new">&nbsp;</span> {%/if%} </a> <p class="op-sport-game-center"><a href="{%$itemtag.link%}" target="_blank" title="{%$itemtag.name|escape:html%}">{%$itemtag.name|limitlen:18|highlight:0%}</a></p> <p class="c-gray op-sport-game-center" title="{%$itemtag.date|escape:html%}">{%$itemtag.date|limitlen:18|escape:html%}</p> </div> {%/foreach%} </div> {%if $item.morelink%} <p class="c-gap-top op-sport-game-link {%if $item.tag|@count>4%}op-sport-game-isshow{%/if%}"> <a href="{%$item.morelink[0].link%}" target="_blank">{%$item.morelink[0].txt|limitlen:60|highlight:0%}</a> </p> {%/if%} </div>{%/foreach%}<p class="c-gap-top op-sport-game-more op-sport-game-center {%if $tplData.content[0].tag|count<=4%}op-sport-game-hidden{%/if%}">展开更多<i class="c-gap-left-small c-icon c-icon-chevron-bottom"></i></p><p class="c-gap-top op-sport-game-less op-sport-game-center op-sport-game-hidden">收起<i class="c-gap-left-small c-icon c-icon-chevron-top"></i></p>{%/block%}