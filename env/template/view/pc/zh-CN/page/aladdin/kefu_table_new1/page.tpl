{%extends 'base.tpl'%}  {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style compress>.op_kefutablenew_wrapper{width:38em}.op_kefutablenew_td_table{margin-top:9px}.op_kefutablenew_td_r_big{margin-top:-9px}.op_kefutablenew_td_l{padding-right:17px;vertical-align:top}.op_kefutablenew_td_l img{border:0;width:137px;height:59px}.op_kefutablenew_td_r{padding-left:17px;border-left:1px solid #eee}.op_kefutablenew_table td{white-space:nowrap;font-size:16px;line-height:18px}.op_kefutablenew_table .op_kefutablenew_td1{padding-bottom:17px;padding-right:14px;font-family:'宋体'}.o{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}{%*i*%}p_kefutablenew_table .op_kefutablenew_td2{padding-bottom:11px;font-weight:bold}.op_kefutablenew_link{margin-top:-6px;_margin-top:-7px}.op_kefutablenew_link_kefu{font-size:13px;padding-right:19px;font-family:simsun}.op_kefutablenew_link_alltel{font-size:13px;font-family:simsun}.op_kefutablenew_tip{_width:100%;overflow:hidden;line-height:14px;font-size:13px}.op_kefutablenew_showurl{margin-top:7px;margin-bottom:-2px;margin-bottom:0\9;float:left}.op_kefutablenew_committel{margin:7px 0 0 5px;color:#6{%*i*%}66;float:left;line-height:18px \9}</style>{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_kefutablenew_wrapper"> <table class="op_kefutablenew_td_table" cellspacing="0" cellpadding="0"> <tr class="op_kefutablenew_td_tr"> <td  class="op_kefutablenew_td_l"> {%if $tplData.icon[0]['iconlink']%}<a class="OP_LOG_BTN" target="_blank" href="http://open.baidu.com/coop/kefu.html">{%/if%}<img src="http://www.baidu.com/aladdin/img/kefu_table_new/op-kefu-table-new-icon.png">{%if $tplData.icon[0]['iconlink']%}</a>{%/if%} </td> {%$loop_maxcount=count($tplData.tel)%} <td class="op_kefutablenew_td_r"> <table cellspacing="0" cellpadding="0" class="op_kefutablenew_table"> {%$loop_maxcount=count($tplData.tel)%} {%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <tr> {%if $tplData.tel[$op_loop_count]['name']%}<td class="op_kefutablenew_td1">{%$tplData.tel[$op_loop_count]['name']|limitlen:46|escape:'html'%}</td>{%/if%} <td class="op_kefutablenew_td2">{%$tplData.tel[$op_loop_count]['hot']|escape:'html'%}</td> </tr>{%else%}{%break%}{%/if%}{%/for%} </table> <div class="op_kefutablenew_link"> {%if $tplData.kefu[0]['kefuurl']&&$tplData.kefu[0]['kefucontent']%} <a class="op_kefutablenew_link_kefu" href="{%$tplData.kefu[0]['kefuurl']%}" target="_blank">{%$tplData.kefu[0]['kefucontent']|escape:'html'%}</a> {%/if%} {%if $tplData.alltel[0]['alltelurl']&&$tplData.alltel[0]['alltelcontent']%} <a class="op_kefutablenew_link_alltel" href="{%if $tplData.alltel[0]['alltelurl']%}{%$tplData.alltel[0]['alltelurl']%}{%else%}{%$tplData.url%}{%/if%}" target="_blank">{%$tplData.alltel[0]['alltelcontent']|escape:'html'%}&gt;&gt;</a> {%/if%} </div> <div class="op_kefutablenew_tip"> <div class="op_kefutablenew_showurl">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div> <a class="op_kefutablenew_committel" target="_blank" href="http://open.baidu.com/coop/kefu.html">提交电话（免费）</a> </div> </td> </tr> </table></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}