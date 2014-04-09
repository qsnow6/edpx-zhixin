{%extends 'c_right_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.narrow = true%}{%/block%}{%block name='content'%}<p class="opr_article_title">{%$tplData.title|escape%}</p><ul class="opr_article_list"> {%foreach array_slice($tplData.list, 0, 5) as $item%} <li> <span class="opr_article_list_date">{%$item.time|limitlen:10|escape%}</span><span class="c-gap-left-small c-gap-right-small">-</span><a href="{%$item.url%}" target="_blank">{%$item.text|limitlen:30|escape%}</a> </li> {%/foreach%}</ul>{%if $tplData.from[0].text && $tplData.from[0].url%}<p>来自<a target="_blank" href="{%$tplData.from[0].url%}">{%$tplData.from[0].text|escape%}&gt;&gt;</a></p>{%/if%}{%/block%}