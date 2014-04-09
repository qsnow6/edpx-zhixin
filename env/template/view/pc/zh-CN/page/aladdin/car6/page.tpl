{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$tplData.op_car6_tab_count=count($tplData.tab)%}{%if !$tplData.shopTh[0].map%}{%$tplData.shopTh[0].map='地图'%}{%/if%}{%/block%}{%block name='content'%}<div class="c-tabs op_car6_tabs"> {%if $tplData.op_car6_tab_count>1%} <ul class="c-tabs-nav OP_LOG_BTN"> {%foreach $tplData.tab as $item%} {%if $item%}<li class="c-tabs-nav-li{%if $tplData.curtab==$item.id%} c-tabs-nav-selected{%/if%}">{%$item.name|escape%}</li>{%/if%} {%if !$item@last%}<li class="c-tabs-nav-sep"{%if $tplData.curtab==$item.id || $tplData.curtab==$tplData.tab[$item@iteration].id%} style="visibility:hidden;"{%/if%}></li>{%/if%} {%/foreach%} </ul> {%/if%} <div class="c-tabs-content"> <table cellspacing="0" cellpadding="0" class="c-table c-gap-bottom"> <tr {%if $tplData.op_car6_tab_count>1%}class="c-table-nohihead"{%/if%}> <th class="op_car6_nowrap">{%$tplData.shopTh[0]['name']|escape:'html'%}</th><th class="op_car6_nowrap">{%$tplData.shopTh[0]['tel']|escape:'html'%}</th><th>{%$tplData.shopTh[0]['address']|escape:'html'%}</th><th class="op_car6_nowrap op_car6_t_last">{%$tplData.shopTh[0].map|escape%}</th> </tr> {%foreach $tplData.shopTd as $item%} <tr class="op_car6_c_{%$item['id']|escape:'html'%}" {%if $item.id!=$tplData.curtab%}style="display:none;"{%/if%}> <td class="op_car6_nowrap"><a href="{%$item['nameLink']%}" target="_blank">{%$item['name']|escape:'html'%}</a></td><td class="op_car6_nowrap">{%$item['tel']|escape:'html'%}</td><td>{%$item['address']|escape:'html'%}</td><td class="op_car6_nowrap op_car6_t_last">{%if $item.map%}<a href="{%$item['mapLink']%}" target="_blank"><i class="c-icon c-icon-location-blue"></i>{%$item['map']|escape:'html'%}</a>{%/if%}</td> </tr> {%/foreach%} </table> {%if $tplData.moreModel || $tplData.txtlink%} <div class="c-clearfix op_car6_morelink"> <div> {%foreach $tplData.txtlink as $item%} <a href="{%$item.url%}" class="c-gap-left op_car6_c_{%$item.id%}" target="_blank" {%if $item.id!=$tplData.curtab%}style="display:none;"{%/if%}>{%$item.name%}</a> {%/foreach%} </div> {%foreach $tplData.moreModel as $item%}<a class="op_car6_c_{%$item.id%}" target="_blank" href="{%$item.linkUrl%}" {%if $item.id!=$tplData.curtab%}style="display:none;"{%/if%}>{%$item.txt|escape%}</a>{%/foreach%} </div> {%/if%} </div></div><script>A.setup({tab_count:'{%$tplData.op_car6_tab_count%}'});</script>{%/block%}