{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $tplData.content1%}{%$extData.feData.hasTitleGap=false%}{%/if%}{%if !$tplData.link%}{%$extData.feData.hasShowURLGap=true%}{%/if%}{%/block%}{%block name='content'%} {%if $tplData.content1%} <div class="c-gap-bottom-small"> {%$tplData.content1|highlight:0%} </div> {%/if%} <table cellspacing="0" cellpadding="0" class="c-table"> {%if $tplData.form[0]['col0']%} <tr class="c-table-hihead"> <th>{%$tplData.form[0]['col0']|escape:'html'%}</th> <th>{%$tplData.form[0]['col1']|escape:'html'%}</th> <th>{%$tplData.form[0]['col2']|escape:'html'%}</th> </tr> {%/if%} {%foreach $tplData.form as $escaped_item%} {%if !$escaped_item@first%} <tr> <td> {%if $escaped_item['col0link']%}<a target="_blank" href="{%$escaped_item['col0link']%}">{%/if%}{%$escaped_item['col0']|highlight:0%}{%if $escaped_item['col0link']%}</a>{%/if%} </td> <td> {%if $escaped_item['col1']%} {%if $escaped_item['col1link']%}<a target="_blank" href="{%$escaped_item['col1link']%}">{%/if%}{%$escaped_item['col1']|highlight:0%}{%if $escaped_item['col1link']%}</a>{%/if%} {%/if%} </td> <td> {%if $escaped_item['col2']%} {%if $escaped_item['col2link']%}<a target="_blank" href="{%$escaped_item['col2link']%}">{%/if%}{%$escaped_item['col2']|highlight:0%}{%if $escaped_item['col2link']%}</a>{%/if%} {%/if%} </td> </tr> {%/if%} {%/foreach%} </table> {%if $tplData.link[0]['linkurl']%} <div class="c-gap-top"> <a href="{%$tplData.link[0]['linkurl']%}" target="_blank">{%$tplData.link[0]['linkcontent']|escape:'html'%}<span style="font-family:simsun">&gt;&gt;</span> </a> </div>{%/if%}{%/block%}