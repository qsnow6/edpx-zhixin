{%extends 'base.tpl'%} {%block name='content'%}<style >.op_fund_tb{float:left;}.op_fund_tb tr{height:30px;}.op_fund_tb tr td{white-space:nowrap;line-height:150%;font-size:13px;}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div style="float:left;margin:3px 10px 0px 0;width:250px;height:150px;overflow:hidden;text-align:center;"> <a target="_blank" href="{%$tplData.pic[0]['jumplink']%}"> <img src="{%$tplData.pic[0]['piclink']%}" border="0"/> </a></div> <table border="0" cellpadding="0" cellspacing="0" class="op_fund_tb" style="width:48%" > <tr> <td colspan=2> <b style="font-size: 1.4em; color:{%$tplData.data1[0]['data1colour']%};">{%$tplData.data1[0]['data1content']%} </b> <b style="font-size: 1.1em; color:{%$tplData.data2[0]['data2colour']%};">{%$tplData.data2[0]['data2content']%}</b> <font style="font-size:1em;"> <font style="font-size:0.9em;" color="{%$tplData.data3[0]['data3colour']%}">{%$tplData.data3[0]['data3content']%}</font>&nbsp;&nbsp;{%$tplData.currentdate%} </font> </td> </tr> <tr> <td style="width:18em"><font size="-1">{%$tplData.form[0]['col0']|highlight:0%}</font></td> <td><font size="-1">{%$tplData.form[0]['col1']|highlight:0%}</font></td> </tr> <tr> <td><font size="-1">{%$tplData.form[1]['col0']|highlight:0%}</font></td> <td><font size="-1">{%$tplData.form[1]['col1']|highlight:0%}</font></td> </tr> <tr> <td><font size="-1">{%$tplData.form[2]['col0']|highlight:0%}</font></td> <td><font size="-1">{%$tplData.form[2]['col1']|highlight:0%}</font></td> </tr> <tr> <td colspan=2><font style="float:left;" size="-1" color=#666666>{%$tplData.support%}</font><a href="{%$tplData.link[0]['linkurl']%}" style="float:right;" target="_blank">{%$tplData.link[0]['linkcontent']|highlight:0%}</a></td></tr></table> <div style="clear:both;"> <font size=-1> <font color=#008000>{%$tplData.showurl%} {%if $tplData.date!=""%} {%$tplData.date%} {%/if%}</font>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP" ></a>{%/if%}</font></font> </div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}