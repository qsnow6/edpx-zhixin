{%extends 'c_right_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.narrow = true%}{%/block%}{%block name='content'%}<style>.opr_tabs_title{font-size:1.07em;font-weight:bold}.c-tabs-nav .opr_tabs_li{padding:3px 14px}</style><p class="opr_tabs_title c-gap-bottom-small">{%$tplData.title|escape%}</p><div class="c-tabs"> <ul class="c-tabs-nav"> {%foreach $tplData.tabs as $item%} {%if !$item@first%}<li class="c-tabs-nav-sep"></li>{%/if%} <li class="c-tabs-nav-li opr_tabs_li {%if $item@first%}c-tabs-nav-selected{%/if%}">{%$item.tabtitle|limitlen:12|escape%}</li> {%/foreach%} </ul> {%foreach $tplData.tabs as $item%} <div class="c-tabs-content c-gap-top-small opr_tabs_content" {%if !$item@first%}style="display:none"{%/if%}> <p>{%$item.content%}</p> <p>{%if $item.jumplink%}<a href="{%$item.jumplink%}" target="_blank"><img {%if $item@first%}src{%else%}link{%/if%}="{%$item.img%}"/></a>{%else%}<img src="{%$item.img%}"/>{%/if%}</p> </div> {%/foreach%}</div>{%/block%}