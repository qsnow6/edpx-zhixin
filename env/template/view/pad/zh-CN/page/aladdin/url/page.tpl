{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='foot'%}{%/block%}{%block name='data_modifier'%} {%$extData.feData.hasTitleGap=false%}{%/block%}{%block name='content'%}<style data-merge>.op_url_showurl{position:relative;_zoom:1}.op_url_tips_renzheng{background:#FFF;border:1px solid #CCC;color:#575757;padding:8px;min-width:230px;_width:230px;position:absolute;text-align:left;z-index:15;box-shadow:1px 1px 1px #dfdfdf;top:28px}.op_url_baidu{display:block;line-height:14px;margin-bottom:8px;color:#575757}.op_url_clearfix{zoom:1}.op_url_tip_logo{border:0 none;height:16px;left:10px;overflow:hidden;width:19px;display:inline-block;vertical-align:middle}.op_url_hidden{d{%*i*%}isplay:none}.op_url_safe{position:relative;z-index:2}.op_url_safeico_new{color:#b95b07}.op_url_tip_arrow{background:transparent url('http://a.baidu.com/xianzhi/ec_new_rz.png') no-repeat scroll 6px -140px;width:252px;height:9px;position:absolute;top:-9px;left:0}.op_url_tip_arrowre{background-position:2px -140px}.op_url_tips_safeico_new{width:380px;position:absolute;background:#fff;z-index:1000;left:0;top:16px}.op_url_tips_safeico_new .op_url_safe_con{top:9px;position:absolute;border:1px solid #cc{%*i*%}c;color:#666;background:#fff;padding:5px;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=120,Color="#cccccc")9}.op_url_safe_list{background:#f7f7f7;padding:10px 0 5px}.op_url_safe_icons{width:60px;line-height:16px;text-align:center;display:inline-block;vertical-align:top}.op_url_safe_icons_bd,.op_url_safe_icons_sc,.op_url_safe_icons_qq,.op_url_safe_icons_js,.op_url_safe_icons_hs{{%*i*%}width:16px;height:16px;display:inline-block;background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -17px 0;position:relative;z-index:0}.op_url_safe_icons_fail{width:14px;height:14px;display:inline-block;background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -159px 0;position:absolute;left:9px;top:7px}.op_url_safe_icons_sc{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -51px 0}.op_url_safe_icons_qq{background:ur{%*i*%}l(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -173px 0}.op_url_safe_icons_js{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat 0 0}.op_url_safe_icons_hs{background:url(http://www.baidu.com/cache/spam/img/safe-icons-1.1.png) no-repeat -68px 0}.op_url_safe_warning{color:#e10602}</style>{%$tempDataDispData=json_decode($tplData.dispData,true)%}{%if $tempDataDispData&&$tempDataDispData.notice_info%} {%$noteInfo = $tempDataDispData.notice_info%}{%/if%}{%if $tempDataDispData&&$tempDataDispData.addSubArr%} {%foreach $tempDataDispData.addSubArr as $item%} {%$tempDataContent = json_decode($item.content,true)%} {%/foreach%}{%/if%}{%if $tempDataContent&&$tempDataContent.hints&&$tempDataContent.hints.showTimeRight%} {%foreach $tempDataContent.hints.showTimeRight as $itemRight%} {%$tempDatatemplateName = $itemRight.templateName%} {%if $tempDatatemplateName&&$tempDatatemplateName == 'res_hint_certification'%} {%$tempDatatemplateNameTip = $itemRight.hintData%} {%/if%} {%/foreach%}{%/if%}{%if $tempDataDispData&&$tempDataDispData.addSubArr%} {%$icpId = $tempDataDispData.addSubArr%}{%/if%}{%$isICP = "0"%}{%foreach $queryInfo.promptNode as $idLen%} {%if $idLen.id == '1001'%} {%$isICP = "1"%} {%/if%}{%/foreach%}{%if $isICP == "1"%} {%$infoICP['20011'] = "个人网站"%} {%$infoICP['20012'] = "企业网站"%} {%$infoICP['20013'] = "军队网站"%} {%$infoICP['20014'] = "政府机关网站"%} {%$infoICP['20015'] = "事业单位网站"%} {%$infoICP['20016'] = "社会团体网站"%} {%$infoICP['20018'] = "个人发布"%} {%$strICP = "暂无备案信息"%}{%/if%}{%if $tempDataDispData&&$tempDataDispData.sublink&&$tempDataDispData.sublink.is_main%} {%$tempDataIsMain = $tempDataDispData.sublink.is_main%}{%/if%}{%if $tempDataContent&&$tempDataContent.hints&&$tempDataContent.hints.titleBottom%} {%foreach $tempDataContent.hints.titleBottom as $itemSafe%} {%$tempDatatemplateNameSafe = $itemSafe.templateName%} {%if $tempDatatemplateNameSafe && $tempDatatemplateNameSafe == 'res_hint_unsafe'%} {%$tempDatatemplateNameSafeTip = $itemSafe.hintData%} {%/if%} {%/foreach%} {%if $tempDatatemplateNameSafeTip%} {%foreach $tempDatatemplateNameSafeTip.hintItem as $subArr%} {%$safestr = "`$subArr`|`$safestr`"%} {%/foreach%} {%/if%}{%/if%}{%if $safestr%} {%$bdFlag = stripos($safestr,"bd")%} {%$scFlag = stripos($safestr,"sc")%} {%$qqFlag = stripos($safestr,"qq")%} {%$jsFlag = stripos($safestr,"js")%} {%$hsFlag = stripos($safestr,"hs")%}{%/if%}{%if $tempDatatemplateNameSafeTip && $tempDatatemplateNameTip%}  {%$certif=0%}{%elseif $tempDatatemplateNameTip%} {%$certif=1%}{%/if%}{%*暂时屏蔽v标展现*%}{%$certif = false%}{%$tmpTitleLength = 62%}{%if $tempDatatemplateNameSafeTip%} {%$safe=1%}{%$tmpTitleLength = $tmpTitleLength - 6%}{%elseif $tempDatatemplateNameSafeTip&&$tempDatatemplateNameTip%} {%$safe=1%}{%$tmpTitleLength = $tmpTitleLength - 6%}{%/if%}{%if ($tempDataIsMain&&$tempDataIsMain==1) || $tempDataDispData.strategybits.OFFICIALPAGE_FLAG%} {%$gIsMain=1%}{%$tmpTitleLength = $tmpTitleLength - 6%}{%/if%}{%fe_fn_c_title_prefix%}<a {%if $tplData.favicon%}style="background:url('{%$tplData.favicon%}') no-repeat 0 1px;padding-left: 20px;"{%/if%} href="{%$tplData.url%}" target="_blank"> {%$tplData.title|limitlen:"$tmpTitleLength"|highlight:0%}</a>{%if $gIsMain%}<a target="_blank" href="http://guanwang.baidu.com/vcard/officialsite/" class="op_url_guanwang icon-gw">官网</a>{%/if%}{%if $safe %}<span class="op_url_safe_txttip icon-unsafe-icon">风险</span>{%/if%}{%fe_fn_c_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%if $noteInfo%}<div class="op_url_size">{%$noteInfo.notice1|escape:'html'%}{%if $noteInfo.notice2%}<span style="color:#999">({%$noteInfo.notice2|escape:'html'%})</span>{%/if%}</div>{%/if%}{%if $safe %}<div class="op_url_safe"><a href="http://www.baidu.com/cache/spam/safe_tip4.html?{%$tplData.url|escape:'url'%}&d={%$safestr|escape:'html'%}&t={%$tempDatatemplateNameSafeTip.hintText|escape:'html'%}&i={%$tempDatatemplateNameSafeTip.hintInfo|escape:'html'%}" target="_blank" class="op_url_safeico_new">{%if $qqFlag !==FALSE %}腾讯电脑管家提醒您：{%elseif $jsFlag !==FALSE && $bdFlag ===FALSE && $scFlag ===FALSE && $qqFlag === FALSE%}金山云安全提醒您：{%else%}安全联盟提醒您：{%/if%}{%$tempDatatemplateNameSafeTip.hintText|escape%}</a> <div class="op_url_tips_safeico_new op_url_hidden"> <div class="op_url_safe_con"> <p>{%$tempDatatemplateNameSafeTip.hintLabelPre|escape:'html'%}<span class="op_url_safe_warning">{%$tempDatatemplateNameSafeTip.hintLabelMid|escape:'html'%}</span>{%$tempDatatemplateNameSafeTip.hintLabelSuf|escape:'html'%}</p> <p class="op_url_safe_list"> {%if $bdFlag!==FALSE%} <span class="op_url_safe_icons"> <span class="op_url_safe_icons_bd"> <span class="op_url_safe_icons_fail"></span> </span><br> 百度安<br>全检测 </span> {%/if%} {%if $scFlag!==FALSE%} <span class="op_url_safe_icons"> <span class="op_url_safe_icons_sc"> <span class="op_url_safe_icons_fail"></span> </span><br> SCANV<br>安全中心 </span> {%/if%} {%if $qqFlag!==FALSE%} <span class="op_url_safe_icons"> <span class="op_url_safe_icons_qq"> <span class="op_url_safe_icons_fail"></span> </span><br> 电脑<br>管家 </span> {%/if%} {%if $jsFlag!==FALSE%} <span class="op_url_safe_icons"> <span class="op_url_safe_icons_js"> <span class="op_url_safe_icons_fail"></span> </span><br> 金山<br>云安全 </span> {%/if%} {%if $hsFlag!==FALSE%} <span class="op_url_safe_icons"> <span class="op_url_safe_icons_hs"> <span class="op_url_safe_icons_fail"></span> </span><br> 小红伞 </span> {%/if%} </p> </div> <i class="op_url_tip_arrow" style="top:1px;"></i> </div></div>{%/if%}{%if $tplData.content1%}<div class="op_url_size"> {%$tplData.content1|limitlen:140|highlight:0%}</div>{%/if%}{%if $isICP == "1"%}{%foreach $icpId as $subArr%} {%if $infoICP[$subArr.typeID]%} {%$strICP = "备案信息：`$infoICP[$subArr.typeID]`"%} <div class="op_url_size"><p class="icp_info">{%$strICP|escape:'html'%}</p></div> {%/if%}{%/foreach%}{%/if%}<div class="op_url_showurl"> <span class="c-showurl">{%$tplData.showurl%}{%if $tplData.date%} {%$tplData.date|escape:'html'%}{%/if%}</span>{%if $tplData.showurl%} {%fe_fn_c_showurl_tools%}{%/if%}{%if $tplData.showlamp%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP"></a>{%/if%}{%if $certif%}<a href="javascript:;" hidefocus="true" class="c-icon c-icon-v c-gap-icon-left-small op_url_renzheng"></a>{%/if%}{%if $tplData.baidusnap%} - <a href="{%$tplData.baidusnap%}" target="_blank"  class="m">百度快照</a>{%/if%}  {%if $certif%}<div class="op_url_tips_renzheng op_url_hidden"> <strong class="op_url_baidu">{%$tempDatatemplateNameTip.hintLabel|escape:'html'%}</strong> <p class="op_url_clearfix"> {%if $tempDatatemplateNameTip.hintIcon%} <img class="op_url_tip_logo c-gap-right-small" src="{%$tempDatatemplateNameTip.hintIcon%}" alt="行业认证" height="16" width="19"> {%/if%}<span class="op_url_tip_text">{%$tempDatatemplateNameTip.hintText%}</span> </p> <i class="op_url_tip_arrow op_url_tip_arrowre"></i> </div>{%/if%}</div><script data-merge>A.setup(function(){var _this = this,tipover,tipout;function mouseover(e){clearTimeout(tipout);var e = e||event;this.parentNode.style.zIndex = _this.p1+2;var classNameEnd = this.className.slice(-8);var $tips = _this.find('.op_url_tips_'+classNameEnd); if($tips.length>0){$tips.css('left',this.offsetLeft);$tips.hover(function(){clearTimeout(tipout);$tips.removeClass('op_url_hidden');},function(){clearTimeout(tipout);tipout=setTimeout(function(){$tips.addClass('op_url_hidden{%*i*%}');},100)});tipover=setTimeout(function(){$tips.removeClass('op_url_hidden');},100)}}function mouseout(){clearTimeout(tipover);var classNameEnd = this.className.slice(-8);this.parentNode.style.zIndex = _this.p1+2;var $tips = _this.find('.op_url_tips_'+classNameEnd);if($tips.length>0){tipout=setTimeout(function(){$tips.addClass('op_url_hidden');},100)}}var $renzheng = _this.find('.op_url_renzheng');if($renzheng.length>0){$renzheng.mouseover(mouseover);$renzheng.mouseout(mouseout);}var $safeico = {%*i*%}_this.find('.op_url_safeico_new');if($safeico.length>0){$safeico.mouseover(mouseover);$safeico.mouseout(mouseout);}if(_this.find('.op_url_guanwang').length<1&&$renzheng.length<1){_this.find('.op_url_showurl_url').css('marginLeft','0px');}this.dispose = function(){clearTimeout(tipout);clearTimeout(tipover);};});</script>{%/block%}