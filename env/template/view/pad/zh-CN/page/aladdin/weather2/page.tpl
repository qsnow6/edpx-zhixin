{%extends 'base.tpl'%} {%block name='content'%}<style type="text/css" >.aladdin_weather2_wt{margin-top:5px}.aladdin_weather2_wt td{font-size:16px;line-height:22px;text-align:center;vertical-align:top}.aladdin_weather2_wt td img{margin:5px 0;width:48px;height:48px;border:0}.aladdin_weather2_wt td img.aladdin_weather2_il{margin-right:10px}.aladdin_weather2_wt td span{font-size:15px}.aladdin_weather2_wt td div{text-align:center;padding:0 5px;white-space:nowrap}.aladdin_weather2_wt .altime_special{white-space:nowrap}.aladdin_weather2_wt .altemp_{%*i*%}special{font-size:16px;white-space:nowrap}.aladdin_weather2_wt .altd_normal strong{font-weight:normal;font-size:16px}.aladdin_weather2_wt .altd_normal .altime_special,.aladdin_weather2_wt .altd_normal .altemp_special{white-space:normal}.aladdin_weather2_wt td.aladdin_weather2_tr{padding-right:20px}.aladdin_weather2_wt td.aladdin_weather2_tl{padding-left:20px;border-left:1px solid #e2e9fc}.aladdin_weather2_wlink{font-size:14px;color:#666;padding:5px 0;line-height:20px}.aladdin_weather2_wlink a{co{%*i*%}lor:#77c;margin:0 5px}.aladdin_weather2_aa{color:#00c;font-size:15px;font-weight:bold}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}</h3><div><table cellspacing="0" cellpadding="0" class="aladdin_weather2_wt"><tr id="aladdin_weather2_weather_l">{%if $tplData.time0%}<td class="aladdin_weather2_tr"><strong class="altime_special">{%$tplData.time0|escape:'html'%}</strong><br><div><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img src="{%$tplData.pic01|escape:'html'%}" /></a></div><strong class="altemp_special">{%$tplData.temp0|escape:'html'%}</strong><br><strong>{%$tplData.weather0|escape:'html'%}</strong><br><span>{%$tplData.wind0|escape:'html'%}</span></td>{%/if%}<td class="aladdin_weather2_tr{%if $tplData.time0%} aladdin_weather2_tl altd_normal{%/if%}" ><strong class="altime_special">{%$tplData.time1|escape:'html'%}</strong><br><div><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img class="aladdin_weather2_il" src="{%$tplData.pic11|escape:'html'%}" /></a><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img src="{%$tplData.pic12|escape:'html'%}" /></a></div><strong class="altemp_special">{%$tplData.temp1|escape:'html'%}</strong><br><strong>{%$tplData.weather1|escape:'html'%}</strong><br><span>{%$tplData.wind1|escape:'html'%}</span></td><td class="aladdin_weather2_tr aladdin_weather2_tl">{%$tplData.time2|escape:'html'%}<br><div><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img class="aladdin_weather2_il" src="{%$tplData.pic21|escape:'html'%}" /></a><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img src="{%$tplData.pic22|escape:'html'%}" /></a></div>{%$tplData.temp2|escape:'html'%}<br>{%$tplData.weather2|escape:'html'%}<br><span>{%$tplData.wind2|escape:'html'%}</span></td><td class="aladdin_weather2_tl">{%$tplData.time3|escape:'html'%}<br><div><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img class="aladdin_weather2_il" src="{%$tplData.pic31|escape:'html'%}" /></a><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img src="{%$tplData.pic32|escape:'html'%}" /></a></div>{%$tplData.temp3|escape:'html'%}<br>{%$tplData.weather3|escape:'html'%}<br><span>{%$tplData.wind3|escape:'html'%}</span></td></tr></table></div><div class="aladdin_weather2_wlink">{%$tplData.support|escape:'html'%} {%if $tplData.link2[0]['linkcontent']%} <a target="_blank" href="{%$tplData.link2[0]['linkurl']|escape:'html'%}">{%$tplData.link2[0]['linkcontent']|escape:'html'%}</a>{%/if%}{%if $tplData.link1[0]['linkcontent']%}<a target="_blank"  href="{%$tplData.link1[0]['linkurl']|escape:'html'%}"><span class="aladdin_weather2_aa">未来{%$tplData.link1[0]['linkcontent']|escape:'html'%}>></span></a>{%/if%}{%if $tplData.showurl%}<div><span><span style="font-size:15px;color:#008000;">{%$tplData.showurl|escape:'html'%}</span><span style="font-size:15px;">{%if $tplData.showlamp%} - </span><a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</span></div>{%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}