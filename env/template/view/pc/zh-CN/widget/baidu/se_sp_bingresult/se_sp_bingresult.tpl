{%fis_widget%}{%if $test%}<small>SP特型:bing</small><p>{%/if%}<style>.bingse{margin:5px 0 -5px 20px;color:#666}.bingurl em{color:#008000;font-weight:bold}.bingres{margin:10px 0 15px 20px}.bingico{display:inline-block;position:relative;top:3px;*top:0;border:0;height:18px;width:65px;background:url(http://www.baidu.com/cache/bingsearch/img/bing.gif)}</style><script>function _aMC(o){var t=o,i=-1;while(t=t.parentNode){i=parseInt(t.getAttribute("id"));if(i>0) return i;}}function _aMI(o){var as = document.getElementById('op_bingrs').getElementsByTagName('A');for {%*i*%}(var i = 0; i < as.length; i++) {if (as[i] == o) return (i - 1);}return as.length - 2;}window["bing_image"] = new Image();window["bing_image"].src = "http://m.bingsearch.cn/s/baidu.gif?q={%$query|vui_escape:'url'%}&t="+(new Date()).getTime();</script><table cellpadding="0" cellspacing="0" class="result-op{%if $isSameSize==1%} c-res{%/if%}" tpl="se_sp_bingresult" {%if $res.dispData.SrcId%}{%if $res.dispData.SrcId > 5999%} srcid="{%$res.dispData.SrcId%}"{%/if%}{%/if%} id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}"><tr><td id="op_bingrs" class=f data-fm="alop"><h3 class="t"><a href="{%enc_url url=$res.offsetInfo.urlEncoded%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}><font size="3"><em>{%$res.dispData.query|limitlen:40|vui_escape:'html'%}</em>的英文搜索结果</font></a><font size=-1><font color="#666666">- 来自</font><a class="bingico"    href="{%enc_url url=$res.offsetInfo.urlEncoded%}" target="_blank" ></a></font>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3>{%if $res.dispData.alteredQuery%}<div class="bingse"><font size=-1>您要找的是不是：<b>{%$res.dispData.alteredQuery|vui_escape:'html'%}</b></font></div>{%/if%}{%if $res.dispData.title0 && $res.dispData.url0%}<div class="bingres"><a href="{%enc_url url=$res.dispData.url0%}" target="_blank" ><font size="3">{%$res.dispData.title0|highlight:2%}</font></a><br>{%if $res.dispData.abstract0%}<font size=-1>{%$res.dispData.abstract0|highlight:6%}</font><br>{%/if%}{%if $res.dispData.showUrl0%}<font size=-1><font color="#008000" class="bingurl">{%$res.dispData.showUrl0|highlight:6%}</font></font>{%/if%}</div>{%/if%}{%if $res.dispData.title1 && $res.dispData.url1%}<div class="bingres"><a href="{%enc_url url=$res.dispData.url1%}" target="_blank" ><font size="3">{%$res.dispData.title1|highlight:2%}</font></a><br>{%if $res.dispData.abstract1%}<font size=-1>{%$res.dispData.abstract1|highlight:6%}</font><br>{%/if%}{%if $res.dispData.showUrl1%}<font size=-1><font color="#008000" class="bingurl">{%$res.dispData.showUrl1|highlight:6%}</font></font>{%/if%}</div>{%/if%}{%if $res.dispData.title2 && $res.dispData.url2%}<div class="bingres" style="margin-bottom:5px"><a href="{%enc_url url=$res.dispData.url2%}" target="_blank" ><font size="3">{%$res.dispData.title2|highlight:2%}</font></a><br>{%if $res.dispData.abstract2%}<font size=-1>{%$res.dispData.abstract2|highlight:6%}</font><br>{%/if%}{%if $res.dispData.showUrl2%}<font size=-1><font color="#008000" class="bingurl">{%$res.dispData.showUrl2|highlight:6%}</font></font>{%/if%}</div>{%/if%}<div style="margin-left:20px"><a href="{%enc_url url=$res.offsetInfo.urlEncoded%}" target="_blank" style="color:#7777CC;font-size:13px" >更多必应英文结果&gt;&gt;</a></div></td></tr></table>{%/fis_widget%}