{%extends 'base.tpl'%} {%block name='content'%}<style >.op_pic03 td{padding:0}</style>{%$FE_GBVAR.wrapper_prefix%}<table class="op_pic03"><tr><td valign="middle"><div style="width:48px;height:48px;overflow:hidden;text-align:center;"><img src="{%$tplData.iconlink%}" border="0"/></div></td><td style="padding-left:15px;" valign="middle">{%if $tplData.content1!=""%}<font style="font-size: 13px;">{%$tplData.content1%}</font><br>{%/if%}{%if $tplData.content2!=""%}<font style="font-size: 13px;">{%$tplData.content2%}</font><br>{%/if%}<font style="font-size: 12px;color:#646464">{%$tplData.support%}<a href="{%$tplData.link[0]['linkurl']%}" target=_blank>{%$tplData.link[0]['linkcontent']%}</a></font></td><tr></table>{%$FE_GBVAR.wrapper_suffix%}{%/block%}