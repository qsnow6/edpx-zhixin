{%function name="fis_widget_baidu_se_st_single_video_section"%}<li class="bds-list"><div class="bds-item-box"><table id="{%$resIndex%}" class="result" cellpadding="0" cellspacing="0" mu="{%get_mu originUrl=$res.offsetInfo.url encryptionUrl=$res.encryptionUrl%}" tpl="se_st_single_video_section"> <style type="text/css">.st_single_video a{display:block}.st_single_video div{color:#2d2d2d}</style> <tr> <td class="f st_single_video"> <a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click ="{'F':'{%$res.strategyStr[0]%}','F1':'{%$res.strategyStr[1]%}','F2':'{%$res.strategyStr[2]%}','F3':'{%$res.strategyStr[3]%}','T':'{%$serverTime%}','y':'{%$res.identifyStr%}'}"> <h3 class="t">{%$res.offsetInfo.title|limitlen:60|highlight:2%}</h3> <div> <font> {%*时长-清晰度-语言*%} {%if $res.dispData.single_video.time || $res.dispData.single_video.resolution || $res.dispData.single_video.language%} <p style="color:#666"> {%if $res.dispData.single_video.time && $res.dispData.single_video.time|string_format:'%d' > 0 && $res.dispData.single_video.time|string_format:'%d' < 360%} 时长: {%$res.dispData.single_video.time|string_format:'%d'%}分钟 {%/if%} {%if $res.dispData.single_video.resolution && strlen($res.dispData.single_video.resolution) > 0%} {%if $res.dispData.single_video.time && $res.dispData.single_video.time|string_format:'%d' > 0 && $res.dispData.single_video.time|string_format:'%d' < 360%} - {%/if%} {%$res.dispData.single_video.resolution|limitlen:20|highlight:2%} {%/if%} {%if $res.dispData.single_video.language && strlen($res.dispData.single_video.language) > 0%} {%if $res.dispData.single_video.time && $res.dispData.single_video.time|string_format:'%d' > 0 && $res.dispData.single_video.time|string_format:'%d' < 360 || $res.dispData.single_video.resolution%} - {%/if%} {%$res.dispData.single_video.language|limitlen:20|highlight:2%} {%/if%} </p> {%/if%} {%if $res.dispData.single_video.category && strlen($res.dispData.single_video.category) > 0%} {%*类型-主演/主持人/主角-导演/嘉宾/作者*%} {%if $res.dispData.single_video.category && ($res.dispData.single_video.type || $res.dispData.single_video.actor || $res.dispData.single_video.director)%} <p> {%if $res.dispData.single_video.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%} {%if $res.dispData.single_video.type && strlen($res.dispData.single_video.type) > 0%} 类型: {%$res.dispData.single_video.type|limitlen:14|highlight:2%}&nbsp;&nbsp; {%/if%} {%/if%} {%if $res.dispData.single_video.category|in_array:['电影电视剧', '电影', '电视剧']%} {%if $res.dispData.single_video.actor && strlen($res.dispData.single_video.actor) > 0%}主演: {%$res.dispData.single_video.actor|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%elseif $res.dispData.single_video.category == '综艺'%} {%if $res.dispData.single_video.host && strlen($res.dispData.single_video.host) > 0%}主持人: {%$res.dispData.single_video.host|limitlen:21|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video.actor && strlen($res.dispData.single_video.actor) > 0%}主持人: {%$res.dispData.single_video.actor|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%elseif $res.dispData.single_video.category == '动漫'%} {%if $res.dispData.single_video.lead && strlen($res.dispData.single_video.lead) > 0%}主角: {%$res.dispData.single_video.lead|limitlen:21|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video.actor && strlen($res.dispData.single_video.actor) > 0%}主角: {%$res.dispData.single_video.actor|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%/if%} {%if $res.dispData.single_video.category|in_array:['电影电视剧', '电影', '电视剧']%} {%if $res.dispData.single_video.director && strlen($res.dispData.single_video.director) > 0%}导演: {%$res.dispData.single_video.director|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%elseif $res.dispData.single_video.category == '综艺'%} {%if $res.dispData.single_video.guest && strlen($res.dispData.single_video.guest) > 0%}嘉宾: {%$res.dispData.single_video.guest|limitlen:21|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video.director && strlen($res.dispData.single_video.director) > 0%}嘉宾: {%$res.dispData.single_video.director|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%elseif $res.dispData.single_video.category == '动漫'%} {%if $res.dispData.single_video.author && strlen($res.dispData.single_video.author) > 0%}作者: {%$res.dispData.single_video.author|limitlen:21|highlight:2%}&nbsp;&nbsp;{%elseif $res.dispData.single_video.director && strlen($res.dispData.single_video.director) > 0%}作者: {%$res.dispData.single_video.director|limitlen:21|highlight:2%}&nbsp;&nbsp;{%/if%} {%/if%} </p> {%/if%} {%*播出时间[未提取]-电视台*%} {%if $res.dispData.single_video.category && $res.dispData.single_video.station%} <p> {%if $res.dispData.single_video.category == '综艺'%} {%if strlen($res.dispData.single_video.station) > 0%}电视台: {%$res.dispData.single_video.station|limitlen:21|highlight:2%}{%/if%} {%/if%} </p> {%/if%} {%*摘要展现逻辑*%} {%if $res.dispData.single_video.category|in_array:['电影电视剧', '电影', '电视剧','综艺','动漫']%} {%if $res.dispData.single_video.category == '综艺'%} {%$single_video_temp_count = 0%} {%if isset($res.dispData.single_video.type) || isset($res.dispData.single_video.actor) || isset($res.dispData.single_video.director) || isset($res.dispData.single_video.host) || isset($res.dispData.single_video.lead) || isset($res.dispData.single_video.guest) || isset($res.dispData.single_video.author) %} {%$single_video_temp_count = $single_video_temp_count + 1%} {%/if%} {%if isset($res.dispData.single_video.station)%} {%$single_video_temp_count = $single_video_temp_count + 1%} {%/if%} {%if !isset($res.dispData.single_video.intro) || strlen($res.dispData.single_video.intro) < 30%} {%if $single_video_temp_count == 1%} {%$res.offsetInfo.summary|limitlen:70|highlight:6%} {%elseif $single_video_temp_count == 0%} {%$res.offsetInfo.summary|limitlen:140|highlight:6%} {%/if%} {%else%} {%if $single_video_temp_count == 1%} {%$res.dispData.single_video.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:70|highlight:6%} {%elseif $single_video_temp_count == 0%} {%$res.dispData.single_video.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:140|highlight:6%} {%/if%} {%/if%} {%else%} {%$single_video_temp_count = 0%} {%if ($res.dispData.single_video.time && $res.dispData.single_video.time|string_format:'%d' > 0 && $res.dispData.single_video.time|string_format:'%d' < 360) || ($res.dispData.single_video.resolution && strlen($res.dispData.single_video.resolution) > 0) || ($res.dispData.single_video.language && strlen($res.dispData.single_video.language) > 0)%} {%$single_video_temp_count = $single_video_temp_count + 1%} {%/if%} {%if isset($res.dispData.single_video.type) || isset($res.dispData.single_video.actor) || isset($res.dispData.single_video.director) || isset($res.dispData.single_video.host) || isset($res.dispData.single_video.lead) || isset($res.dispData.single_video.guest) || isset($res.dispData.single_video.author) %} {%$single_video_temp_count = $single_video_temp_count + 1%} {%/if%} {%if !isset($res.dispData.single_video.intro) || strlen($res.dispData.single_video.intro) < 30%} {%if $single_video_temp_count > 0%} {%$res.offsetInfo.summary|limitlen:70|highlight:6%} {%else%} {%$res.offsetInfo.summary|limitlen:140|highlight:6%} {%/if%} {%else%} {%if $single_video_temp_count > 0%} 剧情: {%$res.dispData.single_video.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:70|highlight:6%} {%else%} 剧情: {%$res.dispData.single_video.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:140|highlight:6%} {%/if%} {%/if%} {%/if%} {%else%} {%if !isset($res.dispData.single_video.time) && !isset($res.dispData.single_video.resolution) && !isset($res.dispData.single_video.language) && (!isset($res.dispData.single_video.intro) || strlen($res.dispData.single_video.intro) < 30)%} <p> {%$res.offsetInfo.summary|highlight:6%} </p> {%else%} {%if isset($res.dispData.single_video.intro) && strlen($res.dispData.single_video.intro) >= 30%} <p> {%$res.dispData.single_video.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''|limitlen:140|highlight:6%} </p> {%else%} <p> {%$res.offsetInfo.summary|highlight:6%} </p> {%/if%} {%/if%} {%/if%} {%else%} <p> {%$res.offsetInfo.summary|highlight:6%} </p> {%/if%} </font> </div> </a> <p class="g"> {%if $res.dispData.DispUrl%} {%$res.dispData.DispUrl|url_bold_html%} {%else%} {%$res.offsetInfo.urlDisplay|url_limit:45:true%} {%/if%} {%display_as_time FactorTimePrecision=$resData.FactorTimePrecision FactorTime=$resData.FactorTime LastModTime=$resData.LastModTime LinkFoundTime=$resData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%} </p> </td> </tr></table><script>bds.comm.tapHighlight($(".st_single_video a"));</script></div></li>{%/function%}