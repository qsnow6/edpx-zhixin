{%fis_widget%}<li class="bds-list" id="{%$resIndex%}" tpl="se_as_wenku"><style>.starScore,.starMask{vertical-align:top;display:inline-block;overflow:hidden;height:20px;background:url(http://s1.bdstatic.com/r/www/cache/pad/static/global/img/st-sprites_f777fd10.png) no-repeat 0 -102px;background-size:100px 170px}.starScore{width:75px;background-position:0 -119px}.wenkuType{position:relative;top:2px;display:inline-block;margin-right:5px;vertical-align:top;width:18px;height:18px;background:url(http://s1.bdstatic.com/r/www/cache/pad/static/global/img/s{%*i*%}t-sprites_f777fd10.png) no-repeat 1px 0;background-size:100px 170px}.DOCType{background-position:0 0}.PDFType{background-position:-18px 0;width:17px}.PPTType{background-position:-53px 0;width:17px}.XLSType{background-position:-35px 0}.TXTType{background-position:-70px 0;width:16px}</style><div class="bds-item-box">{%$WenkuArchiveType = ['1'=>'DOC','2'=>'PDF','3'=>'PPT','4'=>'XLS','8'=>'TXT']%}<a href="{%get_url originUrl=$res.offsetInfo.urlEncoded encryptionUrl=$res.encryptionUrl%}" target="_blank" data-click="{
			'F':'{%$res.strategyStr[0]%}',
			'F1':'{%$res.strategyStr[1]%}',
			'F2':'{%$res.strategyStr[2]%}',
			'F3':'{%$res.strategyStr[3]%}',
			'T':'{%$serverTime%}',
            'y':'{%$res.identifyStr%}'
        	}"><h3 class="t">{%if $res.dispData.WenkuMdocType|array_key_exists:$WenkuArchiveType%}<span class="wenkuType {%$WenkuArchiveType[$res.dispData.WenkuMdocType]%}Type"></span>{%/if%}{%$res.offsetInfo.title|limitlen:60|highlight:2%}</h3><div><p style="padding-top:3px;"><span class="m">{%if isset($res.dispData.WenkuValue)%}<span class="starScore"><span class="starMask" style="width:{%round($res.dispData.WenkuValue * 7.5)%}px;"></span></span>&nbsp;评分:{%$res.dispData.WenkuValue/2%}/5&nbsp;{%/if%}{%$res.dispData.WenkuPage%}页</span></p><p>{%$res.offsetInfo.summary|limitlen:138|highlight:6%}</p></div></a><span class="g">{%if $res.dispData.DispUrl%}{%$res.dispData.DispUrl|url_bold_html%}{%else%}{%$res.offsetInfo.urlDisplay|url_limit:45:true%}{%/if%}{%$res.dispData.WenkuPostTime%}{%if $isOldSnapshootOn%}{%if strlen($res.snapshootKey) > 0%}-<a data-nolog href="{%$cache_domain%}/c?{%$res.snapshootKey%}&user=baidu&fm=sc&query={%$queryUbs%}&qid={%$queryId%}&p1={%$resIndex%}" 
					{%if !($urlPara.ct & 0x40000)%}
						target="_blank" 
	                {%/if%}
		            class="m">{%$lable_cache%}</a>{%/if%}{%/if%}</span></div></li>{%/fis_widget%}