{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"><style >.op_temp_auto{width:100%;} .op_temp_auto td{font-size:13px;}</style><div class="op_temp_auto"><table cellspacing="0" cellpadding="0"><tr><td colspan=2 style="vertical-align:bottom;"><h3 class="t"><a target="_blank" href="{%$tplData.url%}" style="font-size:16px;">{%$tplData.title|limitlen:76|highlight:0%}</a><span class="tsuf tsuf-op" data="{title : '{%$tplData.title|escape:'javascript'%}', link :'{%$tplData.url|escape:'javascript'%}'}"></span></h3></td></tr><tr><td style="vertical-align:top;padding-top:5px;">{%if $tplData.icon[0]['iconaddress']!=""%}<a target="_blank" href="{%$tplData.icon[0]['iconlink']%}"><img style="border:1px solid #cccccc;width:78px;height:78px;" src="{%$tplData.icon[0]['iconaddress']%}"></a>{%/if%}</td><td style="vertical-align:top;padding-top:5px;padding-left:10px;">{%if $tplData.content1!=""%}<span style="font-family:宋体;font-size:13px;color:#000;">{%$tplData.content1|limitlen:38|highlight:0%}</span>{%/if%}{%if $tplData.content2!=""%}<span style="font-family:宋体;font-size:13px;color:#000;margin-left:10px;">{%$tplData.content2|limitlen:38|highlight:0%}</span><br>{%/if%}{%if $tplData.content3!=""%}<span style="font-family:宋体;font-size:13px;color:#000;">{%$tplData.content3|limitlen:60|highlight:0%}</span>{%/if%}{%if $tplData.maplink[0]['maplinkcontent']!=""%}<a target="_blank" href="{%$tplData.maplink[0]['maplinkurl']%}" style="font-family:宋体;font-size:13px;line-height:1.2em;color:#0000cc;margin-left:20px;text-decoration:underline;">{%$tplData.maplink[0]['maplinkcontent']|limitlen:10|highlight:0%}</a><br>{%/if%}{%if $tplData.content4!=""%}<div><span style="font-family:宋体;font-size:13px;color:#000;">{%$tplData.content4|limitlen:152|highlight:0%}</span></div>{%/if%}{%if $tplData.link[0]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[0]['linkurl']%}" style="font-family:宋体;font-size:13px;line-height:1.2em;color:#0000cc;text-decoration:underline;">{%$tplData.link[0]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[1]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[1]['linkurl']%}" style="font-family:宋体;font-size:13px;line-height:1.2em;color:#0000cc;margin-left:20px;text-decoration:underline;">{%$tplData.link[1]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[2]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[2]['linkurl']%}" style="font-family:宋体;font-size:13px;line-height:1.2em;color:#0000cc;margin-left:20px;text-decoration:underline;">{%$tplData.link[2]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[3]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[3]['linkurl']%}" style="line-height:1.2em;margin-left:20px;">{%$tplData.link[3]['linkcontent']|highlight:0%}</a>{%/if%}{%if $tplData.link[4]['linkcontent']!=""%}<a target="_blank" href="{%$tplData.link[4]['linkurl']%}" style="line-height:1.2em;margin-left:20px;">{%$tplData.link[4]['linkcontent']|highlight:0%}</a>{%/if%}{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</td></tr></table></div></td></tr>{%/block%}