{%extends 'right_base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<div class="opr-linklist"><div class="opr-linklist-subtitle"> <span class="opr-linklist-subtitle-tip" title="{%$tplData.title|escape:'html'%}">{%$tplData.title|escape:'html'|limitlen:40%}</span> </div> {%if $tplData.press%} {%$press = $tplData.press[0]%} <div class="opr-linklist-press"> <b>{%$press.text|escape:'html'%}</b>{%if $press.moretext && $press.params%}<span>（<a href="{%build_search_url params="`$press.params`"%}" title="{%$press.moretext|escape:'html'%}" target="_blank">{%$press.moretext|escape:'html'%}</a>）</span>{%/if%} </div> {%/if%} <div class="opr-linklist-list"> {%foreach $tplData.recommend as $item%} <div class="opr-linklist-info{%if $item@index is odd%} opr-linklist-even{%/if%}"> <span><a target="_blank" href="{%build_search_url params="`$item.param`"%}" title="{%$item.title|escape:'html'%}">{%$item.title|escape:'html'|limitlen:22%}</a></span>{%if $item.red%}<span class="opr-linklist-red">{%$item.red%}</span>{%/if%}{%if $item.gray%}<span class="opr-linklist-gray">{%$item.gray%}</span>{%/if%} </div> {%/foreach%} </div> <div style="clear:both"></div></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}