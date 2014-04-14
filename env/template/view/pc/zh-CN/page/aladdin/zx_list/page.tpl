{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='foot'%}{%/block%}{%block name='data_modifier'%} {%if $tplData.topic[0].type == '3'%} {%$ViewType = 'D'%} {%elseif $tplData.topic[0].type == '2'%} {%$ViewType = 'C'%} {%elseif $tplData.topic[0].type == '1'%} {%$ViewType = 'B'%} {%else%} {%$ViewType = 'A'%} {%/if%}{%/block%}{%block name='content'%}{%if $ViewType == 'A'%} <p class="op_zx_list_A_title">{%$tplData.topic[0].name|escape%}</p>{%elseif $ViewType == 'C'%} <p class="op_zx_list_A_title"><a href='{%build_search_url params="wd={%$tplData.topic[0].name%}"%}&rsv_dl=0_left_zx_list_{%$extData.resourceid%}' target="_blank">{%$tplData.topic[0].name|escape%}<i class="c-icon c-icon-chevron-top"></i></a></p>{%else%} <h3 class="t"><a href='{%build_search_url params="wd={%$tplData.topic[0].name%}"%}&rsv_dl=0_left_zx_list_{%$extData.resourceid%}' target="_blank">{%$tplData.topic[0].name|highlight:0%}_相关结果</a></h3>{%/if%}<div {%if $ViewType != 'D'%}class="c-offset {%if $ViewType == 'A' || $ViewType == 'C'%}op_zx_list_A_border{%/if%}"{%/if%}>{%if $ViewType == 'A' || $ViewType == 'B' || $ViewType == 'C'%} {%if $ViewType == 'A' || $ViewType == 'C'%} {%fe_fn_c_title_prefix%}{%fe_fn_c_title%}{%fe_fn_c_title_suffix%} {%elseif $ViewType == 'B'%} <p class="c-gap-bottom-small">{%fe_fn_c_title%}</p> {%/if%} <div class="c-row"> {%if $tplData.summary[0].picurl%} <div class="c-span6"><a href="{%$tplData.url%}" target="_blank"><img class="c-img c-img6" src="{%$tplData.summary[0].picurl%}"></a></div> {%/if%} <div class="c-span-last"> <p>{%$tplData.summary[0].content|limitlen:140|highlight:0%}</p> <p>{%if $tplData.summary[0].source%}<span class="op_zx_list_source">{%$tplData.summary[0].source|limitlen:30|escape%}</span>{%/if%}{%if $tplData.summary[0].date%}<span class="op_zx_list_date c-gap-left-small">{%$tplData.summary[0].date|escape%}</span>{%/if%}</p> </div> </div>{%/if%}{%if $tplData.sublink%} {%if $ViewType == 'D'%} <table class="c-table c-gap-bottom-small op_zx_list_D_sublink"> {%foreach array_slice($tplData.sublink, 0, 3) as $item%} <tr> <td class="op_zx_list_f14"><a href="{%$item.url%}" target="_blank">{%$item.title|limitlen:46|highlight:0%}</a></td> <td>{%if $tplData.summary[0].source%}{%$item.source|limitlen:20|escape%}{%else%}&nbsp;{%/if%}</td> <td>{%if $tplData.summary[0].date%}{%$item.date|escape%}{%else%}&nbsp;{%/if%}</td> </tr> {%/foreach%} </table> {%else%} <div class="c-row"> {%$titleLimitlen = 50%} {%$itemNumber = ($ViewType == 'C') ? 2 : 3%} {%foreach array_slice($tplData.sublink, 0, $itemNumber) as $item%} <p> {%if $tplData.summary[0].date%}<span class="op_zx_list_date" style="float:right;">{%$item.date|escape%}</span>{%/if%}<a href="{%$item.url%}" target="_blank">{%$item.title|limitlen:$titleLimitlen|highlight:0%}</a>{%if $tplData.summary[0].source%}<span class="op_zx_list_source c-gap-left">{%$item.source|limitlen:20|escape%}</span>{%/if%} </p> {%/foreach%} </div> {%/if%}{%/if%}{%if $ViewType == 'A' || $ViewType == 'D'%} <p class="op_zx_list_more"><a href='{%build_search_url params="wd={%$tplData.topic[0].name%}"%}&rsv_dl=0_left_zx_list_{%$extData.resourceid%}' target="_blank">查看更多“<em>{%$tplData.topic[0].name|escape%}</em>”的结果&gt;&gt;</a></p>{%/if%}</div>{%/block%}