{%extends 'c_right_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.narrow=true%}{%/block%}{%block name='content'%}<div class="opr-hint"> {%if $tplData.title%} <div class="opr-hint-title"> {%$tplData.title%} {%if $tplData.subtitle%}<span>{%$tplData.subtitle%}</span>{%/if%} </div> {%/if%} {%if $tplData.paragraph%} {%foreach $tplData.paragraph as $item%} <p>{%$item.content%}</p> {%/foreach%} {%/if%} {%if $tplData.link%} {%foreach $tplData.link as $item%} <p><a href="{%$item.url%}" target="_blank">{%$item.text%}</a></p> {%/foreach%} {%/if%}</div>{%/block%}