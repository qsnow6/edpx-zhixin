{%extends 'base.tpl'%} {%block name='content'%}<style >#op_stock_content{margin-top:3px;font-size:13px}#op_stock_content .op_stock_title{text-align:left;padding-left:40px}#op_stock_content .op_stock_e{white-space:nowrap;margin-bottom:4px}#op_stock_content td{font-size:13px;white-space:nowrap}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div id="op_stock_content"><table cellspacing="0" cellpadding="0"><tr><td style="width:250px" valign="top"><div><div class="op_stock_title"><span style="margin-right:10px">{%$tplData.pic[0]['title']%}</span>{%$loop_maxcount=count($tplData.picLink)%}{%for $op_loop_count=0 to 2%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.picLink[$op_loop_count]['title']!=""%}<a href="{%$tplData.picLink[$op_loop_count]['url']%}" target="_blank">{%$tplData.picLink[$op_loop_count]['title']%}</a><b style="padding-right:15px"></b>{%/if%}{%else%}{%break%}{%/if%}{%/for%}</div><div><a href="{%$tplData.url%}" target="_blank"><img src="{%$tplData.pic[0]['imgURL']%}" width="250px" height="160px"/></a></div></div></td><td style="padding:8px 0 0 5px" valign="top"><div class="op_stock_e"><span style="font-size:1.4em;font-weight:bold;{%if $tplData.e[0]['e1c']!=""%}color:{%$tplData.e[0]['e1c']%}{%/if%}">{%$tplData.e[0]['e1']%}</span><span style="font-size:1.1em;font-weight:bold;{%if $tplData.e[0]['e2c']!=""%}color:{%$tplData.e[0]['e2c']%}{%/if%}">{%$tplData.e[0]['e2']%}</span><span{%if $tplData.e[0]['e3c']!=""%} style="color:{%$tplData.e[0]['e3c']%}"{%/if%}>{%$tplData.e[0]['e3']%}</span>&nbsp;<span style="color:#666">{%$tplData.e[0]['datetime']%}</span></div><table cellspacing="0" cellpadding="0">{%$loop_maxcount=count($tplData.d)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}<tr><td valign="top"><span>{%$tplData.d[$op_loop_count]['dk1']%}</span></td><td valign="top" style="width:85px;padding-bottom:4px"><span{%if $tplData.d[$op_loop_count]['dc1']!=""%} style="color:{%$tplData.d[$op_loop_count]['dc1']%}"{%/if%}>{%$tplData.d[$op_loop_count]['dv1']%}</span></td><td valign="top"><span>{%$tplData.d[$op_loop_count]['dk2']%}</span></td><td valign="top"><span{%if $tplData.d[$op_loop_count]['dc2']!=""%} style="color:{%$tplData.d[$op_loop_count]['dc2']%}"{%/if%}>{%$tplData.d[$op_loop_count]['dv2']%}</span></td></tr>{%else%}{%break%}{%/if%}{%/for%}</table><div style="margin-top:2px">{%$loop_maxcount=count($tplData.de)%}{%for $op_loop_count=0 to 1%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.de[$op_loop_count]['txt']!=""%}<div style="padding-bottom:4px"><a href="{%$tplData.de[$op_loop_count]['url']%}" target="_blank">{%$tplData.de[$op_loop_count]['txt']%}</a><b style="padding-right:12px"></b><span{%if $tplData.de[$op_loop_count]['e1c']!=""%} style="color:{%$tplData.de[$op_loop_count]['e1c']%}"{%/if%}>{%$tplData.de[$op_loop_count]['e1']%}</span><span{%if $tplData.de[$op_loop_count]['e1c']!=""%} style="color:{%$tplData.de[$op_loop_count]['e2c']%}"{%/if%}>{%$tplData.de[$op_loop_count]['e2']%}</span></div>{%/if%}{%else%}{%break%}{%/if%}{%/for%}</div></td></tr></table><div style="margin-top:2px"><div>{%$loop_maxcount=count($tplData.refer)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.refer[$op_loop_count]['title']!=""%}<div style="padding-bottom:5px"><span style="color:#666">{%$tplData.refer[$op_loop_count]['title']%}</span><a href="{%$tplData.refer[$op_loop_count]['url']%}" target="_blank">{%$tplData.refer[$op_loop_count]['txt']|limitlen:45%}</a><span style="color:#666">{%$tplData.refer[$op_loop_count]['date']%}</span></div>{%/if%}{%else%}{%break%}{%/if%}{%/for%}</div><div>{%$loop_maxcount=count($tplData.link)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.link[$op_loop_count]['txt']!=""%}<a href="{%$tplData.link[$op_loop_count]['url']%}" target="_blank">{%$tplData.link[$op_loop_count]['txt']%}</a><b style="padding-right:8px"></b>{%/if%}{%else%}{%break%}{%/if%}{%/for%}</div></div></div><div><span><span style="color:#008000;font-size:13px">{%$tplData.showurl%}{%if $tplData.date!=""%} {%$tplData.date%}{%/if%}</span>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP">{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</span>{%fe_fn_likeshare%}</div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}