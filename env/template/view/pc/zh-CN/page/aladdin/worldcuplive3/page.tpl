{%extends 'base.tpl'%} {%block name='content'%}<style >.op_worldcuplive3_icon{display:inline-block;width:140px;height:103px;overflow:hidden;border:1px solid #8d8d8d;float:left}.op_worldcuplive3_icon a{display:block;width:100%;height:100%;padding-top:30px;text-align:center}.op_worldcuplive3_icon a img{border:0;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7}.op_worldcuplive3_iconsmall{display:inline-block;width:116px;height:88px;overflow:hidden;border:1px solid #8d8d8d;float:left}.op_worldcuplive3_iconsmall a{display:blo{%*i*%}ck;width:100%;height:100%;padding-top:25px;text-align:center}.op_worldcuplive3_iconsmall a img{border:0;filter:alpha(opacity=70);-moz-opacity:.7;-khtml-opacity:.7;opacity:.7}.op_worldcuplive3_d1{font-size:14px}.op_worldcuplive3_d1 p{margin:0}.op_worldcuplive3_livetitle{margin:0;font-size:14px}.op_worldcuplive3_livematch{margin-top:2px;height:20px}.op_worldcuplive3_livematch a,.op_worldcuplive3_livematch span{font-size:13px}.op_worldcuplive3_iconleft{padding-left:18px;display:inline-block;float:l{%*i*%}eft}.op_worldcuplive3_iconleft a{float:left}.op_worldcuplive3_iconright{padding-right:18px;display:inline-block;float:left}.op_worldcuplive3_iconright a{float:left}.op_worldcuplive3_iconmiddle{display:inline-block;margin:0 4px;float:left;font-weight:bold;color:#cd0001}.op_worldcuplive3_tbhead{font-weight:normal;text-align:left;margin-top:10px;font-size:14px;padding-left:4px}.op_worldcuplive3_tbhead a{text-decoration:none}.op_worldcuplive3_tb{margin-bottom:10px}.op_worldcuplive3_livelinks{font-si{%*i*%}ze:13px;margin-top:4px}.op_worldcuplive3_livelinks span{font-size:13px}.op_worldcuplive3_livelinks a{margin-right:10px}#op_worldcuplive3_matchinfo a{text-decoration:none}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div style="clear:both;"></div><div class="op_worldcuplive3_d1" style="margin-top:4px;">{%if $tplData.icon[0]['iconaddress']!=""%}<div id="op_worldcuplive3_icon" class="op_worldcuplive3_iconsmall" style="background:url({%$tplData.icon[0]['iconaddress']%}) no-repeat;"><a target="_blank" href="{%$tplData.icon[0]['iconlink']%}"><img src="http://www.baidu.com/aladdin/img/worldcup/play-icon.gif"/></a></div><div id="op_worldcuplive3_matchinfo" style="padding-left:130px;">{%if $tplData.replay[0]['team1']!=""%}<div class="op_worldcuplive3_livematch" ><span class="op_worldcuplive3_iconleft" style="background:url(http://www.baidu.com/aladdin/img/worldcup/flags/{%$tplData.replay[0]['team1pic']%}.gif) no-repeat;background-position:0px 4px;*background-position:0px 3px;"><a href="{%$tplData.replay[0]['team1link']%}" class="op_worldcuplive3_dl" target="_blank">{%$tplData.replay[0]['team1']%}</a></span><span class="op_worldcuplive3_iconmiddle" style="*margin-top:-2px;">{%$tplData.replay[0]['score']%}</span><span class="op_worldcuplive3_iconright" style="background:url(http://www.baidu.com/aladdin/img/worldcup/flags/{%$tplData.replay[0]['team2pic']%}.gif) no-repeat;background-position:100% 0;background-position:100% 4px;*background-position:100% 3px"><a href="{%$tplData.replay[0]['team2link']%}" class="op_worldcuplive3_dl" target="_blank">{%$tplData.replay[0]['team2']%}</a></span><span style="padding-left:10px;">{%$tplData.replay[0]['time']%}</span><div style="clear:both;"></div></div>{%if $tplData.tab1!=""%}<div class="op_worldcuplive3_livelinks"><span>{%$tplData.tab1%}</span>{%$loop_maxcount=count($tplData.link1)%}{%for $op_loop_count=0 to 3%}{%if $op_loop_count<$loop_maxcount%} <a href="{%$tplData.link1[$op_loop_count]['link']%}" class="op_worldcuplive3_dl" target="_blank">{%$tplData.link1[$op_loop_count]['name']%}</a>{%else%}{%break%}{%/if%}{%/for%}</div>{%/if%}{%if $tplData.tab2!=""%}<div class="op_worldcuplive3_livelinks"> <span>{%$tplData.tab2%}</span>{%$loop_maxcount=count($tplData.link2)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%} <a href="{%$tplData.link2[$op_loop_count]['link']%}" class="op_worldcuplive3_dl" target="_blank">{%$tplData.link2[$op_loop_count]['name']%}</a>{%else%}{%break%}{%/if%}{%/for%}</div>{%/if%}{%if $tplData.fulltime[0]['name']!=""%}<div class="op_worldcuplive3_livelinks"><a href="{%$tplData.fulltime[0]['link']%}" class="op_worldcuplive3_dl" target="_blank">{%$tplData.fulltime[0]['name']%}</a></div>{%/if%}{%/if%}</div><div style="clear:both"></div>{%/if%}</div><p style="margin-bottom:0px;margin-top:0;line-heignt:16px;font-size:13px;">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</p>{%$FE_GBVAR.wrapper_suffix%}{%/block%}