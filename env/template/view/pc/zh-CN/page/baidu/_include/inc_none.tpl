{%if $querySymbol == 0%}{%$hintUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}{%if ($topHint & 0x1000) == 0%}{%* SE提示 *%}{%if ($topHint & 0x4) != 0%}<p style="margin:10px 0"><strong class=f14>{%$hint_se%}<span class="jc">{%$seNum = count($tplData.rsseResult.seword)%}{%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="{%$searchAction%}?wd={%$seWord|vui_escape:'url'%}&f=12&rsp={%$index%}&oq={%$query|vui_escape:'url'%}{%$hintUrlComponent%}">{%$seWord|vui_escape:'html'%}</a>&nbsp;{%/for%}</span></strong><br></p>{%/if%}{%* 引号提示 *%}{%if ($topHint & 0x8000) != 0%}<p style="margin:10px 0"><font class="f14"><b>{%$hint_quet_part1%}<a href="{%$searchAction%}?wd={%$queryNopunc|vui_escape:'url'%}{%$hintUrlComponent%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_quet_part2%}<a href="{%$www_domain%}/search/page_feature.html#0904" target="_blank">{%$hint_quet_part3%}</a>{%$hint_quet_part4%}</b></font><br></p>{%/if%}{%* 书名号提示 *%}{%if ($topHint & 0x8) != 0%}<p style="margin:10px 0"><font class=f14><b>{%$hint_bookname_part1%}<a href="{%$searchAction%}?wd={%$queryNopunc|vui_escape:'url'%}{%$hintUrlComponent%}">{%$queryNopunc|vui_escape:'html'%}</a>{%$hint_bookname_part2%}<a href="{%$www_domain%}/search/page_feature.html#0904" target="_blank">{%$hint_bookname_part3%}</a>{%$hint_bookname_part4%}</b></font><br></p>{%/if%}{%* 长串提示 *%}{%if ($topHint & 0x1) != 0%}<p style="margin:10px 0"><font class=f14><b>{%$hint_longstr_part1%}{%$tplData.queryInfo.extraStr%}{%$hint_longstr_part2%}</b></font><br></p>{%/if%}{%/if%}{%/if%}{%* 抱歉，您输入的内容“xxx”不在查询范围内 *%}{%if $querySymbol%}<div style="font-size:14px;line-height:20px;">{%$hint_onlysyb_part1%}<em>{%$query|vui_escape:'html'%}</em>{%$hint_onlysyb_part2%}</div>{%/if%}{%if $querySymbol == 0%}{%if ($topHint & 0x1000) == 0%}<div class="nors"><p>{%$hint_none_part1%}<em>{%if $domainType < 0%}{%$query|vui_escape:'html'%}{%else%}{%$query|domain|vui_escape:'html'%}{%/if%}</em>{%$hint_none_part2%}</p><br>{%$hint_none_part3%}<ul>{%* 通用提示 *%}{%if $tplData.queryInfo.promptNode%}{%foreach $tplData.queryInfo.promptNode as $idLen%}{%* site:url *%}{%if $idLen.id == '12'%}{%* 临时展现日志 *%}<script>ns_c_pj({'fm':'none_show','tab':'1','pj':'ui_none'});</script><li>{%$hint_none_part10%}</li><li>{%$hint_none_domain%}<a onmousedown="return ns_c_pj({'fm':'none_click','tab':'1_2','pj':'ui_none'})" href="{%$query|regex_replace:'/site:/':''|domain_advance|encodeURI%}" target="_blank">{%$query|regex_replace:'/site:/':''|vui_escape:'html'%}</a></li><li>{%$hint_none_part13%}<a onmousedown="return ns_c_pj({'fm':'none_click','tab':'1_1','pj':'ui_none'})" href="http://zhanzhang.baidu.com/sitesubmit/index?sitename={%$query|regex_replace:'/site:/':''|domain_advance|vui_escape:'url'%}" target="_blank">{%$hint_domain_part5%}</a>{%$hint_domain_part6%}</li>{%/if%}{%* 高级语法query *%}{%if $idLen.id == '13'%}{%* 临时展现日志 *%}<script>ns_c_pj({'fm':'none_show','tab':'4','pj':'ui_none'});</script><li>{%$hint_none_part14%}</li><li>{%$hint_none_part12%}</li>{%/if%}{%/foreach%}{%* 非通用提示 *%}{%else%}<li>{%$hint_none_part10%}</li>{%if $domainType < 0%}<li>{%$hint_none_part11%}</li><li>{%$hint_none_part12%}</li>{%if ($topHint & 0x2000) == 0%}{%* 临时展现日志 *%}<script>ns_c_pj({'fm':'none_show','tab':'5','pj':'ui_none'});</script><li>{%$hint_none_part6%}<a onmousedown="return ns_c_pj({'fm':'none_click','tab':'5','pj':'ui_none'})" href="{%$www_domain%}/search/noresult.html" target="_blank">{%$hint_none_part7%}</a></li>{%/if%}{%if ($topHint & 0x2000) != 0%}<li>{%$hint_none_part6%}<a href="{%$www_domain%}/search/guide.html" target="_blank">{%$hint_none_part8%}</a></li>{%/if%}{%/if%}{%if $domainType > 0%}{%* 临时展现日志 *%}<script>ns_c_pj({'fm':'none_show','tab':'3','pj':'ui_none'});</script><li>{%$hint_none_domain%}<a onmousedown="return ns_c_pj({'fm':'none_click','tab':'3_1','pj':'ui_none'})" href="{%$query|domain_advance|encodeURI%}" target="_blank">{%$query|domain|vui_escape:'html'%}</a></li><li>{%$hint_none_part13%}<a onmousedown="return ns_c_pj({'fm':'none_click','tab':'3_2','pj':'ui_none'})" href="http://zhanzhang.baidu.com/sitesubmit/index?sitename={%$query|domain_advance|vui_escape:'url'%}" target="_blank">{%$hint_domain_part5%}</a>{%$hint_domain_part6%}</li>{%/if%}{%/if%}</ul></div><br clear=all>{%/if%}{%/if%}{%if ($topHint & 0x1000) != 0%}<div style="font-size:14px;line-height:20px;">{%$hint_filter_fornone%}</div><p></p><br clear=all>{%/if%}