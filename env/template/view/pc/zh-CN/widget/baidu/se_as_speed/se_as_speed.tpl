{%fis_widget%}<table cellpadding="0" cellspacing="0" class="result{%if $isSameSize==1%} c-res{%/if%}" id="{%$resIndex%}"><tr><td class=f><h3 class="t">{%if $res.docType >= 0%}<font size=-1 color={%$style_link_color%}><b>{%$res.docTypeBrief%}</b></font>{%/if%}<a 
	{%if $res.dispData.FavURL%}class="favurl" style="background-image:url({%$res.dispData.FavURL%})" fav-url="{%$res.dispData.FavURL%}"{%/if%}
        data-click="{
			'F':'{%$res.strategyStr[0]%}',
			'F1':'{%$res.strategyStr[1]%}',
			'F2':'{%$res.strategyStr[2]%}',
			'F3':'{%$res.strategyStr[3]%}',
			'T':'{%$serverTime%}',
			{%if $res.dispData.ASURL%}
			'url':'{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}',
			{%/if%}
			'y':'{%$res.identifyStr%}'
			{%if $res.dispData.ASRES && $res.dispData.ASRES == 1%}
				,'rsv_ism':'{%$res.dispData.ASRES%}'
			{%/if%} 
			}"
		{%if $res.dispData.ASURL%}
        href = "{%enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$res.offsetInfo.url|vui_escape:'url'`"%}"
		{%else%}
		href="{%get_url token=$res.productType originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}"
		{%/if%}

		{%if !($urlPara.ct & 0x40000)%}
            target="_blank"
        {%/if%}
		
		>{%if $isFavoOn == 1%}{%if $res.dispData.FavURL%}{%if $isUserLogin == 1%}{%$res.offsetInfo.title|limitlen:56|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%/if%}{%else%}{%if $isUserLogin == 1%}{%$res.offsetInfo.title|limitlen:59|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}{%else%}{%if $res.dispData.FavURL%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}{%else%}{%$res.offsetInfo.title|limitlen:63|highlight:2%}{%/if%}{%/if%}</a>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3><font size=-1>{%if $res.dispData.ASURL%}<div id="danTip_{%$resIndex%}" class="dan_tip"><a {%if $res.dispData.ASURL%}
                href = "{%enc_url url="http://www.baidu.com/cache/spam/spam_tip.html?`$res.offsetInfo.url|vui_escape:'url'`"%}"
        {%else%}href="{%$res.offsetInfo.urlEncoded%}"{%/if%} target="_blank" data-click="{'rsv_ism':'{%$res.dispData.ASRES%}'}">百度提示您：该网站可能因黑客侵入而存在安全风险</a></div>{%else%}{%fis_widget_inline%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$safestr = ""%}{%foreach $res.dispData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$safestr = "`$safetips[$subArr.typeID]`|`$safestr`"%}{%/if%}{%/foreach%}{%if $safestr%}{%$bdFlag = stripos($safestr,"bd")%}{%$scFlag = stripos($safestr,"sc")%}{%$qqFlag = stripos($safestr,"qq")%}{%$jsFlag = stripos($safestr,"js")%}{%$hsFlag = stripos($safestr,"hs")%}<div class="unsafe_content"><a href="{%enc_url url="http://www.baidu.com/cache/spam/safe_tip2.html?`$res.offsetInfo.url|vui_escape:'url'|cat:"&data="|cat:$safestr`"%}" target="_blank" id="unsafe_{%$resIndex%}" data-safe="{%$safestr%}" class="unsafe_ico"><span class="unsafe_txttip">风险</span>{%if $qqFlag !==FALSE %}腾讯电脑管家提醒您：{%elseif $jsFlag !==FALSE && $bdFlag ===FALSE && $scFlag ===FALSE && $qqFlag === FALSE && $hsFlag === FALSE%}金山云安全提醒您：{%else%}安全联盟提醒您：{%/if%}该网站可能存在安全风险，请谨慎访问！</a></div>{%/if%}{%/fis_widget_inline%}{%/if%}{%if $res.docType >= 0%}<font class=c>{%$lable_doctype1%}</font>{%$res.docTypeDetail%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu" {%if !($urlPara.ct & 0x40000)%} target="_blank" {%/if%}>{%$lable_doctype2%}</a><br>{%/if%}{%*点评类结构化数据*%}{%if  $res.dispData.templateName%}{%if $res.dispData.templateName == 'se_res_store'%}{%fis_widget_inline%}<style>.score{margin-top:4px;line-height:14px;vertical-align:middle;margin-top:0\9}.scoreStar,.scoreMask{vertical-align:top;display:inline-block;overflow:hidden;height:12px;background:url({%$STATIC_DOMAIN_WWW0%}{%$IMG_WWW_SCORE%}) repeat-x;vertical-align:middle\9}.scoreMask{vertical-align:top\9}.scoreStar{width:75px;background-position:0 -12px}.scoreValue{display:inline-block;margin-left:5px;font-size:13px;color:#666;line-height:14px;*vertical-align:baseline}</style><div class="score" id="score_{%$resIndex%}"><span class="scoreStar"><span id="scoreMask_{%$resIndex%}" class="scoreMask"></span></span><span id="scoreValue_{%$resIndex%}" class="scoreValue"></span></div><script type="text/javascript">bds.ready(function(){var score = +"{%$res.dispData.score%}" || 0,totalScore = +"{%$res.dispData.totalscore%}" || 0;if (score<=0 ||totalScore<=0) {$("#score_{%$resIndex%}").get(0).style.display = "none";return;}var value = score * 10 / totalScore;score = Math.round(score * 10) / 10;score = (score == parseInt(score))? parseInt(score) : score ; $("#scoreValue_{%$resIndex%}").get(0).innerHTML = "评分：" + score + "/" + totalScore;$("#scoreMask_{%$resIndex%}").get(0).style.width = parseInt(75 * value / 10) + "px";});</script>{%/fis_widget_inline%}{%/if%}{%if $res.dispData.templateName == 'se_st_store'%}{%widget path="widget/baidu/se_st_store/se_st_store.tpl"%}{%/if%}{%/if%}{%*Blog 和 BBS特型*%}{%if $res.dispData.StdStg==1000 || $res.dispData.StdStg==1001 || $res.dispData.StdStg == 13%}{%fis_widget_inline%}{%*blog特型展现*%}{%if $res.dispData.StdStg==1001%}{%if $res.dispData.BLOGCommentCount%}{%if $res.dispData.BLOGCommentCount>0%}<div class="blog">{%$res.dispData.BLOGCommentCount|vui_escape:'html'%}条评论{%if $res.dispData.BLOGPostTime%}&nbsp;-&nbsp;发文时间:&nbsp;{%$res.dispData.BLOGPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/if%}{%*BBS特型展现*%}{%if $res.dispData.StdStg == 1000%}{%if $res.dispData.BBSRecount || $res.dispData.BBSPostTime%}<div class="bbs">{%if $res.dispData.BBSRecount%}{%$res.dispData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.BBSRecount && $res.dispData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $res.dispData.BBSPostTime%}发帖时间:&nbsp;{%$res.dispData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%*贴吧特型展现*%}{%if $res.dispData.StdStg == 13%}{%if $res.dispData.BBSRecount || $res.dispData.BBSPostTime%}<div class="bbs">{%if $res.dispData.BBSRecount%}{%$res.dispData.BBSRecount|vui_escape:'html'%}条回复{%/if%}{%if $res.dispData.BBSRecount && $res.dispData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $res.dispData.BBSPostTime%}发帖时间:&nbsp;{%$res.dispData.BBSPostTime|vui_escape:'html'%}{%/if%}</div>{%/if%}{%/if%}{%/fis_widget_inline%}{%/if%}{%if $res.dispData.TimeFactor && strlen($res.dispData.TimeFactor) > 0%}<font style="color:#666666">{%$res.dispData.TimeFactor%}</font>{%/if%}{%$res.offsetInfo.summary|highlight:6%}{%if strlen($res.offsetInfo.summary) > 0%}<br>{%/if%}{%*
 * @fileOverview 中航协提示模版
 * @author  不详，郭勇
 * @version 1.0.0（之前本版不详）
 * @date 2012-12-21
 *%}{%fis_widget_inline%}<span class="TipCon"><span class="renzheng ur_hx_rz" onmousedown="return ns_c({'fm':'behs','tab':'zhx'})" hint-data="{'type':'zhx','text':'<a class=&#34;ur_hx_rz_link&#34; href=&#34;http://www.baidu.com/search/verify_help.html#02&#34; target=&#34;_blank&#34;>中航协认证</a>的机票代理资格'}">认证</span></span><script>ns_c({'fm':'behs','tab':'zhx_tip'});</script>{%/fis_widget_inline%}{%*
 * @fileOverview 中网可信提示模版
 * @author  不详，郭勇
 * @version 1.0.0（之前本版不详）
 * @date 2012-12-21
 *%}{%fis_widget_inline%}<span class="TipCon"><span class="renzheng" onmousedown="return ns_c({'fm':'behs','tab':'zwkx'})" hint-data="{'type':'zwkx','text':'<a href=&#34;http://www.baidu.com/search/verify_help.html#02&#34; target=&#34;_blank&#34;>中网可信网站</a>验证'}">认证</span></span><script>ns_c({'fm':'behs','tab':'zwkx_tip'});</script>{%/fis_widget_inline%}{%if !$res.dispData.ASURL%}{%fis_widget_inline%}{%$safetips['10020'] = "bd"%}{%$safetips['10021'] = "sc"%}{%$safetips['10022'] = "qq"%}{%$safetips['10023'] = "js"%}{%$safetips['10024'] = "hs"%}{%$safestr = ""%}{%foreach $res.dispData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$safestr = "`$safetips[$subArr.typeID]`|`$safestr`"%}{%/if%}{%/foreach%}{%if $safestr%}<span id="safe_{%$resIndex%}" class="safe_ico" data-safe="{%$safestr%}"></span>{%/if%}{%/fis_widget_inline%}{%/if%}<span class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%display_as_time FactorTimePrecision=$res.dispData.FactorTimePrecision FactorTime=$res.dispData.FactorTime LastModTime=$res.dispData.LastModTime LinkFoundTime=$res.dispData.LinkFoundTime timeShow=$res.timeShow lastModified=$res.offsetInfo.lastModified serverTime=$serverTime%}{%if $res.offsetInfo.code neq '简体'%}{%$res.offsetInfo.code%}{%/if%}</span>{%if strlen($res.snapshootKey) > 0%}{%if $res.docType < 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
				{%if !($urlPara.ct & 0x40000)%}
						target="_blank" 
	            {%/if%}
		            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}{%fis_widget_inline%}{%foreach $res.dispData.addSubArr as $subArr%}{%if $subArr.typeID == '10004' && $resIndex == 1%}<script>bds.se.addToHome = true;</script>{%/if%}{%/foreach%}{%/fis_widget_inline%}<br>{%if $res.dispData.AsNormalSubTitle_1%}<p style="margin-left:1em;padding-top:4px;"><font size="-1">{%if $res.dispData.AsNormalSubTitle_1%}<a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_1%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_1|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $res.dispData.AsNormalSubTitle_2%}<a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_2%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_2|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $res.dispData.AsNormalSubTitle_3%}<a href="{%enc_url token=$res.productType url=$res.dispData.AsNormalSubUrl_3%}" target="_blank" >{%$res.dispData.AsNormalSubTitle_3|limitlen:58|highlight:2%}</a><br>{%/if%}{%if $res.dispData.AsNormalSubTitle_1 && !$res.dispData.AsNormalSubTitle_2 && $res.dispData.AsClusterSiteName%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$res.dispData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" >更多{%$res.dispData.AsClusterSiteName%}站内结果&gt;&gt;</a><br>{%/if%}{%if $res.dispData.AsNormalSubTitle_1 && $res.dispData.AsNormalSubTitle_2 && !$res.dispData.AsNormalSubTitle_3  && $res.dispData.AsClusterSiteName%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$res.dispData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" >更多{%$res.dispData.AsClusterSiteName%}站内结果&gt;&gt;</a><br>{%/if%}{%if $res.dispData.AsNormalSubTitle_1 && $res.dispData.AsNormalSubTitle_2 && $res.dispData.AsNormalSubTitle_3 && $res.dispData.AsClusterSiteName%}<a href="http://www.baidu.com/s?wd={%$query|vui_escape:'url'%} site:{%$res.dispData.AsClusterSiteName|vui_escape:'url'%}" target="_blank" >更多{%$res.dispData.AsClusterSiteName%}站内结果&gt;&gt;</a><br>{%/if%}</font></p>{%/if%}</font></td></tr></table>{%/fis_widget%}