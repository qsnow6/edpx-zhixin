{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div><div class="c-abstract">{%$tplData.content1|highlight:0%}<br><span class="g">{%$tplData.showurl%}</span>{%if $tplData.baidusnap!=""%} - <a href="{%$tplData.baidusnap%}" target="_blank"  class="m">百度快照</a>{%/if%} <br></div></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}