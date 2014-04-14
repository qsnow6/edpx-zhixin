{%extends 'base_classic.tpl'%} {%block name="result_title"%}{%if $tplData.ASURL%}{%$titleUrl = {%rs_enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$tplData.classicInfo.url|vui_escape:'url'`"%}%}{%else%}{%if $tplData.comm_titleUrl%}{%$titleUrl = {%rs_enc_url url=$tplData.comm_titleUrl%}%}{%else%}{%$titleUrl = {%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}{%/if%}{%/if%}<h3 class="t">{%if $tplData.classicInfo.docType >= 0&& !$tplData.comm_hideDocType%}<font size=-1 color={%$style_link_color%}><b>{%$tplData.classicInfo.docTypeBrief%}</b></font>{%/if%}{%if isset($tplData.comm_docType)%}<span class="c-icon c-icon-{%$tplData.comm_docType%} c-gap-icon-right-small"></span>{%/if%}<a 
	{%if $tplData.FavURL%}class="favurl" style="background-image:url({%$tplData.FavURL%})" fav-url="{%$tplData.FavURL%}"{%/if%}
        data-click="{
			'F':'{%$tplData.classicInfo.strategyStr[0]%}',
			'F1':'{%$tplData.classicInfo.strategyStr[1]%}',
			'F2':'{%$tplData.classicInfo.strategyStr[2]%}',
			'F3':'{%$tplData.classicInfo.strategyStr[3]%}',
			'T':'{%$serverTime%}',
			{%if $tplData.ASURL%}
			'url':'{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}',
			{%/if%}
			'y':'{%$tplData.classicInfo.identifyStr%}'
			{%if $tplData.ASRES && $tplData.ASRES == 1%}
				,'rsv_ism':'{%$tplData.ASRES%}'
			{%/if%} 
			{%if $tplData.extQuery%}
				,'rsv_sug9':'{%$tplData.extQuery|escape:'javascript'|escape:'html'%}'
			{%/if%}
			}"
        href = "{%$titleUrl|escape%}"

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%$titleLen = 63%}{%*原收藏title截断逻辑*%}{%if $isFavoOn == 1%}{%if $tplData.FavURL%}{%if $isUserLogin == 1%}{%$titleLen = $titleLen - 7%}{%*$tplData.classicInfo.title|limitlen:56|highlight:2*%}{%else%}{%$titleLen = $titleLen - 3%}{%*$tplData.classicInfo.title|limitlen:60|highlight:2*%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$titleLen = $titleLen - 4%}{%*$tplData.classicInfo.title|limitlen:59|highlight:2*%}{%else%}{%$titleLen = $titleLen - 0%}{%*$tplData.classicInfo.title|limitlen:63|highlight:2*%}{%/if%}{%/if%}{%else%}{%if $tplData.FavURL%}{%$titleLen = $titleLen - 3%}{%*$tplData.classicInfo.title|limitlen:60|highlight:2*%}{%else%}{%$titleLen = $titleLen - 0%}{%*$tplData.classicInfo.title|limitlen:63|highlight:2*%}{%/if%}{%/if%}{%*官网标，占9字符位置*%}{%if $tplData.strategybits.OFFICIALPAGE_FLAG || $tplData.sublink.is_main%}{%$titleLen = $titleLen - 9%}{%/if%}{%*title右侧通用提示，目前只有风险标，占6字符位置*%}{%if isset($resHintData.hints.titleRight)%}{%$titleLen = $titleLen - 6%}{%/if%}{%$tplData.classicInfo.title|limitlen:"$titleLen"|highlight:2%}</a>{%block name="result_title_right"%}{%if $tplData.strategybits.OFFICIALPAGE_FLAG || $tplData.sublink.is_main%}<a href="http://guanwang.baidu.com/vcard/officialsite/" target="_blank" class="icon-gw">官网</a>{%/if%}{%/block%}{%if isset($resHintData.hints.titleRight)%}{%*url级别通用提示*%}{%foreach $resHintData.hints.titleRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%*认证类提示聚合展示*%}{%if $resHint.templateName == "res_hint_certification"%}{%$resHitCluster = 1%}{%/if%}{%/foreach%}{%/if%}</h3>{%/block%}{%block name="result_subtitle"%}{%if count($resHintData.hints.titleBottom) > 0%}{%*标题下方通用提示*%}{%foreach $resHintData.hints.titleBottom as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%if $resHint.templateName == "res_hint_unsafe"%}{%$resHitUnSafe =1%}{%/if%}{%/foreach%}{%else%}{%fis_widget_inline%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$safestr = ""%}{%foreach $tplData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$safestr = "`$safetips[$subArr.typeID]`|`$safestr`"%}{%/if%}{%/foreach%}{%if $safestr%}{%$bdFlag = stripos($safestr,"bd")%}{%$scFlag = stripos($safestr,"sc")%}{%$qqFlag = stripos($safestr,"qq")%}{%$jsFlag = stripos($safestr,"js")%}{%$hsFlag = stripos($safestr,"hs")%}<div class="unsafe_content f13"><a href="{%rs_enc_url url="http://www.baidu.com/cache/spam/safe_tip2.html?`$tplData.classicInfo.url|vui_escape:'url'|cat:"&data="|cat:$safestr`"%}" target="_blank" id="unsafe_{%$resIndex%}" data-safe="{%$safestr%}" class="unsafe_ico"><span class="unsafe_txttip">风险</span>{%if $qqFlag !==FALSE %}腾讯电脑管家提醒您：{%elseif $jsFlag !==FALSE && $bdFlag ===FALSE && $scFlag ===FALSE && $qqFlag === FALSE && $hsFlag === FALSE%}金山云安全提醒您：{%else%}安全联盟提醒您：{%/if%}该网站可能存在安全风险，请谨慎访问！</a></div>{%/if%}{%/fis_widget_inline%}{%/if%}{%if $tplData.comm_general_pic.url%}<div class="c-row c-gap-top-small"><div class="general_image_pic c-span{%$COMM_GRID_PARAM%}"><a style="height:{%if isset($tplData.comm_generaPicHeight)%}{%$tplData.comm_generaPicHeight|escape%}{%else%}75px{%/if%}"
      {%*TODO出风险提示修改链接*%}
          href="{%rs_get_url token=$tplData.classicInfo.productType originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}"
      {%if !($urlPara.ct & 0x40000)%}
          target="_blank"
      {%/if%}><img src="{%$tplData.comm_general_pic.url%}" style="height:{%if isset($tplData.comm_generaPicHeight)%}{%$tplData.comm_generaPicHeight|escape%}{%else%}{%$COMM_IMG_HEIGHT%}{%/if%};" /></a></div><div class="c-span{%24-$COMM_GRID_PARAM%} c-span-last">{%/if%}{%*展现副标题*%}{%if $tplData.comm_subtitles%}<p class="f13">{%foreach array_slice($tplData.comm_subtitles, 0, {%$COMM_SUBTITLE_SIZE%}) as $subtitle%}<span{%if $subtitle@index%} style="margin-left:17px;"{%/if%}>{%if $subtitle.key%}{%$subtitle.key|limitlen:12|escape%}：{%/if%}{%$subtitle.value|limitlen:18|escape%}</span>{%/foreach%}{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}</p>{%else%}{%*以下为非通用的副标题逻辑*%}{%if !$tplData.comm_hideSubTitleStructure%}{%if $tplData.classicInfo.docType >= 0 && !$tplData.comm_hideDocType%}<p class="f13"><span class=c>{%$lable_doctype1%}</span>{%$tplData.classicInfo.docTypeDetail%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}>{%$lable_doctype2%}</a></p>{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%*点评类结构化数据*%}{%if $tplData.templateName%}{%if $tplData.templateName == 'se_st_store'%}{%fis_widget_inline%}{%$enableStore = true%}{%if array_key_exists("commendnum",$tplData.store) && $tplData.store.commendnum<10%}{%$enableStore = false%}{%/if%}{%if $enableStore%}{%$totalScore = ($tplData.store.totalscore)?$tplData.store.totalscore:5%}{%if isset($tplData.store.score) && $tplData.store.score > 0 && $totalScore > 0%}<style>.score {margin-top:4px;line-height:14px;font-size:13px;vertical-align:middle;margin-top:0\9}</style><div class="score" id="score_{%$resIndex%}"><span class="m"><span class="c-icon c-icon-star-gray"><span class="c-icon c-icon-star" style="width:{%round(($tplData.store.score/$totalScore)*100)%}%;"></span></span>&nbsp;评分:{%$tplData.store.score|escape%}/{%$totalScore|escape%}</span></div>{%/if%}{%/if%}{%/fis_widget_inline%}{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%/if%}{%*Blog 和 BBS特型*%}{%if $tplData.StdStg==1000 || $tplData.StdStg==1001 || $tplData.StdStg == 13%}{%fis_widget_inline%}{%*blog特型展现*%}{%if $tplData.StdStg==1001%}{%if $tplData.BLOGCommentCount%}{%if $tplData.BLOGCommentCount>0%}<div class="blog f13">{%$tplData.BLOGCommentCount|vui_escape:'html'%}条评论{%if $tplData.BLOGPostTime%}&nbsp;-&nbsp;发文时间:&nbsp;{%$tplData.BLOGPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/if%}{%*BBS特型展现*%}{%if $tplData.StdStg == 1000%}{%if $tplData.BBSRecount || $tplData.BBSPostTime%}<div class="bbs f13">{%if $tplData.BBSRecommended==1%}精华帖{%if $tplData.BBSRecount || $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%/if%}{%if $tplData.BBSRecount%}{%$tplData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $tplData.BBSRecount && $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $tplData.BBSPostTime%}发帖时间:&nbsp;{%$tplData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%*贴吧特型展现*%}{%if $tplData.StdStg == 13%}{%if $tplData.BBSRecount || $tplData.BBSPostTime%}<div class="bbs f13">{%if $tplData.BBSRecount%}{%$tplData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $tplData.BBSRecount && $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $tplData.BBSPostTime%}发帖时间:&nbsp;{%$tplData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/fis_widget_inline%}{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%if $tplData.notice_info%}<p class="f13">{%if $tplData.notice_info.notice1%}{%$tplData.notice_info.notice1|escape:'html'%}{%/if%}{%if $tplData.notice_info.notice2%}<span style="color:#999">({%$tplData.notice_info.notice2|escape:'html'%})</span>{%/if%}</p>{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%*文库类评分*%}{%if isset($tplData.WenkuValue) && $tplData.WenkuValue != 0%}<p style="padding-top:3px;"><span class="m"><span class="c-icon c-icon-star-gray"><span class="c-icon c-icon-star" style="width:{%round($tplData.WenkuValue*10)%}%;"></span></span>&nbsp;评分:{%$tplData.WenkuValue/2%}/5&nbsp;{%if isset($tplData.WenkuPage)%}{%$tplData.WenkuPage%}页{%/if%}</span></p>{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%*一般类型结构化摘要*%}{%if $tplData.comm_subtitle_structure%}<p class="f13 m">{%if $tplData.comm_original%}<i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>原创</span><b>]</b></i>{%/if%}{%$tplData.comm_subtitle_structure|escape%}</p>{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%/if%}{%/if%}{%block name="inc_subtitle_ext"%}{%/block%}{%/block%}{%block name="result_abstract"%}<div class="c-abstract">{%if $tplData.comm_sup_summary%}<p>{%if $tplData.comm_sup_summary_pre%}<span class="m">{%$tplData.comm_sup_summary_pre%}</span>{%/if%}{%if $tplData.comm_general_pic.url%}{%$tplData.comm_sup_summary|limitlen:60|highlight:6%}{%else%}{%$tplData.comm_sup_summary|limitlen:138|highlight:6%}{%/if%}</p>{%$subTitleStructureLenNumber = $subTitleStructureLenNumber +1%}{%/if%}{%block name="inc_summary_limitlen"%}{%if $tplData.comm_general_pic.url%}{%*是否出图和标题下方结构化摘要行数不同，摘要截断长度不同*%}{%if $subTitleStructureLenNumber >=1%}{%$summary_limitlen=120%}{%else%}{%$summary_limitlen=180%}{%/if%}{%else%}{%if $subTitleStructureLenNumber >=1%}{%$summary_limitlen=160%}{%else%}{%$summary_limitlen=240%}{%/if%}{%/if%}{%/block%}{%if $tplData.comm_summary_pre%}{%$summary_limitlen = $summary_limitlen - $tplData.comm_summary_pre|string_display_len%}{%/if%}{%if !$tplData.comm_hideSummary%}{%if $tplData.general_pic.hasPicType == "21"%}<i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>图文</span><b>]</b></i>{%/if%}{%if $tplData.TimeFactor && strlen($tplData.TimeFactor) > 0&& !$tplData.comm_hideTimeFactor%}<span class="m">{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.TimeFactor|regex_replace:"/\s-\s/":"&nbsp;" lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}-&nbsp;</span>{%/if%}{%if $tplData.comm_summary_pre%}<span class="m">{%$tplData.comm_summary_pre%}</span>{%/if%}{%$tplData.classicInfo.summary|limitlen:$summary_limitlen|highlight:6%}{%/if%}{%if isset($tplData.comm_summary_escaped)%}{%$tplData.comm_summary_escaped%}{%/if%}{%if count($tplData.comm_subtag)>0%}{%if $tplData.general_pic.url%}{%$tagMaxLen=60%}{%else%}{%$tagMaxLen=80%}{%/if%}<p>{%if $tplData.comm_subtag_label%}{%$tplData.comm_subtag_label|escape%}{%/if%}{%if $tplData.comm_subtag_label%}{%$slinklength=$tplData.comm_subtag_label|string_display_len%}{%else%}{%$slinklength=0%}{%/if%}{%foreach $tplData.comm_subtag as $tagitem%}{%*计算tag子链总长度*%}{%$slinklength = $slinklength + $tagitem.txt|limitlen:18|string_display_len%}{%if $slinklength > $tagMaxLen%}{%*保持子链的展现长度之和小于指定长度*%}{%break%}{%/if%}{%if !$tagitem@first%}&nbsp;{%if $tplData.comm_subtag_break%}{%$tplData.comm_subtag_break|escape%}{%/if%}&nbsp;{%/if%}<a href="{%rs_enc_url url="`$tagitem.url`"%}" target="_blank" title="{%$tagitem.txt|escape%}">{%$tagitem.txt|limitlen:18|highlight:4%}</a>{%/foreach%}</p>{%/if%}</div>{%/block%}{%block name="result_label"%}{%fis_widget_inline%}{%$isICP = "0"%}{%foreach $queryInfo.promptNode as $idLen%}{%if $idLen.id == '1001'%}{%$isICP = "1"%}{%/if%}{%/foreach%}{%if $isICP == "1"%}{%$infoICP['20011'] = "个人网站"%}{%$infoICP['20012'] = "企业网站"%}{%$infoICP['20013'] = "军队网站"%}{%$infoICP['20014'] = "政府机关网站"%}{%$infoICP['20015'] = "事业单位网站"%}{%$infoICP['20016'] = "社会团体网站"%}{%$infoICP['20018'] = "个人发布"%}{%$strICP = "暂无备案信息"%}<p class="icp_info f13">{%foreach $tplData.addSubArr as $subArr%}{%if $infoICP[$subArr.typeID]%}{%$strICP = "备案信息：`$infoICP[$subArr.typeID]`"%}{%/if%}{%/foreach%}{%$strICP%}</p>{%/if%}{%/fis_widget_inline%}{%/block%}{%block name="result_info"%}<div class="f13">{%block name="result_attach_address_before"%}{%/block%}<span class="g">{%block name="result_attach_showurl"%}{%$showUrlLimitLen=25%}{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_show_encrypt:$titleUrl|url_limit:$showUrlLimitLen:true|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_show_encrypt:$titleUrl|url_limit:$showUrlLimitLen:true%}{%/if%}&nbsp;{%/block%}{%block name="result_attach_showtime"%}{%*showurl后时间显示逻辑*%}{%if $tplData.newTimeFactor%}{%date("Y-m-d", $tplData.newTimeFactor)%}{%else%}{%if $tplData.TimeFactor && strlen($tplData.TimeFactor) > 0 && $tplData.classicInfo.timeShow && strlen($tplData.classicInfo.timeShow) > 0%}{%$tplData.classicInfo.timeShow%}{%else%}{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}{%/if%}{%/if%}{%/block%}&nbsp;</span>{%block name="result_showtime_right"%}{%/block%}{%*小功能菜单*%}{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}<span class="c-icons-outer"><span class="c-icons-inner">{%*基础V和安全联盟下线*%}{%if isset($resHintData.hints.showTimeRight)%}{%*url级别通用提示*%}{%foreach $resHintData.hints.showTimeRight  as $resHint%}{%display_res_hint widgetName=$resHint.templateName%}{%*认证类提示聚合展示*%}{%if $resHint.templateName == "res_hint_certification"%}{%$resHitCluster = 1%}{%/if%}{%/foreach%}{%/if%}</span></span>{%if $isOldSnapshootOn%}{%if !$tplData.comm_hideSnapShoot%}{%if strlen($tplData.classicInfo.snapshootKey) > 0%}&nbsp;-&nbsp;<a data-nolog href="{%$cache_domain%}/c?{%$tplData.classicInfo.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
		{%if !($urlPara.ct & 0x40000)%}
				target="_blank" 
        {%/if%}
            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%/if%}{%fis_widget_inline%}{%if $tplData['womcEntranceFilter']  == 1%}&nbsp;-&nbsp;<a href="http://www.baidu.com/tools?url={%$titleUrl|escape:'url'%}&jump=http%3A%2F%2Fkoubei.baidu.com%2Fwomc%2Fp%2Fsentry%3Ftitle%3D{%$tplData.classicInfo.title|escape:'url'%}%26q%3D{%$queryEnc%}&key=surl" target="_blank" class="m">邀您点评</a>{%/if%}{%if $tplData['womcComtEntranceFilter1']  == 1%}&nbsp;-&nbsp;<a href="http://www.baidu.com/tools?url={%$titleUrl|escape:'url'%}&jump=http%3A%2F%2Fkoubei.baidu.com%2Fwomc%2Fp%2Fsentry%3Ftitle%3D{%$tplData.classicInfo.title|escape:'url'%}%26q%3D{%$queryEnc%}&key=surl" target="_blank" class="m">评价</a>{%/if%}{%if $tplData['womcComtEntranceFilter2']  == 1%}&nbsp;-&nbsp;<a href="http://www.baidu.com/tools?url={%$titleUrl|escape:'url'%}&jump=http%3A%2F%2Fkoubei.baidu.com%2Fwomc%2Fp%2Fsentry%3Ftitle%3D{%$tplData.classicInfo.title|escape:'url'%}%26q%3D{%$queryEnc%}&key=surl" target="_blank" class="m c-icon c-icon-write" title="评价"></a>{%/if%}{%/fis_widget_inline%}{%fis_widget_inline%}{%foreach $tplData.addSubArr as $subArr%}{%if $subArr.typeID == '10004' && $resIndex == 1%}<script>bds.se.addToHome = true;</script>{%/if%}{%/foreach%}{%/fis_widget_inline%}</div>{%/block%}{%block name="result_attach"%}{%if $tplData.comm_general_pic.url%}</div></div>{%/if%}{%block name="inc_sublink_pre_ext"%}{%/block%}{%if $tplData.comm_sublink%}{%*结果出图，子链无缩进*%}<div {%if !$tplData.comm_general_pic.url%}class="c-offset"{%/if%}>{%$subLinkArray = array()%}{%foreach $tplData.comm_sublink as $sublink_item%}{%if $sublink_item.title%}{%*子链截断最长75*%}{%$lenlimit=75%}{%if isset($sublink_item.col1)%}{%$lenlimit=55%}{%/if%}{%if isset($sublink_item.col2)%}{%$lenlimit=44%}{%/if%}{%$tmpRow =array()%}{%if isset($sublink_item.titleSuffix)%}{%$tmpRow['col0']=$sublink_item.title|limitlen:"$lenlimit"|highlight:4|cat:$sublink_item.titleSuffix%}{%else%}{%$tmpRow['col0']=$sublink_item.title|limitlen:"$lenlimit"|highlight:4%}{%/if%}{%if $sublink_item.url%}{%$tmpRow['col0link']=$sublink_item.url%}{%/if%}{%if isset($sublink_item.col1)%}{%$tmpRow['col1']=$sublink_item.col1%}{%/if%}{%if isset($sublink_item.col2)%}{%$tmpRow['col2']=$sublink_item.col2%}{%/if%}{%if isset($sublink_item.col2type)%}{%$tmpRow['col2type']=$sublink_item.col2type%}{%/if%}{%$tmp=array_push($subLinkArray,$tmpRow)%}{%/if%}{%/foreach%}{%subLink_factory subLinkArr =$subLinkArray alignType=$tplData.comm_sublink_align colNum=$tplData.comm_sublink_colNum%}{%if $tplData.comm_sublink_more%}{%if $tplData.comm_sublink_more.mergeQuery%}{%$queryEscaped = $query|escape:url%}{%$searchUrl=$tplData.comm_sublink_more.queryPre|cat:$queryEscaped|cat:$tplData.comm_sublink_more.querySuffix%}{%else%}{%$searchUrl=$tplData.comm_sublink_more.queryPre%}{%/if%}<a href="{%rs_enc_url url=$searchUrl%}" target="_blank" class="c">{%$tplData.comm_sublink_more.text%}</a>{%/if%}</div>{%/if%}{%if $tplData.extQuery && !$tplData.comm_hideExtQuery%}<div style="display:none;padding:3px 0 0 0" class="extquery" data-extquery="{%$tplData.extQuery|vui_escape:'html'%}"><a href="{%build_search_url params="rsv_crq=1&wd=`$tplData.extQuery|vui_escape:'url'`" exclude="pn"%}" target="_blank" style="font-size:13px;font-weight:bold;">{%$tplData.disQuery|highlight:2%}</a></div>{%/if%}{%/block%}