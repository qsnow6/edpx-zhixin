{%extends 'base.tpl'%} {%block name='content'%}<style >.op_pic03 td{padding:0}</style><script >function _aMC(C) {var B = C, A = -1;while (B = B.parentNode) {A = parseInt(B.getAttribute('id'));if (A > 0) {return A}}}
</script>{%$FE_GBVAR.wrapper_prefix%}<table class="op_pic03"><tr><td valign="middle"><div style="width:48px;height:48px;overflow:hidden;text-align:center;"><img src="{%$tplData.iconlink|escape:'html'%}" border="0"/></div></td><td style="padding-left:15px;" valign="middle">{%if $tplData.content1%}<font style="font-size: 13px;">{%$tplData.content1|escape:'html'%}</font><br>{%/if%}{%if $tplData.content2%}<font style="font-size: 13px;">{%$tplData.content2|escape:'html'%}</font><br>{%/if%}<font style="font-size: 12px;color:#646464">{%$tplData.support|escape:'html'%}<a href="{%$tplData.link[0]['linkurl']|escape:'html'%}" onmousedown="return c({'fm':'alop','url':this.href,'p1':_aMC(this)})" target=_blank>{%$tplData.link[0]['linkcontent']|escape:'html'%}</a></font></td><tr></table>{%$FE_GBVAR.wrapper_suffix%}{%/block%}