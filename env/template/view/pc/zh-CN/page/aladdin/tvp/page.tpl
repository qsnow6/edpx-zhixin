{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap = false%}{%/block%}{%block name='content'%}<div class="op_tv"><table cellspacing="0"><tr><td style="padding-top:3px;padding-right:10px;"><a target="_blank" href="{%$tplData.icon1[0]['iconlink']|escape:'html'%}"><img class="op_tv_icon" src="{%$tplData.icon1[0]['iconaddress']|escape:'html'%}" /></a></td><td style="padding-top:3px;line-height:20px;">{%$loop_maxcount=count($tplData.dl)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%} {%$tplData.dl[$op_loop_count]['dt']|highlight:0%}{%$tplData.dl[$op_loop_count]['dd']|highlight:0%}<br>{%else%}{%break%}{%/if%}{%/for%}{%$tplData.dl2[0]['dt']|highlight:0%}{%if $tplData.dl2[0]['ddlink']%}<a target="_blank" href="{%$tplData.dl2[0]['ddlink']|escape:'html'%}">{%/if%}{%$tplData.dl2[0]['dd']|highlight:0%}{%if $tplData.dl2[0]['ddlink']%}</a>{%/if%}</td></tr></table>{%if $tplData.morelinkhead%}<div style="margin-bottom:3px;"><b>{%$tplData.morelinkhead|highlight:0%}</b>{%if $tplData.morelink[0]['linkcontent']%}（<a style="color:#77c;" target="_blank" href="{%$tplData.morelink[0]['linkurl']|escape:'html'%}">{%$tplData.morelink[0]['linkcontent']|escape:'html'%}</a>）{%/if%}</div>{%/if%} {%if $tplData.icon2[0]['iconaddress']%}<table cellspacing="0"><tr>{%$loop_maxcount=count($tplData.icon2)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<td class="op_tvtd"><a class="op_tva" target="_blank" href="{%$tplData.icon2[$op_loop_count]['iconlink']|escape:'html'%}"><img src="{%$tplData.icon2[$op_loop_count]['iconaddress']|escape:'html'%}" />{%if $tplData.icon2[$op_loop_count]['bg']%}<div></div>{%/if%}{%if $tplData.icon2[$op_loop_count]['iconduration']%}<span>{%$tplData.icon2[$op_loop_count]['iconduration']|escape:'html'%}</span>{%/if%}</a>{%if $tplData.icon2[$op_loop_count]['iconcontent']%}<a target="_blank" href="{%$tplData.icon2[$op_loop_count]['iconlink']|escape:'html'%}">{%$tplData.icon2[$op_loop_count]['iconcontent']|escape:'html'%}</a><br>{%/if%}{%if $tplData.icon2[$op_loop_count]['icondate']%}<a target="_blank" href="{%$tplData.icon2[$op_loop_count]['iconlink']|escape:'html'%}">{%$tplData.icon2[$op_loop_count]['icondate']|escape:'html'%}</a>{%if $tplData.icon2[$op_loop_count]['sup']%}<span class="op_tvsup">{%$tplData.icon2[$op_loop_count]['sup']|escape:'html'%}</span>{%/if%}{%/if%}</td><td class="op_tvs"></td>{%else%}{%break%}{%/if%}{%/for%}<td></td></tr></table>{%/if%}<div class="op_tvp_links" style="height:32px;line-height:32px;">{%if $tplData.linkhead%}<b>{%$tplData.linkhead|escape:'html'%}</b>{%/if%}{%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%} <a href="{%$tplData.link[$op_loop_count]['linkurl']|escape:'html'%}" target="_blank" style="margin-right:4px;">{%$tplData.link[$op_loop_count]['linkcontent']|escape:'html'%}</a>{%else%}{%break%}{%/if%}{%/for%}</div></div>{%/block%}