{%extends 'c_base.tpl'%} {%block name="data_modifier"%} {%$extData.feData.hasTitleGap = false%}{%/block%}{%block name='content'%}<div> {%if $tplData.subitem1!=""%}<div class="op_gamequest_subitem">{%$tplData.subitem1|escape:'html'%}</div>{%/if%} {%if $tplData.content1!=""%}{%$tplData.content1|escape:'html'%}{%/if%} {%if $tplData.content2!=""%}&nbsp;&nbsp;&nbsp;{%$tplData.content2|escape:'html'%}{%/if%} {%if $tplData.content3!=""%} <div> <div class="op_gamequest_ll">{%$tplData.content3|escape:'html'%}</div> <div class="op_gamequest_rl"> {%foreach $tplData.icon as $escaped_icon%} <div class="op_gamequest_icon"> <span class="op_gamequest_text" style="background:url({%$escaped_icon['iconaddress']|escape:'html'%}) no-repeat 0 center;"><a href="{%$escaped_icon['iconlink']%}" target="_blank" class="op_gamequest_dl">{%$escaped_icon['icontext']|limitlen:24|escape:'html'%}</a></span> <span>{%$escaped_icon['iconamount']|escape:'html'%}</span> </div> {%/foreach%} </div> </div> {%/if%} <div style="clear:both;"></div> <div class="op_gamequest_links"> {%foreach $tplData.link as $escaped_link%} <a href="{%$escaped_link['linkurl']%}" target="_blank" class="op_gamequest_dl">{%$escaped_link['linkcontent']|escape:'html'%}</a>&nbsp;&nbsp; {%/foreach%} </div></div>{%/block%}