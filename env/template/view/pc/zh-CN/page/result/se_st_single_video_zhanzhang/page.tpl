{%extends 'base.tpl'%} {%block name="result_content"%}{%*$single_video_temp_count结构化字段行数，用于判断摘要截断行数*%}{%$single_video_temp_count=0%}{%*$imageFlag是否有图标志*%}{%$imageFlag=false%}{%*$timeFlag是否有时长字段*%}{%$timeFlag=false%}{%function summary_display%}{%if $imageFlag%}{%*有图*%}{%if $single_video_temp_count == 0%}{%$dsp_summary|limitlen:225|highlight:6%}{%elseif $single_video_temp_count == 1%}{%$dsp_summary|limitlen:170|highlight:6%}{%elseif $single_video_temp_count == 2%}{%$dsp_summary|limitlen:115|highlight:6%}{%elseif $single_video_temp_count == 3%}{%$dsp_summary|limitlen:55|highlight:6%}{%/if%}{%else%}{%*无图*%}{%if $single_video_temp_count == 0%}{%$dsp_summary|limitlen:150|highlight:6%}{%elseif $single_video_temp_count == 1%}{%if $timeFlag%}{%$dsp_summary|limitlen:150|highlight:6%}{%else%}{%$dsp_summary|limitlen:75|highlight:6%}{%/if%}{%elseif $single_video_temp_count == 2%}{%if $timeFlag%}{%$dsp_summary|limitlen:75|highlight:6%}{%else%}{%/if%}{%elseif $single_video_temp_count == 3%}{%/if%}{%/if%}{%/function%}{%if $tplData.single_video_zhanzhang.category && $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language || $tplData.single_video_zhanzhang.type || $tplData.single_video_zhanzhang.actor || $tplData.single_video_zhanzhang.host || $tplData.single_video_zhanzhang.main_actor || $tplData.single_video_zhanzhang.director || $tplData.single_video_zhanzhang.guest || $tplData.single_video_zhanzhang.author || $tplData.single_video_zhanzhang.TV_station || $tplData.single_video_zhanzhang.intro%}{%if $tplData.single_video_zhanzhang.image%}<style>{%fe_fn_rs_c_css css='img'%}
                        .image_single_video {height:91px;overflow:hidden;position:relative;}
                        .image_single_video img {height:91px;}
                        .image_single_video span {display:block;font-size:0;position:absolute;left:5px;bottom:5px;}</style>{%/if%}{%/if%}{%else%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language%}{%if $tplData.single_video_zhanzhang.image%}<style>{%fe_fn_rs_c_css css='img'%}
                        .image_single_video {height:91px;overflow:hidden;position:relative;}
                        .image_single_video img {height:91px;}
                        .image_single_video span {display:block;font-size:0;position:absolute;left:5px;bottom:5px;}</style>{%/if%}{%/if%}{%/if%}<h3 class="t">{%$titleUrl = {%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}<a href="{%$titleUrl|escape%}" target="_blank" data-click="{'F':'{%$tplData.classicInfo.strategyStr[0]%}','F1':'{%$tplData.classicInfo.strategyStr[1]%}','F2':'{%$tplData.classicInfo.strategyStr[2]%}','F3':'{%$tplData.classicInfo.strategyStr[3]%}','T':'{%$serverTime%}','y':'{%$tplData.classicInfo.identifyStr%}'}">{%$tplData.classicInfo.title|limitlen:60|highlight:2%}</a></h3><div class="c-row c-gap-top-small">{%if $tplData.single_video_zhanzhang.category && $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language || $tplData.single_video_zhanzhang.type || $tplData.single_video_zhanzhang.actor || $tplData.single_video_zhanzhang.host || $tplData.single_video_zhanzhang.main_actor || $tplData.single_video_zhanzhang.director || $tplData.single_video_zhanzhang.guest || $tplData.single_video_zhanzhang.author || $tplData.single_video_zhanzhang.TV_station || $tplData.single_video_zhanzhang.intro%}{%if $tplData.single_video_zhanzhang.image%}<a href="{%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}" class="image_single_video c-span6" target="_blank"><img src="{%$tplData.single_video_zhanzhang.image%}" alt="" class="c-img c-img6" /><span class="c-icon c-icon-play-black"></span></a>{%$imageFlag=true%}{%/if%}{%/if%}{%else%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language%}{%if $tplData.single_video_zhanzhang.image%}<a href="{%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}" class="image_single_video c-span6" target="_blank"><img src="{%$tplData.single_video_zhanzhang.image%}" alt="" class="c-img c-img6" /><span class="c-icon c-icon-play-black"></span></a>{%$imageFlag=true%}{%/if%}{%/if%}{%/if%}{%if $tplData.single_video_zhanzhang.category && $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language || $tplData.single_video_zhanzhang.type || $tplData.single_video_zhanzhang.actor || $tplData.single_video_zhanzhang.host || $tplData.single_video_zhanzhang.main_actor || $tplData.single_video_zhanzhang.director || $tplData.single_video_zhanzhang.guest || $tplData.single_video_zhanzhang.author || $tplData.single_video_zhanzhang.TV_station || $tplData.single_video_zhanzhang.intro%}{%if $tplData.single_video_zhanzhang.image%}<div class="c-span18 c-span-last">{%/if%}{%/if%}{%else%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language%}{%if $tplData.single_video_zhanzhang.image%}<div class="c-span18 c-span-last">{%/if%}{%/if%}{%/if%}<font size="-1">{%*时长-清晰度-语言*%}{%*当有时长字段且字段为合法值时才显示 时长-清晰度-语言 行*%}{%if $tplData.single_video_zhanzhang.time && $tplData.single_video_zhanzhang.time|intval > 0 && $tplData.single_video_zhanzhang.time|intval < 360%}<p style="color:#666">时长:&nbsp;{%if is_numeric(trim($tplData.single_video_zhanzhang.time))%}{%$tplData.single_video_zhanzhang.time|string_format:'%d'%}分钟{%else%}{%$tplData.single_video_zhanzhang.time|escape%}{%/if%}{%if $tplData.single_video_zhanzhang.resolution && strlen($tplData.single_video_zhanzhang.resolution) > 0%}&nbsp;-&nbsp;{%$tplData.single_video_zhanzhang.resolution|limitlen:20|highlight:2%}{%/if%}{%if $tplData.single_video_zhanzhang.language && strlen($tplData.single_video_zhanzhang.language) > 0%}&nbsp;-&nbsp;{%$tplData.single_video_zhanzhang.language|limitlen:20|highlight:2%}{%/if%}</p>{%$single_video_temp_count= $single_video_temp_count +1%}{%$timeFlag=true%}{%/if%}{%if $tplData.single_video_zhanzhang.category && strlen($tplData.single_video_zhanzhang.category) > 0%}{%*类型-主演/主持人/主角-导演/嘉宾/作者*%}{%if $tplData.single_video_zhanzhang.category && ($tplData.single_video_zhanzhang.type || $tplData.single_video_zhanzhang.actor || $tplData.single_video_zhanzhang.director)%}<p>{%if $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $tplData.single_video_zhanzhang.type && strlen($tplData.single_video_zhanzhang.type) > 0%}类型:&nbsp;{%$tplData.single_video_zhanzhang.type|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%/if%}{%/if%}{%if $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧']%}{%if $tplData.single_video_zhanzhang.actor && strlen($tplData.single_video_zhanzhang.actor) > 0%}主演:&nbsp;{%$tplData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%/if%}{%elseif $tplData.single_video_zhanzhang.category == '综艺'%}{%if $tplData.single_video_zhanzhang.host && strlen($tplData.single_video_zhanzhang.host) > 0%}主持人:&nbsp;{%$tplData.single_video_zhanzhang.host|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%elseif $tplData.single_video_zhanzhang.actor && strlen($tplData.single_video_zhanzhang.actor) > 0%}主持人:&nbsp;{%$tplData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%/if%}{%elseif $tplData.single_video_zhanzhang.category == '动漫'%}{%if $tplData.single_video_zhanzhang.main_actor && strlen($tplData.single_video_zhanzhang.main_actor) > 0%}主角:&nbsp;{%$tplData.single_video_zhanzhang.main_actor|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%elseif $tplData.single_video_zhanzhang.actor && strlen($tplData.single_video_zhanzhang.actor) > 0%}主角:&nbsp;{%$tplData.single_video_zhanzhang.actor|limitlen:14|highlight:2%}&nbsp;&nbsp;&nbsp;{%/if%}{%/if%}{%if $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧']%}{%if $tplData.single_video_zhanzhang.director && strlen($tplData.single_video_zhanzhang.director) > 0%}导演:&nbsp;{%$tplData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%elseif $tplData.single_video_zhanzhang.category == '综艺'%}{%if $tplData.single_video_zhanzhang.guest && strlen($tplData.single_video_zhanzhang.guest) > 0%}嘉宾:&nbsp;{%$tplData.single_video_zhanzhang.guest|limitlen:14|highlight:2%}{%elseif $tplData.single_video_zhanzhang.director && strlen($tplData.single_video_zhanzhang.director) > 0%}嘉宾:&nbsp;{%$tplData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%elseif $tplData.single_video_zhanzhang.category == '动漫'%}{%if $tplData.single_video_zhanzhang.author && strlen($tplData.single_video_zhanzhang.author) > 0%}作者:&nbsp;{%$tplData.single_video_zhanzhang.author|limitlen:14|highlight:2%}{%elseif $tplData.single_video_zhanzhang.director && strlen($tplData.single_video_zhanzhang.director) > 0%}作者:&nbsp;{%$tplData.single_video_zhanzhang.director|limitlen:14|highlight:2%}{%/if%}{%/if%}</p>{%$single_video_temp_count= $single_video_temp_count +1%}{%/if%}{%*播出时间[未提取]-电视台*%}{%if $tplData.single_video_zhanzhang.category && $tplData.single_video_zhanzhang.TV_station%}<p>{%if $tplData.single_video_zhanzhang.category == '综艺'%}{%if strlen($tplData.single_video_zhanzhang.TV_station) > 0%}电视台:&nbsp;{%$tplData.single_video_zhanzhang.TV_station|limitlen:21|highlight:2%}{%/if%}{%/if%}</p>{%$single_video_temp_count= $single_video_temp_count +1%}{%/if%}{%*摘要展现逻辑*%}{%if $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电影', '电视剧','综艺','动漫']%}{%if $tplData.single_video_zhanzhang.category == '综艺'%}{%if !isset($tplData.single_video_zhanzhang.intro) || strlen($tplData.single_video_zhanzhang.intro) < 30%}{%summary_display dsp_summary=$tplData.classicInfo.summary%}{%else%}{%$intro = $tplData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''%}{%summary_display dsp_summary=$intro%}{%/if%}{%else%}{%if !isset($tplData.single_video_zhanzhang.intro) || strlen($tplData.single_video_zhanzhang.intro) < 30%}{%summary_display dsp_summary=$tplData.classicInfo.summary%}{%else%}剧情:&nbsp;{%$intro = $tplData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''%}{%summary_display dsp_summary=$intro%}{%/if%}{%/if%}{%else%}{%if !isset($tplData.single_video_zhanzhang.time) && !isset($tplData.single_video_zhanzhang.resolution) && !isset($tplData.single_video_zhanzhang.language) && (!isset($tplData.single_video_zhanzhang.intro) || strlen($tplData.single_video_zhanzhang.intro) < 30)%}<p>{%summary_display dsp_summary=$tplData.classicInfo.summary%}</p>{%else%}{%if isset($tplData.single_video_zhanzhang.intro) && strlen($tplData.single_video_zhanzhang.intro) >= 30%}<p>{%$intro = $tplData.single_video_zhanzhang.intro|regex_replace:'/(\s|\&nbsp\;|　|\xc2\xa0)/':''%}{%summary_display dsp_summary=$intro%}</p>{%else%}<p>{%summary_display dsp_summary=$tplData.classicInfo.summary%}</p>{%/if%}{%/if%}{%/if%}{%else%}<p>{%summary_display dsp_summary=$tplData.classicInfo.summary%}</p>{%/if%}<div class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_limit:28:true|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:28:true%}{%/if%}&nbsp;{%rs_display_as_time FactorTimePrecision=$resData.FactorTimePrecision FactorTime=$resData.FactorTime LastModTime=$resData.LastModTime LinkFoundTime=$resData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}{%if $tplData.classicInfo.docType < 0%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%}target="_blank"{%/if%} class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</div></font>{%if $tplData.single_video_zhanzhang.category && $tplData.single_video_zhanzhang.category|in_array:['电影电视剧', '电视剧', '电影', '综艺', '动漫']%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language || $tplData.single_video_zhanzhang.type || $tplData.single_video_zhanzhang.actor || $tplData.single_video_zhanzhang.host || $tplData.single_video_zhanzhang.main_actor || $tplData.single_video_zhanzhang.director || $tplData.single_video_zhanzhang.guest || $tplData.single_video_zhanzhang.author || $tplData.single_video_zhanzhang.TV_station || $tplData.single_video_zhanzhang.intro%}{%if $tplData.single_video_zhanzhang.image%}</div>{%/if%}{%/if%}{%else%}{%if $tplData.single_video_zhanzhang.time || $tplData.single_video_zhanzhang.resolution || $tplData.single_video_zhanzhang.language%}{%if $tplData.single_video_zhanzhang.image%}</div>{%/if%}{%/if%}{%/if%}</div>{%/block%}