{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $tplData.content1%}{%$extData.feData.hasTitleGap=false%}{%/if%}{%/block%}{%block name='content'%}<style data-merge>.op_text02_aladdinlinks{margin-bottom:.2em;margin-top:.2em}.op_text02_aladdinlinks td{word-break:break-all;word-wrap:break-word;border:0;cellpadding:0}.op_text02_aladdinlinks .td1{padding-right:3.5em}.op_text02_table td.f{width:100%}.op_text02{line-height:1.54}</style>{%if $tplData.content1%} {%$tplData.content1|highlight:0%}<br> {%/if%}{%if $tplData.link[0]['linkurl']%}<table border="0" cellpadding="0" cellspacing="0" class="op_text02_aladdinlinks"><tr><td class="td1"><a target="_blank" href="{%$tplData.link[0]['linkurl']|escape:'html'%}">{%$tplData.link[0]['linkcontent']|highlight:0%}</a></td>{%if $tplData.link[1]['linkurl']%}<td><a target="_blank" href="{%$tplData.link[1]['linkurl']|escape:'html'%}">{%$tplData.link[1]['linkcontent']|highlight:0%}</a></td>{%/if%}</tr> {%if $tplData.link[2]['linkurl']%}<tr><td class="td1"><a target="_blank" href="{%$tplData.link[2]['linkurl']|escape:'html'%}">{%$tplData.link[2]['linkcontent']|highlight:0%}</a></td>{%if $tplData.link[3]['linkurl']%}<td><a target="_blank" href="{%$tplData.link[3]['linkurl']|escape:'html'%}">{%$tplData.link[3]['linkcontent']|highlight:0%}</a></td>{%/if%}</tr> {%/if%} {%if $tplData.link[4]['linkurl']%}<tr><td class="td1"><a target="_blank" href="{%$tplData.link[4]['linkurl']|escape:'html'%}">{%$tplData.link[4]['linkcontent']|highlight:0%}</a></td>{%if $tplData.link[5]['linkurl']%}<td><a target="_blank" href="{%$tplData.link[5]['linkurl']|escape:'html'%}">{%$tplData.link[5]['linkcontent']|highlight:0%}</a></td>{%/if%}</tr>{%/if%} </table>{%/if%}{%/block%}