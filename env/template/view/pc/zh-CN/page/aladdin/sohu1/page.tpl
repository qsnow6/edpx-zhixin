{%extends 'base.tpl'%} {%block name='content'%}<style >.op_sohu1_t td{vertical-align:top;text-align:left;font-size:1em}.op_sohu1_link a,.op_sohu1_link span{white-space:nowrap}.op_sohu1_url,.op_sohu1_url a{color:#666}.op_sohu1_url span{color:#008000}.op_sohu1_t pre,.op_sohu1_t b{font-family:arial;padding:0;margin:0;font-size:1em}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div style="width:100%"><table cellspacing="0" cellpadding="0" class="op_sohu1_t"><tr><td style="padding-top:5px;"><div style="width:78px;height:78px;overflow:hidden;border:1px solid #7493e5;"><table cellspacing="0" style="width:100%;height:100%;"><tr><td style="vertical-align:middle;text-align:center;">{%if $tplData.icon[0]['iconlink']!=""%}<a target="_blank" href="{%$tplData.icon[0]['iconlink']%}">{%/if%}<img border="0" src="{%$tplData.icon[0]['iconaddress']%}">{%if $tplData.icon[0]['iconlink']!=""%}</a>{%/if%}</td></tr></table></div></td><td id="op_sohu1_l" style="padding:3px 0 0 8px;"><font size="-1"><b>{%$tplData.content1%}</b>{%if $tplData.content2!=""%}<pre>{%$tplData.content2|highlight:0%}</pre>{%/if%}{%if $tplData.content3!=""%}<pre>{%$tplData.content3|highlight:0%}</pre>{%/if%}{%if $tplData.link1[0]['linkurl']!=""%}<div class="op_sohu1_link"><a target="_blank" href="{%$tplData.link1[0]['linkurl']%}">{%$tplData.link1[0]['linkcontent']%}</a>{%$loop_maxcount=count($tplData.link1)%}{%for $op_loop_count=1 to 2%}{%if $op_loop_count<$loop_maxcount%} - <a target="_blank" href="{%$tplData.link1[$op_loop_count]['linkurl']%}">{%$tplData.link1[$op_loop_count]['linkcontent']|highlight:0%}</a>{%else%}{%break%}{%/if%}{%/for%}{%if $tplData.gap!=""%}<span>{%$tplData.gap%}</span>{%/if%}{%$loop_maxcount=count($tplData.link2)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%} - <a target="_blank" href="{%$tplData.link2[$op_loop_count]['linkurl']%}">{%$tplData.link2[$op_loop_count]['linkcontent']|highlight:0%}</a>{%else%}{%break%}{%/if%}{%/for%}</div>{%/if%}<div class="op_sohu1_url"><font size=-1><font color=#008000>{%$tplData.showurl%} {%if $tplData.date!=""%} {%$tplData.date%} {%/if%}</font>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</font></font></div></font></td></tr></table></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}