{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"><div class="op_auto_template op_wandoujiatest"><table cellspacing="0" cellpadding="0"><tbody><tr><td colspan="3"><h3 class="t" style=""><a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a><span class="tsuf tsuf-op" data="{title:'{%$tplData.title|escape:'javascript'%}',link:'{%$tplData.url|escape:'javascript'%}'}"></span></h3></td></tr><tr><td rowspan="5" style="text-align:left;vertical-align:top;padding-top:5px;width:48px;height:48px;padding-right:10px;">{%if $tplData.iconlink!=""%}<a href="{%$tplData.iconlink%}" target="_blank"><img src="{%$tplData.iconaddress%}" style="width:48;height:48;"></a>{%/if%}</td><td colspan="2" style="padding-top:5px;"><span style="font-size:13px;font-family:arial,宋体;color:#000000;padding-right:1;">{%$tplData.content1|highlight:0%}</span><span style="font-size:13px;font-family:arial,宋体;color:#000000;padding-left:10px;">{%$tplData.content2|highlight:0%}</span></td></tr><tr><td colspan="2" style="padding-top:5px;">{%if $tplData.content3!=""%}<span style="font-size:13px;font-family:arial,宋体;color:#000000;">{%$tplData.content3|highlight:0%}</span>{%/if%}{%if $tplData.content4!=""%}<span style="font-size:13px;font-family:arial,宋体;color:#000000;padding-left:10px;">{%$tplData.content4|highlight:0%}</span>{%/if%}</td></tr><tr><td colspan="2" style="padding-top:5px;">{%if $tplData.content5!=""%}<span style="font-size:13px;font-family:arial,宋体;color:#000000;">{%$tplData.content5|highlight:0%}</span>{%/if%}</td></tr><tr><td colspan="2" style="vertical-align:bottom;padding-top:5px;text-align:left;width:480px;line-height:40px;"><a href="{%$tplData.buttonlink%}" target="_blank" class="opui-button-big" style=""><div><div><div>{%$tplData.buttontxt%}</div></div></div></a>{%if $tplData.button2link!=""%}<a href="{%$tplData.button2link%}" target="_blank" class="opui-button-big" style="padding-left:10px;"><div><div>{%if $tplData.button2txt!=""%}<div>{%$tplData.button2txt%}</div>{%/if%}</div></div></a>{%/if%}{%if $tplData.linkurl!=""%}{%if $tplData.linktxt!=""%}<a href="{%$tplData.linkurl%}" target="_blank" style="color:#666;padding-left:5px;">{%$tplData.linktxt%}</a>{%/if%}{%/if%}</td></tr><tr><td colspan="2" style="padding-top:0px;"><span style="font-size:13px;color:#008000;">{%$tplData.showurl%}</span>{%if $tplData.showlamp!=""%}<span> - <a class="op_LAMP" href="http://open.baidu.com/data" target="_blank"></a></span>{%/if%}</td></tr></tbody></table></div></td></tr>{%/block%}