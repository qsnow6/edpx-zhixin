{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap=false%}{%$extData.feData.hasShowURLGap=false%}{%/block%}{%block name='content'%}<style >{%fe_fn_c_css css='img'%}.op_futuresearch1_table{vertical-align:top}.op_futuresearch1_table tr{height:28px}.op_futuresearch1_table td{white-space:nowrap}</style><div class="c-row"> <div class="c-span12"> <a target="_blank" href="{%$tplData.pic[0]['jumplink']%}"> <img src="{%$tplData.pic[0]['piclink']%}" border="0" class="c-img c-img12"/> </a> </div> <div class="c-span12 c-span-last"> <table cellpadding="0" cellspacing="0" width="100%" class="op_futuresearch1_table"> <tr> <td colspan="2"> <b style="font-size: 1.4em; text-align:center;color:{%$tplData.data1[0]['data1colour']|escape:'html'%};">{%$tplData.data1[0]['data1content']|escape:'html'%} </b> <b style="font-size: 1.1em; color:{%$tplData.data2[0]['data2colour']|escape:'html'%};">{%$tplData.data2[0]['data2content']|escape:'html'%}</b> <span> <span style="font-size:0.9em;color:{%$tplData.data3[0]['data3colour']|escape:'html'%}">{%$tplData.data3[0]['data3content']|escape:'html'%}</span>&nbsp;&nbsp;{%$tplData.currentdate|escape:'html'%} &nbsp;{%$tplData.currenttime|escape:'html'%} </span></td> </tr> {%$loop_maxcount=count($tplData.form)%} {%for $op_loop_count=0 to 3%} {%if $op_loop_count < $loop_maxcount%} <tr> <td width='50%'> <span style=" {%if $tplData.form[$op_loop_count]['col0colour']!=""%} color:{%$tplData.form[$op_loop_count]['col0colour']|escape:'html'%};{%/if%}">{%$tplData.form[$op_loop_count]['col0']|highlight:0%}</span><span style=" {%if $tplData.form[$op_loop_count]['col1colour']!=""%} color:{%$tplData.form[$op_loop_count]['col1colour']|escape:'html'%};{%/if%}">{%$tplData.form[$op_loop_count]['col1']|highlight:0%}</span> </td> <td  width='50%'> <span style=" {%if $tplData.form[$op_loop_count]['col2colour']!=""%} color:{%$tplData.form[$op_loop_count]['col2colour']|escape:'html'%};{%/if%}text-align:right">{%$tplData.form[$op_loop_count]['col2']|highlight:0%}</span><span style="{%if $tplData.form[$op_loop_count]['col3colour']!=""%} color:{%$tplData.form[$op_loop_count]['col3colour']|escape:'html'%};{%/if%}">{%$tplData.form[$op_loop_count]['col3']|highlight:0%}</span> </td> </tr> {%else%}{%break%}{%/if%} {%/for%} </table> </div></div><p> {%$loop_maxcount = count($tplData.link)%} {%for $op_loop_count = 0 to 5%} {%if $op_loop_count < $loop_maxcount%} <a href="{%$tplData.link[$op_loop_count]['linkurl']%}" target="_blank">{%$tplData.link[$op_loop_count]['linkcontent']|highlight:0%}</a>&nbsp;&nbsp;&nbsp; {%else%}{%break%}{%/if%}{%/for%}</p>{%/block%}