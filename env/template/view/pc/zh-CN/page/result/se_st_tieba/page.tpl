{%extends 'base.tpl'%} {%block name="result_content"%}{%$titleUrl = {%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}<h3 class="t"><a href="{%$titleUrl|escape%}" target="_blank">{%$tplData.classicInfo.title|limitlen:63|highlight:4%}</a></h3><div class="c-abstract">{%if $tplData.BBSRecount || $tplData.BBSPostTime%}<div class="bbs">{%if $tplData.BBSRecount%}{%$tplData.BBSRecount|escape%}条回复{%/if%}{%if $tplData.BBSRecount && $tplData.BBSPostTime%}&nbsp;-&nbsp;{%/if%}{%if $tplData.BBSPostTime%}发帖时间:&nbsp;{%$tplData.BBSPostTime|escape|strip:''%}{%/if%}</div>{%/if%}{%if $tplData.classicInfo.summary!=""%}<div>{%$tplData.classicInfo.summary|highlight:4%}</div>{%/if%}<span class="c-showurl">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:45:true%}{%/if%}&nbsp;{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}</span>{%fis_widget_inline%}{%if $showLike == 1%}<span data-nolog class="liketip" id="like_{%$tplData.classicInfo.urlSign%}"></span>{%/if%}{%/fis_widget_inline%}</div>{%$arr = array("年","月","日")%}{%if $tplData.AsNormalSubTitle_1%}<div class="c-offset">{%$subLinkArray = array()%}{%if $tplData.AsNormalSubTitle_1%}{%$row1 =array()%}{%$row1['col0']=$tplData.AsNormalSubTitle_1|limitlen:44|highlight:4%}{%$row1['col0link']=$tplData.AsNormalSubUrl_1%}{%if $tplData.AsNormalSubBBSRecount_1%}{%$row1['col1']=$tplData.AsNormalSubBBSRecount_1|escape|cat:"条回复"%}{%else%}{%$row1['col1']=""%}{%/if%}{%if $tplData.AsNormalSubBBSPostTime_1%}{%$pt1 = str_replace($arr,"-",$tplData.AsNormalSubBBSPostTime_1)%}{%$pt1 = preg_replace("/-$/","",$pt1)%}{%$row1['col2']=$pt1|escape|date_format:'%Y-%m-%d'|strip:''%}{%else%}{%$row1['col2']=""%}{%/if%}{%$tmp=array_push($subLinkArray,$row1)%}{%/if%}{%if $tplData.AsNormalSubTitle_2%}{%$row2 =array()%}{%$row2['col0']=$tplData.AsNormalSubTitle_2|limitlen:44|highlight:4%}{%$row2['col0link']=$tplData.AsNormalSubUrl_2%}{%if $tplData.AsNormalSubBBSRecount_2%}{%$row2['col1']=$tplData.AsNormalSubBBSRecount_2|escape|cat:"条回复"%}{%else%}{%$row2['col1']=""%}{%/if%}{%if $tplData.AsNormalSubBBSPostTime_2%}{%$pt2 = str_replace($arr,"-",$tplData.AsNormalSubBBSPostTime_2)%}{%$pt2 = preg_replace("/-$/","",$pt2)%}{%$row2['col2']=$pt2|escape|date_format:'%Y-%m-%d'|strip:''%}{%else%}{%$row2['col2']=""%}{%/if%}{%$tmp=array_push($subLinkArray,$row2)%}{%/if%}{%if $tplData.AsNormalSubTitle_3%}{%$row3 =array()%}{%$row3['col0']=$tplData.AsNormalSubTitle_3|limitlen:44|highlight:4%}{%$row3['col0link']=$tplData.AsNormalSubUrl_3%}{%if $tplData.AsNormalSubBBSRecount_3%}{%$row3['col1']=$tplData.AsNormalSubBBSRecount_3|escape|cat:"条回复"%}{%else%}{%$row3['col1']=""%}{%/if%}{%if $tplData.AsNormalSubBBSPostTime_3%}{%$pt3 = str_replace($arr,"-",$tplData.AsNormalSubBBSPostTime_3)%}{%$pt3 = preg_replace("/-$/","",$pt3)%}{%$row3['col2']=$pt3|escape|date_format:'%Y-%m-%d'|strip:''%}{%else%}{%$row3['col2']=""%}{%/if%}{%$tmp=array_push($subLinkArray,$row3)%}{%/if%}{%subLink_factory subLinkArr=$subLinkArray colNum=3%}<a href="http://www.baidu.com/s?wd={%$query|escape:'url'%} site:{%$tplData.AsClusterSiteName|escape:'url'%}" target="_blank" style="color:#77c" >更多贴吧相关帖子&gt;&gt;</a><br></div>{%/if%}{%/block%}