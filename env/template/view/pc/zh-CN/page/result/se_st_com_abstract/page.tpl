{%extends 'base.tpl'%} {%block name="result_content"%}{%$imageFlag=false%}{%if $tplData.media4.image%}{%$imageFlag=true%}{%/if%}{%function summary_display%}{%if $imageFlag%}{%*有图*%}{%if $tplData.media4.category=='video'%}{%$dsp_summary|limitlen:55|highlight:6%}{%else%}{%$dsp_summary|limitlen:114|highlight:6%}{%/if%}{%else%}{%*无图*%}{%$dsp_summary|limitlen:150|highlight:6%}{%/if%}{%/function%}<style data-merge>{%fe_fn_rs_c_css css='btn'%}
    {%fe_fn_rs_c_css css='img'%}
    .st_com_abstract {height:91px;overflow:hidden;position:relative;}
    .st_com_abstract img {height:91px;}
    .st_com_abstract span {display:block;position:absolute;left:5px;bottom:5px;}
    .st_com_abstract .st_com_abstract_free{       
        bottom: 75px;
		left: 0;
    }</style><h3 class="t">{%$titleUrl = {%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}<a href="{%$titleUrl%}" target="_blank" data-click="{'F':'{%$tplData.classicInfo.strategyStr[0]%}','F1':'{%$tplData.classicInfo.strategyStr[1]%}','F2':'{%$tplData.classicInfo.strategyStr[2]%}','F3':'{%$tplData.classicInfo.strategyStr[3]%}','T':'{%$serverTime%}','y':'{%$tplData.classicInfo.identifyStr%}'}">{%$tplData.classicInfo.title|limitlen:60|highlight:2%}</a></h3><div class="c-row c-gap-top-small">{%if $tplData.media4.image%}<a href="{%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}" class="st_com_abstract c-span6" target="_blank"><img src="{%$tplData.media4.image%}" alt="" class="c-img c-img6" />{%if $tplData.media4.category=='video'%}<span class="c-icon c-icon-play-black"></span>{%/if%}{%if $tplData.media4.free=='0'%}{%if $tplData.media4.category=='video' || $tplData.media4.category=='xiaoshuo'%}<span class="c-text c-text-danger c-text-mult st_com_abstract_free">付费</span>{%/if%}{%/if%}</a><div class="c-span18 c-span-last">{%/if%}{%$otherinfo=$tplData.media4.otherinfo%}{%if $otherinfo%}{%if $otherinfo.language || $otherinfo.time || $otherinfo.resolution || $otherinfo.status || $otherinfo.videotype || $otherinfo.xiaoshuotype || $otherinfo.author || $otherinfo.size || $otherinfo.update || $otherinfo.version%}<div style="color:#666">{%if $tplData.media4.category=='video'%}{%if $otherinfo.time && strlen($otherinfo.time) > 0%}时长:&nbsp;{%$otherinfo.time|escape%}{%/if%}{%if $otherinfo.resolution && strlen($otherinfo.resolution) > 0%}&nbsp;-&nbsp;{%$otherinfo.resolution|escape%}{%/if%}{%if $otherinfo.language && strlen($otherinfo.language) > 0%}&nbsp;-&nbsp;{%$otherinfo.language|escape%}{%/if%}{%elseif $tplData.media4.category=='xiaoshuo'%}{%if $otherinfo.author && strlen($otherinfo.author) > 0%}作者:&nbsp;{%$otherinfo.author|escape%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.status && strlen($otherinfo.status) > 0%}状态:&nbsp;{%$otherinfo.status|escape%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.xiaoshuotype && strlen($otherinfo.xiaoshuotype) > 0%}类型:&nbsp;{%$otherinfo.xiaoshuotype|escape%}{%/if%}{%elseif $tplData.media4.category=='software'%}{%if $otherinfo.size && strlen($otherinfo.size) > 0%}大小:&nbsp;{%$otherinfo.size|escape%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.update && strlen($otherinfo.update) > 0%}更新时间:&nbsp;{%$otherinfo.update|escape%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.version && strlen($otherinfo.version) > 0%}版本:&nbsp;{%$otherinfo.version|escape%}{%/if%}{%/if%}</div>{%/if%}{%/if%}{%if $tplData.media4.category=='video'%}{%if $otherinfo.videotype || $otherinfo.actor || $otherinfo.director%}<div>{%if $otherinfo.videotype && strlen($otherinfo.videotype) > 0%}类型:&nbsp;{%$otherinfo.videotype|escape|limitlen:14%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.actor && strlen($otherinfo.actor) > 0%}主演:&nbsp;{%$otherinfo.actor|escape|limitlen:14%}&nbsp;&nbsp;&nbsp;{%/if%}{%if $otherinfo.director && strlen($otherinfo.director) > 0%}导演:&nbsp;{%$otherinfo.director|escape|limitlen:14%}{%/if%}</div>{%/if%}{%/if%}<div class="c-gap-bottom-small">{%if $tplData.media4.category=='video'%}剧情:&nbsp;{%elseif $tplData.media4.category=='software' || $tplData.media4.category=='xiaoshuo'%}简介:&nbsp;{%/if%}{%summary_display dsp_summary=$tplData.media4.intro%}</div><a href="{%$tplData.media4.buttonurl|escape%}" class="c-btn" target="_blank">{%if $tplData.media4.category=='video'%}立即播放{%elseif $tplData.media4.category=='software'%}下载地址{%elseif $tplData.media4.category=='game'%}开始游戏{%elseif $tplData.media4.category=='xiaoshuo' && $tplData.media4.free=='0'%}付费阅读{%else%}免费阅读{%/if%}</a><div class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_limit:28:true|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:28:true%}{%/if%}&nbsp;{%rs_display_as_time FactorTimePrecision=$resData.FactorTimePrecision FactorTime=$resData.FactorTime LastModTime=$resData.LastModTime LinkFoundTime=$resData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}{%if $tplData.classicInfo.docType < 0%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%}target="_blank"{%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</div>{%if $tplData.media4.image%}</div>{%/if%}</div>{%/block%}