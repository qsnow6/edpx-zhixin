{%extends 'base.tpl'%} {%block name='content'%}<tbody><tr><td class="f"><a href="{%$tplData.url2%}" target="_blank" onmousedown="return c({'fm':'alzd','title':this.innerHTML,'url':this.href,'p1':al_c(this)})"><font size="3">{%$tplData.title%}</font></a><br/><font size="-1">{%$tplData.content1%}<br/><font color="#008000">{%$tplData.showurl2%}&nbsp;{%$tplData.pagesize%}&nbsp;{%$tplData.date%}</font>&nbsp;-&nbsp;<a href="{%$tplData.url2%}" target="_blank" class="m">百度快照</a><br/></font><div style="padding:0.7em 0 0 2em;font-size:0.8em;"><a href="{%$tplData.suburl1%}" target="_blank" onmousedown="return c({'fm':'alzd','title':this.innerHTML,'url':this.href,'p1':al_c2(this,1),'p2':1})">{%$tplData.subtitle1%}</a><br/><a href="{%$tplData.suburl2%}" target="_blank" onmousedown="return c({'fm':'alzd','title':this.innerHTML,'url':this.href,'p1':al_c2(this,1),'p2':2})">{%$tplData.subtitle2%}</a><br/><a href="{%$tplData.suburl3%}" target="_blank" onmousedown="return c({'fm':'alzd','title':this.innerHTML,'url':this.href,'p1':al_c2(this,1),'p2':3})">{%$tplData.subtitle3%}</a><br/><a href="{%$tplData.urlmore%}" style="color:#7677cc" target="_blank" onmousedown="return c({'fm':'alzd','title':this.innerHTML,'url':this.href,'p1':al_c2(this,1),'p2':4})">更多知道结果</a></div></td></tr></tbody>{%/block%}