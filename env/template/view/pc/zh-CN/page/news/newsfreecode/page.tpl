{%$tn = $tplData.queryInfo.pUrlConfig.tn%}{%$query = $tplData.queryInfo.wordNoSyntax%}{%if preg_match("/^title:/i",$query) !=0%}{%$queryEnc = preg_replace("/^title:/i","",$query)%}{%$jumpTn = "newstitle"%}{%else%}{%$queryEnc = $query%}{%$jumpTn = "news"%}{%/if%}{%if $tn == 'newsfc'%}c='<div id="num" style="display:none;">{%$tplData.asResult.asResultNum|escape:'html'%}</div>{%else%}document.write('{%/if%}<div style="margin-bottom:10px"><a href="http://news.baidu.com" target="_blank"><img src="http://www.baidu.com/search/img/slogo-news.gif" align="absbottom" border="0" height="21" width="60"></a>&nbsp;&nbsp;&nbsp;<a href="http://news.baidu.com/ns?word={%$queryEnc|escape:'html'%}&tn={%$jumpTn|escape:'html'%}&ie=gb2312&sr=0&cl=2&rn=20&ct=0" target="_blank" class="blk">{%$queryEnc|escape:'html'%}</a></div><div style="text-align:left;word-wrap:break-word;width:100%" class=baidu>{%foreach $tplData.asResult.item as $res%}<a href="{%$res.offsetInfo.url|escape:'html'%}" target="_blank">{%$res.offsetInfo.title|highlight:2%}</a>&nbsp;<span>{%$res.dispData.rtses|escape:'html'%}&nbsp;{%$res.dispData.rtset|escape:'html'|date_format:'%Y-%m-%d %T'%}</span><br>{%/foreach%}<div style="margin-top:5px;font-size:12px"><a href="http://news.baidu.com/ns?word={%$queryEnc|escape:'html'%}&tn={%$jumpTn|escape:'html'%}&ie=gb2312&sr=0&cl=2&rn=20&ct=0" target="_blank" class="more">&#x66f4;&#x591a;&gt;&gt;</a></div></div>{%if $tn == 'newsfc'%}'; qw = "{%$query|escape:'url'%}";{%else%}');{%/if%}