{%extends 'base.tpl'%} {%block name='content'%}<tr><td><style >.aladdin_caipu_auto{width:100%;} .aladdin_caipu_auto td{font-size:15px;}</style><div class="aladdin_caipu_auto"> <table cellspacing="0" cellpadding="0"> <tr> <td colspan=2> <h3> <a onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this)})" target="_blank" href="{%$tplData.url|escape:'html'%}">{%$tplData.title|limitlen:62|highlight:0%}</a> </h3> </td> </tr> <tr> <td style="width:80px;height:80px;vertical-align:top;padding-top:5px;"> {%if $tplData.icon[0]['iconaddress']%} <a target="_blank" href="{%$tplData.icon[0]['iconlink']|escape:'html'%}"> <img style="border:none;width:80px;height:80px;margin-top:2px;" src="{%$tplData.icon[0]['iconaddress']|escape:'html'%}"> </a>{%/if%}</td><td style="vertical-align:top;padding-top:2px;padding-left:5px;"> {%if $tplData.content1%} <div> <span style="line-height:20px;">{%$tplData.content1|limitlen:65|highlight:0%}</span> </div> {%/if%} {%if $tplData.content2%} <div> <span style="line-height:20px;">{%$tplData.content2|limitlen:65|highlight:0%}</span> </div> {%/if%} {%if $tplData.content3%} <span style="line-height:20px;">{%$tplData.content3|limitlen:130|highlight:0%}</span> {%/if%} </td> </tr> <tr> <td colspan=2 style="padding-top:2px;"> {%if $tplData.content4%} <span style="font-weight:bold;">{%$tplData.content4|limitlen:20|highlight:0%}</span> {%/if%} {%if $tplData.link1[0]['linkcontent']%} <a target="_blank" href="{%$tplData.link1[0]['linkurl']|escape:'html'%}" style="line-height:1.2em;">{%$tplData.link1[0]['linkcontent']|limitlen:20|highlight:0%}</a> {%/if%} {%if $tplData.link2[0]['linkcontent']%} <a target="_blank" href="{%$tplData.link2[0]['linkurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.link2[0]['linkcontent']|limitlen:20|highlight:0%}</a> {%/if%} {%if $tplData.link3[0]['linkcontent']%} <a target="_blank" href="{%$tplData.link3[0]['linkurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.link3[0]['linkcontent']|limitlen:20|highlight:0%}</a> {%/if%} {%if $tplData.link4[0]['linkcontent']%} <a target="_blank" href="{%$tplData.link4[0]['linkurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.link4[0]['linkcontent']|limitlen:20|highlight:0%}</a> {%/if%} &nbsp; {%if $tplData.showurl%} {%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%} {%/if%} {%if $tplData.site%} {%$tplData.site|highlight:0%} {%/if%} {%if $tplData.sitelink1[0]['sitecontent']%} <a target="_blank" href="{%$tplData.sitelink1[0]['siteurl']|escape:'html'%}" style="line-height:1.2em;">{%$tplData.sitelink1[0]['sitecontent']|highlight:0%}</a> {%/if%} {%if $tplData.sitelink2[0]['sitecontent']%} <a target="_blank" href="{%$tplData.sitelink2[0]['siteurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.sitelink2[0]['sitecontent']|highlight:0%}</a> {%/if%} {%if $tplData.sitelink3[0]['sitecontent']%} <a target="_blank" href="{%$tplData.sitelink3[0]['siteurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.sitelink3[0]['sitecontent']|highlight:0%}</a> {%/if%}{%if $tplData.sitelink4[0]['sitecontent']%} <a target="_blank" href="{%$tplData.sitelink4[0]['siteurl']|escape:'html'%}" style="line-height:1.2em;margin-left:10px;">{%$tplData.sitelink4[0]['sitecontent']|highlight:0%}</a> {%/if%} </td> </tr> </table></div></td></tr>{%/block%}