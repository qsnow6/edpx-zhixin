{%extends 'base.tpl'%} {%block name='content'%}<style >.op_train_tb{border-left:0;border-right:0;width:100%;margin-top:4px;}.op_train_tb th{padding-left:8px;text-align:left;background:#F1F4FC;font-weight:normal;height:25px;font-size:13px;border-top:#E5ECF9 1px solid;color:#666;}.op_train_tb td{padding-left:8px;height:25px;font-size:13px;border-bottom:#EEE 1px solid;color:#000;}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div style="width:100%"> <table cellspacing="0" class="op_train_tb"> {%if $tplData.form[0]['col0']!=""%} <tr> {%if $tplData.form[0]['col0']!=""%} <th style="border-left:0;">{%$tplData.form[0]['col0']%}</th> {%/if%} {%if $tplData.form[0]['col1']!=""%} <th>{%$tplData.form[0]['col1']%}</th> {%/if%} {%if $tplData.form[0]['col2']!=""%} <th>{%$tplData.form[0]['col2']%}</th> {%/if%} {%if $tplData.form[0]['col3']!=""%} <th>{%$tplData.form[0]['col3']%}</th> {%/if%} {%if $tplData.form[0]['col4']!=""%} <th>{%$tplData.form[0]['col4']%}</th> {%/if%} {%if $tplData.form[0]['col5']!=""%} <th>{%$tplData.form[0]['col5']%}</th> {%/if%} </tr> {%/if%} {%$loop_maxcount=$tplData.dispNum%}{%for $op_loop_count=1 to 5%}{%if $op_loop_count<$loop_maxcount%} <tr> {%if $tplData.form[$op_loop_count]['col0']!=""%} <td>{%if $tplData.form[$op_loop_count]['col0link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col0link']%}" >{%/if%}{%$tplData.form[$op_loop_count]['col0']|highlight:0%}{%if $tplData.form[$op_loop_count]['col0link']!=""%}</a>{%/if%}</td> {%/if%} {%if $tplData.form[$op_loop_count]['col1']!=""%} <td>{%if $tplData.form[$op_loop_count]['col1link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col1link']%}">{%/if%}{%$tplData.form[$op_loop_count]['col1']|highlight:0%}{%if $tplData.form[$op_loop_count]['col1link']!=""%}</a>{%/if%}</td> {%/if%} {%if $tplData.form[$op_loop_count]['col2']!=""%} <td>{%if $tplData.form[$op_loop_count]['col2link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col2link']%}">{%/if%}{%$tplData.form[$op_loop_count]['col2']|highlight:0%}{%if $tplData.form[$op_loop_count]['col2link']!=""%}</a>{%/if%}</td> {%/if%} {%if $tplData.form[$op_loop_count]['col3']!=""%} <td>{%if $tplData.form[$op_loop_count]['col3link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col3link']%}">{%/if%}{%$tplData.form[$op_loop_count]['col3']|highlight:0%}{%if $tplData.form[$op_loop_count]['col3link']!=""%}</a>{%/if%}</td> {%/if%} {%if $tplData.form[$op_loop_count]['col4']!=""%} <td>{%if $tplData.form[$op_loop_count]['col4link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col4link']%}">{%/if%}{%$tplData.form[$op_loop_count]['col4']|highlight:0%}{%if $tplData.form[$op_loop_count]['col4link']!=""%}</a>{%/if%}</td> {%/if%} {%if $tplData.form[$op_loop_count]['col5']!=""%} <td>{%if $tplData.form[$op_loop_count]['col5link']!=""%}<a target="_blank" href="{%$tplData.form[$op_loop_count]['col5link']%}">{%/if%}{%$tplData.form[$op_loop_count]['col5']|highlight:0%}{%if $tplData.form[$op_loop_count]['col5link']!=""%}</a>{%/if%}</td> {%/if%} </tr> {%else%}{%break%}{%/if%}{%/for%} </table> <div style="font-size:13px;text-align: left;margin-top:4px"> {%if $tplData.link[0]['linkurl']!=""%}{%if $tplData.link[0]['linkcontent']!=""%}<a style="color:#7777CC;" href="{%$tplData.link[0]['linkurl']%}" target="_blank">{%$tplData.link[0]['linkcontent']%}</a>{%/if%}{%/if%} </div> <font size=-1 color=#008000>{%$tplData.showurl%}</font>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}