{%fis_widget%}{%$textOrImage = $res.dispData.StdStl%}{%if count($res.dispData.ImageAladdinResult) == 0%}{%$textOrImage = 1%}{%/if%}{%if $textOrImage == 1%}{%if $test%}文字版{%/if%}<li class="bds-list" id="{%$resIndex%}" mu="{%$res.dispData.TextAladdinSearchUrl%}" {%if $res.dispData.SrcId%}  srcid="{%$res.dispData.SrcId%}" {%/if%} tpl="se_sp_image"><h3 class="t"><a target="_blank" href="{%enc_url url=$res.dispData.TextAladdinSearchUrl%}" data-click="{'fm':'altp'}"><em>{%$res.dispData.Query|vui_escape:'html'%}</em>_百度图片</a></h3><font>{%$res.dispData.TextAladdinTitle|highlight:4%}...{%$imageRsQuerylength = count($res.dispData.ImageRsQuerys)%}{%if $imageRsQuerylength>0%}<br>相关推荐：{%section name=i loop=$res.dispData.ImageRsQuerys max=4%}{%$rsWord = $res.dispData.ImageRsQuerys[i]%}<a target="_blank" href="http://image.baidu.com/i?tn=baiduimage&ct=201326592&cl=2&lm=-1&st=-1&fm=result&fr=&sf=1&fmq=1350297510862_R&pv=&ic=0&nc=1&z=&se=1&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&word={%urlencode($rsWord)%}" style="margin-right:15px">{%$rsWord|limitlen:14|highlight:4%}</a>{%/section%}{%/if%}<br/><font color="#008000">{%$res.dispData.TextAladdinShowUrl%}{%$res.dispData.TextAladdinDate%}</font></font></li>{%else if $textOrImage == 2%}{%if $resIndex == 1%}{%if $test%}第一位<br>{%/if%}{%$showType="big"%}{%else%}{%if $test%}不在第一位<br>{%/if%}{%$showType="small"%}{%/if%}{%if count($res.dispData.ImageAladdinResult)<7%}{%$showType="small"%}{%/if%}{%if $showType=="big"%}{%$bigImage = $res.dispData.ImageAladdinResult[0]%}{%$scale = $bigImage.Width / $bigImage.Height%}{%if $scale > 1%}{%$bigImage.bigWidth = 220%}{%$bigImage.bigHeight = floor(220*$bigImage.Height/$bigImage.Width)%}{%else%}{%$bigImage.bigHeight = 220%}{%$bigImage.bigWidth = floor(220*$bigImage.Width/$bigImage.Height)%}{%/if%}{%if $bigImage.bigHeight < 167%}{%if $test%}高度不足165<br>{%/if%}{%$showType="small"%}{%/if%}{%$imageHeight = floor(($bigImage.bigHeight-5)/2)%}{%$sortArray.w1 = floor($imageHeight*$res.dispData.ImageAladdinResult[1].Width/$res.dispData.ImageAladdinResult[1].Height) %}{%$sortArray.w2 = floor($imageHeight*$res.dispData.ImageAladdinResult[2].Width/$res.dispData.ImageAladdinResult[2].Height) %}{%$sortArray.w3 = floor($imageHeight*$res.dispData.ImageAladdinResult[3].Width/$res.dispData.ImageAladdinResult[3].Height) %}{%$sortArray.w4 = floor($imageHeight*$res.dispData.ImageAladdinResult[4].Width/$res.dispData.ImageAladdinResult[4].Height) %}{%$sortArray.w5 = floor($imageHeight*$res.dispData.ImageAladdinResult[5].Width/$res.dispData.ImageAladdinResult[5].Height) %}{%$sortArray.w6 = floor($imageHeight*$res.dispData.ImageAladdinResult[6].Width/$res.dispData.ImageAladdinResult[6].Height) %}{%$nullVar = arsort($sortArray)%}{%$dispArray = []%}{%$lastBig = []%}{%$lastSmall = []%}{%foreach $sortArray as $key=>$value%}{%if $value@index==0%}{%$dispArray[0]=intval(substr($key,1))%}{%/if%}{%if $value@index==1%}{%$dispArray[3]=intval(substr($key,1))%}{%/if%}{%if $value@index==2%}{%$dispArray[4]=intval(substr($key,1))%}{%/if%}{%if $value@index==3%}{%$dispArray[1]=intval(substr($key,1))%}{%/if%}{%if $value@index==4%}{%$lastBig = intval(substr($key,1))%}{%/if%}{%if $value@index==5%}{%$lastSmall = intval(substr($key,1))%}{%/if%}{%/foreach%}{%if $sortArray["w`dispArray[0]`"] + $sortArray["w`dispArray[1]`"] > $sortArray["w`dispArray[3]`"] + $sortArray["w`dispArray[4]`"]%}{%$dispArray[2]=$lastSmall%}{%$dispArray[5]=$lastBig%}{%else%}{%$dispArray[5]=$lastSmall%}{%$dispArray[2]=$lastBig%}{%/if%}{%$rowWidth1 = $sortArray["w`$dispArray[0]`"] + $sortArray["w`$dispArray[1]`"] + $sortArray["w`$dispArray[2]`"]%}{%$rowWidth2 = $sortArray["w`$dispArray[3]`"] + $sortArray["w`$dispArray[4]`"] + $sortArray["w`$dispArray[5]`"]%}{%if $rowWidth1>$rowWidth2%}{%$rowWidth = $rowWidth1%}{%$spaceWidth1 = 5%}{%$spaceWidth2 = floor(($rowWidth1-$rowWidth2)/2) + 5%}{%else%}{%$rowWidth = $rowWidth2%}{%$spaceWidth2 = 5%}{%$spaceWidth1 = floor(($rowWidth2-$rowWidth1)/2) + 5%}{%/if%}{%if $rowWidth + $bigImage.bigWidth + 15 >  540%}{%if $test%}超宽了<br>{%/if%}{%$showType="small"%}{%/if%}{%if abs($rowWidth1-$rowWidth2) > 30%}{%if $test%}宽度差别太大<br>{%/if%}{%$showType="small"%}{%/if%}{%/if%}{%if $showType=="big"%}{%function name=renderImage%}{%$smallImage.showHeight = $minHeight%}{%$smallImage.showWidth = floor($minHeight * $smallImage.Width / $smallImage.Height)%}<dl class="ala_img_results_dl" style="position:relative"><dt style="line-height:0"><a data-click="{'fm':'altp1'}" style="text-decoration:none;font-size:0;height:{%$smallImage.showHeight%}px;width:{%$smallImage.showWidth%}px;overflow:hidden;display:inline-block" target="_blank" href="{%$smallImage.AladdinImageUrl%}"><img style="border:1px solid #cccccc;height:{%$smallImage.showHeight%}px;width:{%$smallImage.showWidth%}px;overflow:hidden;" onerror="BD.IMG.err(this)" src="{%$smallImage.LargeThumbnailImageUrl|escape%}" /></a></dt><dd style="position:absolute;display:none;bottom:5px;right:5px"><input type="button" style="border:1px solid #CCC;background:#FAFAFA;width:50px;height:23px;opacity:0.8;filter:alpha(opacity=80)" value="举报" onclick="BD.IMG.actions.reportPic('{%$smallImage.ImageFromUrl%}','{%$smallImage.ImageObjUrl%}','{%$smallImage.ImageID%}','{%$res.dispData.Query|vui_escape:'html'%}',this);"></dd></dl>{%/function%}{%if $test%}大图版{%/if%}<li class="bds-list" id="{%$resIndex%}" mu="{%$res.dispData.ImageAladdinSearchUrl%}" {%if $res.dispData.SrcId%}  srcid="{%$res.dispData.SrcId%}" {%/if%}  tpl="se_sp_image"><script compress>if (typeof(BD) != 'undefined') {BD.IMG = {};}else {BD = {};BD.IMG = {};};BD.IMG.err = function(obj){obj.style.display ="none";};BD.IMG.disabledInput = [];BD.IMG.actions = {ini : function(){var titleHtml = "<a href='#' onclick='return BD.IMG.actions.showReport();'>举报图片</a>";document.getElementById("ala_img_report").innerHTML = titleHtml;BD.IMG.hideReportDiv();return false;},showReport : function(){var titleHtml = "请举报图片&nbsp;-&nbsp;<a href='#' onclick='return {%*i*%}BD.IMG.actions.ini();'>取消</a>&nbsp;";document.getElementById("ala_img_report").innerHTML = titleHtml;BD.IMG.showReportDiv();return false;},reportPic : function (f,u,di,q,_this){_this.value="已举报";_this.disabled = true;_this.style.width = "62px";BD.IMG.disabledInput.push(di);var matches = document.cookie.match(/BAIDUID=([^;]+)/);var cookie = "";if(matches !=null){cookie = "&uid="+matches[1];}var img = new Image();img.src = "http://imgstat.baidu.com/4.gif?p=18&fr=ala2&hostfr=imgstat&u="+u+"&f="+f+"{%*i*%}&di="+di+"&q="+q+cookie+"&"+new Date()*Math.random();this.hideReport();},hideReport : function(){var picNum = (document.getElementsByClassName("ala_img_results_dl").length-1)/2;var continueHtml = "感谢您的举报&nbsp;-&nbsp;<a href='#' onclick='return BD.IMG.actions.showReport();'>继续举报</a>";var endHtml = "感谢您的举报";var reportLength = BD.IMG.disabledInput.length;if(reportLength<picNum&&reportLength>0){document.getElementById("ala_img_report").innerHTML = continueHtml;}else if(reportLength ==0){this.ini();}{%*i*%}else{document.getElementById("ala_img_report").innerHTML = endHtml;}BD.IMG.hideReportDiv();return false;}};BD.IMG.showReportDiv = function(){var results = document.getElementsByClassName("ala_img_results_dl");for(var i=0,len=results.length;i<len;i++){var dl = results[i];var dd = dl.childNodes[1]||null;if(dd!=null)dd.style.display = "";};};BD.IMG.hideReportDiv = function(){var results = document.getElementsByClassName("ala_img_results_dl");for(var i=0,len=results.length;i<len;i++){var dl = result{%*i*%}s[i];var dd = dl.childNodes[1]||null;if(dd!=null)dd.style.display = "none";};};</script><style compress>#ala_img_report{font-size:15px}#ala_img_report a{color:#77c}#ala_img_results dl{text-align:center;float:left;display:inline}#ala_img_results dd,#ala_img_results dt{margin:0;text-align:center}#ala_img_results dt img{display:block}#ala_img_desc{color:#008000;font-size:15px}#ala_img_results{margin-top:5px}#ala_img_results td{padding:0;margin:0;font-size:0}#ala_img_results table{padding:0;margin:0{%*i*%}}</style><h3 class="t"><a href="{%$res.dispData.ImageAladdinSearchUrl%}" target="_blank" data-click="{'fm':'altp1'}"><font><em>{%$res.dispData.Query|vui_escape:'html'%}</em>_百度图片</font></a>&nbsp;-&nbsp;<span class="OP_LOG_LINK" id="ala_img_report"><a href="#" onclick="return BD.IMG.actions.showReport()">举报图片</a></span></h3><div id="ala_img_results"><table cellpadding="0" cellspacing="0" style="width:{%$bigImage.bigWidth + $rowWidth + 25%}px"><tr><td align=left valign=top style="width:{%$bigImage.bigWidth%}px">{%renderImage smallImage = $bigImage minHeight=$bigImage.bigHeight%}</td><td align=left valign=top style="width:{%$rowWidth+20%}px;"><div style="margin:0 0 0 5px;width:{%$rowWidth+20%}px;overflow:hidden;white-space:nowrap"><div style="float:left;margin-right:{%$spaceWidth1%}px">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[1]] minHeight=$imageHeight%}</div><div style="float:left;margin-right:{%$spaceWidth1%}px">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[0]] minHeight=$imageHeight%}</div><div style="float:left">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[2]] minHeight=$imageHeight%}</div></div><div style="margin:5px 0 0 5px;width:{%$rowWidth+20%}px;overflow:hidden;white-space:nowrap"><div style="float:left;margin-right:{%$spaceWidth2%}px">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[4]] minHeight=$imageHeight%}</div><div style="float:left;margin-right:{%$spaceWidth2%}px">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[3]] minHeight=$imageHeight%}</div><div style="float:left">{%renderImage smallImage = $res.dispData.ImageAladdinResult[$dispArray[5]] minHeight=$imageHeight%}</div></div></td></tr></table><div style="clear:both;"></div>{%$imageRsQuerylength = count($res.dispData.ImageRsQuerys)%}{%if $imageRsQuerylength>0%}<div style="margin:5px 0"><font>相关推荐：{%section name=i loop=$res.dispData.ImageRsQuerys max=4%}{%$rsWord = $res.dispData.ImageRsQuerys[i]%}<a target="_blank" href="http://image.baidu.com/i?tn=baiduimage&ct=201326592&cl=2&lm=-1&st=-1&fm=result&fr=&sf=1&fmq=1350297510862_R&pv=&ic=0&nc=1&z=&se=1&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&word={%urlencode($rsWord)%}" style="margin-right:15px">{%$rsWord|limitlen:14|highlight:4%}</a>{%/section%}</font></div>{%/if%}</div><span id="ala_img_desc">image.baidu.com&nbsp;-&nbsp;<a style="color:#666;" target="_blank" href="{%$res.dispData.ImageAladdinSearchUrl%}">查看全部{%$res.dispData.DisplayTotalCountStr%}张图片</a></span></li>{%else%}{%$maxImageCount=0%}{%$maxImageWidth=0%}{%$imageShowWidth=[]%}{%foreach $res.dispData.ImageAladdinResult as $imageItem%}{%$imageItem.showHeight = 90%}{%$imageItem.showWidth = floor(90*$imageItem.Width/$imageItem.Height)%}{%$imageShowWidth[$imageItem@index] = $imageItem.showWidth%}{%$maxImageWidth = $maxImageWidth + $imageItem.showWidth + 7%}{%if $maxImageWidth <= 540%}{%$maxImageCount = $maxImageCount + 1%}{%/if%}{%/foreach%}{%if $test%}小图版{%/if%}<li class="bds-list" id="{%$resIndex%}" mu="{%$res.dispData.ImageAladdinSearchUrl%}" {%if $res.dispData.SrcId%}  srcid="{%$res.dispData.SrcId%}" {%/if%} tpl="se_sp_image"><script compress>if (typeof(BD) != 'undefined') {BD.IMG = {};}else {BD = {};BD.IMG = {};};BD.IMG.err = function(obj){obj.style.display ="none";};BD.IMG.disabledInput = [];BD.IMG.actions = {ini : function(){var titleHtml = "<a href='#' onclick='return BD.IMG.actions.showReport();'>举报图片</a>";document.getElementById("ala_img_report").innerHTML = titleHtml;BD.IMG.hideReportDiv();return false;},showReport : function(){var titleHtml = "请举报图片&nbsp;-&nbsp;<a href='#' onclick='return B{%*i*%}D.IMG.actions.ini();'>取消</a>&nbsp;";document.getElementById("ala_img_report").innerHTML = titleHtml;BD.IMG.showReportDiv();return false;},reportPic : function (f,u,di,q,_this){_this.value="已举报";_this.disabled = true;_this.style.width = "62px";BD.IMG.disabledInput.push(di);var matches = document.cookie.match(/BAIDUID=([^;]+)/);var cookie = "";if(matches !=null){cookie = "&uid="+matches[1];}var img = new Image();img.src = "http://imgstat.baidu.com/4.gif?p=18&fr=ala2&hostfr=imgstat&u="+u+"&f="+f+"&{%*i*%}di="+di+"&q="+q+cookie+"&"+new Date()*Math.random();this.hideReport();},hideReport : function(){var picNum = (document.getElementById("ala_img_results").childNodes.length-1)/2;var continueHtml = "感谢您的举报&nbsp;-&nbsp;<a href='#' onclick='return BD.IMG.actions.showReport();'>继续举报</a>";var endHtml = "感谢您的举报";var reportLength = BD.IMG.disabledInput.length;if(reportLength<picNum&&reportLength>0){document.getElementById("ala_img_report").innerHTML = continueHtml;}else if(reportLength ==0){this.ini();}e{%*i*%}lse{document.getElementById("ala_img_report").innerHTML = endHtml;}BD.IMG.hideReportDiv();return false;}};BD.IMG.showReportDiv = function(){var results = document.getElementById("ala_img_results").childNodes;for(var i=0,len=results.length;i<len;i++){var dl = results[i];var dd = dl.childNodes[1]||null;if(dd!=null)dd.style.display = "";};document.getElementById("ala_img_desc").style.display = "none";};BD.IMG.hideReportDiv = function(){var results = document.getElementById("ala_img_results").childN{%*i*%}odes;for(var i=0,len=results.length;i<len;i++){var dl = results[i];var dd = dl.childNodes[1]||null;if(dd!=null)dd.style.display = "none";};document.getElementById("ala_img_desc").style.display = "";};</script><style compress>#ala_img_report{font-size:15px}#ala_img_report a{color:#77c}#ala_img_results dl{margin:0 5px 0 0;text-align:center;float:left;display:inline}#ala_img_results dd,#ala_img_results dt{margin:0;text-align:center}#ala_img_results dd{margin-top:8px}#ala_img_results dt img{display:{%*i*%}block}#ala_img_desc{color:#008000;font-size:15px}</style><h3 class="t"><a href="{%$res.dispData.ImageAladdinSearchUrl%}" target="_blank" data-click="{'fm':'altp1'}"><font><em>{%$res.dispData.Query|vui_escape:'html'%}</em>_百度图片</font></a>&nbsp;-&nbsp;<span class="OP_LOG_LINK" id="ala_img_report"><a href="#" onclick="return BD.IMG.actions.showReport()">举报图片</a></span></h3><div id="ala_img_results" style="margin:6px 0 4px 0;">{%section loop=$res.dispData.ImageAladdinResult name=i max=$maxImageCount%}{%$imageItem=$res.dispData.ImageAladdinResult[i]%}<dl style="position:relative"><dt><a data-click="{'fm':'altp1'}" style="text-decoration:none;font-size:0" target="_blank" href="{%$imageItem.AladdinImageUrl%}"><img style="border:1px solid #cccccc;height:90px;width:{%$imageShowWidth[i]%}px" onerror="BD.IMG.err(this)" src="{%$imageItem.LargeThumbnailImageUrl|escape%}" /></a></dt><dd style="position:absolute;display:none;bottom:5px;right:5px"><input type="button" style="border:1px solid #CCC;background:#FAFAFA;width:50px;height:23px;opacity:0.8;filter:alpha(opacity=80)" value="举报" onclick="BD.IMG.actions.reportPic('{%$imageItem.ImageFromUrl%}','{%$imageItem.ImageObjUrl%}','{%$imageItem.ImageID%}','{%$res.dispData.Query|vui_escape:'html'%}',this);"></dd></dl>{%/section%}<div style="clear:both;"></div>{%$imageRsQuerylength = count($res.dispData.ImageRsQuerys)%}{%if $imageRsQuerylength>0%}<div style="margin:5px 0"><font>相关推荐：{%section name=i loop=$res.dispData.ImageRsQuerys max=4%}{%$rsWord = $res.dispData.ImageRsQuerys[i]%}<a target="_blank" href="http://image.baidu.com/i?tn=baiduimage&ct=201326592&cl=2&lm=-1&st=-1&fm=result&fr=&sf=1&fmq=1350297510862_R&pv=&ic=0&nc=1&z=&se=1&showtab=0&fb=0&width=&height=&face=0&istype=2&ie=utf-8&word={%urlencode($rsWord)%}" style="margin-right:15px">{%$rsWord|limitlen:14|highlight:4%}</a>{%/section%}</font></div>{%/if%}</div><span id="ala_img_desc">image.baidu.com&nbsp;-&nbsp;<a style="color:#666;" target="_blank" href="{%$res.dispData.ImageAladdinSearchUrl%}">查看全部{%$res.dispData.DisplayTotalCountStr%}张图片</a></span></li>{%/if%}{%else%}<li class="bds-list"><table class="result" {%if $isUserLogin == 1%}data-favo="{'flag':'{%$res.favoFlag%}','id':'{%$res.favoItemId%}'}"{%/if%} cellpadding="0" cellspacing="0" id="{%$resIndex%}" mu="{%$res.offsetInfo.url%}" data-op="{'y':'{%$res.identifyStr%}'}" {%if $res.dispData.SrcId%}  srcid="{%$res.dispData.SrcId%}" {%/if%} tpl="se_sp_image">{%$res.offsetInfo.title%}</table></li>{%/if%}{%/fis_widget%}