{%function name="fis_widget_baidu_se_as_section2"%}<li class="bds-list" id="{%$resIndex%}" {%if $res.dispData.ASURL%} mu="{%$res.offsetInfo.url%}" {%/if%} tpl="se_as_default_section2"><div class="bds-item-box"><a {%if $needubs == 1%} data-click="{    'F':'{%$res.strategyStr[0]%}',    'F1':'{%$res.strategyStr[1]%}',    'F2':'{%$res.strategyStr[2]%}',    'F3':'{%$res.strategyStr[3]%}',    'T':'{%$serverTime%}',    {%if $res.dispData.ASURL%}    'url':'{%$res.offsetInfo.urlEncoded%}',    {%else%}    'url':this.href,    {%/if%}    'y':'{%$res.identifyStr%}'    {%if $res.dispData.ASRES%}    {%if $res.dispData.ASRES == 1%}     {%if $needubs == 1%}     ,'rsv_ism':'{%$res.dispData.ASRES%}'    {%/if%}     {%/if%}     {%/if%}    }" {%/if%} {%if $res.dispData.ASURL%} href ="{%enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$res.offsetInfo.url|vui_escape:'url'`"%}" {%else%} href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" {%/if%} {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}><h3 {%if $res.dispData.FavURL%} class="bds-favurl" style="background-image:url({%$res.dispData.FavURL%})" {%/if%} {%*fave-icon*%}>{%if $res.docType >= 0%}<span><strong style="color:{%$style_link_color%};font-weight:normal;">{%$res.docTypeBrief%}</strong></span>{%/if%} {%*fave-icon，占3字符位置*%} {%*官网标，占6字符位置*%} {%*title右侧通用提示，目前只有风险标，占6字符位置*%} {%$curLen = (($res.dispData.FavURL)?3:0)+(($res.dispData.strategybits.OFFICIALPAGE_FLAG || $res.dispData.sublink.is_main)?6:0) + ((isset($resHintData.hints.titleRight))?6:0)%} {%$titleLen = 63 -$curLen%} {%$res.offsetInfo.title|limitlen:"$titleLen"|highlight:2%} {%if $res.dispData.strategybits.OFFICIALPAGE_FLAG || $res.dispData.sublink.is_main%}<span class="bds-icon-gw">官网</span>{%/if%} {%*url级别通用提示*%} {%foreach $resHintData.hints.titleRight  as $resHint%} {%display_res_hint widgetName=$resHint.templateName%} {%/foreach%}</h3> <div>{%if $res.dispData.ASURL%}<div id="danTip_{%$resIndex%}" class="dan_tip">该网站可能因黑客侵入而存在安全风险</div>{%else%} {%foreach $resHintData.hints.titleBottom as $resHint%} {%display_res_hint widgetName=$resHint.templateName%} {%if $resHint.templateName == "res_hint_unsafe"%} {%$resHitUnSafe =1%} {%/if%} {%/foreach%} {%/if%} {%if $res.docType >= 0%}<span style="color:#77c;">{%$lable_doctype1%}</span>{%$res.docTypeDetail%}<br> {%/if%} {%*点评类结构化数据*%}{%if $res.dispData.templateName == 'se_st_store'%}{%widget name="fis_widget_baidu_se_st_store" path="widget/baidu/se_st_store/se_st_store.tpl"%}{%/if%} {%*Blog 和 BBS特型*%}{%if $res.dispData.StdStg==1000 || $res.dispData.StdStg==1001%}{%widget name="fis_widget_baidu_se_as_special" path="widget/baidu/se_as_special/se_as_special.tpl"%}{%/if%} {%if $res.dispData.notice_info%} <p>{%if $res.dispData.notice_info.notice1%}{%$res.dispData.notice_info.notice1|escape:'html'%}{%/if%}{%if $res.dispData.notice_info.notice2%}<span style="color:#999">({%$res.dispData.notice_info.notice2|escape:'html'%})</span>{%/if%}</p> {%/if%}<p> {%if $res.dispData.original.source_name%} <style>.se_st_original{color:#666;display:block}</style> <span class="se_st_original"> <i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>原创</span><b>]</b></i> {%if $res.dispData.original.author%}作者：{%if is_array($res.dispData.original.author)%}{%implode(" ",$res.dispData.original.author)|escape%}{%else%}{%$res.dispData.original.author|escape%}{%/if%}&nbsp;-&nbsp;{%/if%} 来源：{%$res.dispData.original.source_name|escape%} {%if $res.dispData.original.release_time%}&nbsp;-&nbsp;发表时间：{%$res.dispData.original.release_time|escape|date_format:'%Y年%m月%d日'%}{%/if%} </span> {%/if%} {%if $res.dispData.general_pic.hasPicType == "21"%} <i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>图文</span><b>]</b></i> {%/if%} {%if $res.dispData.TimeFactor && strlen($res.dispData.TimeFactor) > 0%} <font style="color:{%$style_snapshot_color%}">{%$res.dispData.TimeFactor%}</font> {%/if%} {%$res.offsetInfo.summary|highlight:6%} </p> </div> </a> {%widget name="fis_widget_baidu_se_as_icp" path="widget/baidu/se_as_icp/se_as_icp.tpl"%} <p class="showurl"> <cite> {%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%} {%/if%} </cite><time>{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}</time> {%*url级别通用提示*%} {%foreach $resHintData.hints.showTimeRight  as $resHint%} {%display_res_hint widgetName=$resHint.templateName%} {%/foreach%}{%if $res.offsetInfo.code neq '简体'%} {%$res.offsetInfo.code%}{%/if%} {%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}- <a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}> {%$lable_cache%}</a>{%/if%}{%/if%}{%*widget name="se_like"*%}</p> {%*搜索结果簇结果展现*%} {%if $res.dispData.AsNormalSubTitle_1%}<ul style="margin-left:1em"> <li> <a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_1%}" target="_blank"> {%$res.dispData.AsNormalSubTitle_1|limitlen:58|highlight:2%} </a> </li> {%if $res.dispData.AsNormalSubTitle_2%} <li> <a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_2%}" target="_blank"> {%$res.dispData.AsNormalSubTitle_2|limitlen:58|highlight:2%} </a> </li> {%/if%} {%if $res.dispData.AsNormalSubTitle_3%} <li> <a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_3%}" target="_blank"> {%$res.dispData.AsNormalSubTitle_3|limitlen:58|highlight:2%} </a> </li> {%/if%} <p> <a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$res.dispData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" class="c">更多{%if $res.dispData.AsClusterRealName%}{%$res.dispData.AsClusterRealName%}{%else%}{%$res.dispData.AsClusterSiteName%}{%/if%}站内相关结果&gt;&gt;</a> </p></ul>{%/if%}{%if $res.dispData.templateName == 'se_st_robots'%}{%widget name="fis_widget_baidu_se_st_robots" path="widget/baidu/se_st_robots/se_st_robots.tpl"%}{%/if%} </div></li>{%/function%}