{%extends file='base_index.tpl'%} {%block name="global_vars"%}{%* header全局变量定义 *%}{%$test=false%}{%* 是否存在Aladdin结果  *%}{%$hasAladdin = false%}{%$hasOpenAladdin = false%}{%$cssUI = $tplData.cssUI%}{%$cssState=[]%}{%* 是否存在APP结果  *%}{%$hasApp = false%}{%$searchAction = '/s'%}{%* 用户是否登录 *%}{%$isUserLogin = $tplData.passport.isPassportUserLogin%}{%$displayname = $tplData.queryInfo.sessionData.displayname%}{%$username = $tplData.passport.passportUserName%}{%$secureemail = $tplData.queryInfo.sessionData.secureemail%}{%$securemobil = $tplData.queryInfo.sessionData.securemobil%}{%$userDisplayInfo = (strlen($displayname)>0)?$displayname:((strlen($username)>0)?$username:((strlen($secureemail)>0)?$secureemail:$securemobil))%}{%* Favo是否开启 *%}{%$isFavoOn = $tplData.passport.isFavoOn%}{%$serverTime = $tplData.queryInfo.listTime%}{%$productEncKey = $tplData.queryInfo.productEncKey%}{%$baiduId = $tplData.queryInfo.baiduId%}{%* 原始query *%}{%$queryOriginal = ($tplData.queryInfo.queryWordBak)?$tplData.queryInfo.queryWordBak:$tplData.queryInfo.wordNoSyntax%}{%* 头部使用的未被纠错的query *%}{%$query = $tplData.queryInfo.wordNoSyntax%}{%$queryEnc = $tplData.queryInfo.wordNoSyntaxEncoded%}{%$queryId = $tplData.queryInfo.queryId%}{%$urlPara = $tplData.queryInfo.pUrlConfig%}{%$pageNo = $tplData.queryInfo.pageNo%}{%$pageEncoding = $tplData.queryInfo.outputEncode%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1%}{%$resOffset = ($pageNo-1)*$tplData.queryInfo.resNum+1%}{%$browser.userAgent = $tplData.passport.useragentNameFull%}{%$browser.ie6 = preg_match("/msie 6/i",$browser.userAgent)%}{%$browser.ie = (preg_match("/msie (\d+)/i", $browser.userAgent, $browser.iedata)) ? $browser.iedata[1]:0%}{%$browser.baidu = preg_match("/BIDUBrowser/i",$browser.userAgent)%}{%$browser.sogou = preg_match("/se [1-2]\.X/i",$browser.userAgent)%}{%$updateIE6 = ($tplData.templateConfig.ie6tip=="1") && $browser.ie6 && !$browser.baidu && !$browser.sogou%}{%* 全局随机数  *%}{%*$randNum = (isset($randNum))?$randNum:mt_rand(0,9999) scope="global"*%}{%$randNum = $tplData.queryInfo.viewConfig.tpl_random%}{%* 性能抽样统计开关 *%}{%$CK_SID = array_flip($tplData.queryInfo.samplingId)%}{%*$PDC_CK = (isset($CK_SID['4460']) || isset($CK_SID['4461'])) && ($randNum<1010 || $randNum>1109)*%}{%$PDC = (($tplData.templateConfig.PDC=="1") && ($randNum>=1010 && $randNum<=1109)) || (isset($CK_SID['5221']) || isset($CK_SID['5222']))%}{%*$CK_SID = array_flip($tplData.queryInfo.samplingId)*%}{%*$PDC_CK = (isset($CK_SID['4460']) || isset($CK_SID['4461'])) && ($randNum<1010 || $randNum>1109)*%}{%* 日常性能报表log ID *%}{%$PDC_ID = 101%}{%* chunked view-ui开关 *%}{%$CHUNKED = $tplData.queryInfo.viewConfig.chunked%}{%*图片预取列表*%}{%$predictImg = $tplData.queryInfo.viewConfig.predictImg%}{%$resToken["tieba"] = ($tplData.templateConfig.token_tieba=="1")%}{%$resToken["zhidao"] = ($tplData.templateConfig.token_zhidao=="1")%}{%$resToken["baike"] = ($tplData.templateConfig.token_baike=="1")%}{%$resToken[""] = false%}{%* 根据配置设置加密开关 *%}{%$urlEncryption = ($tplData.templateConfig.URLEncryption=="1")%}{%* 根据URL参数重置开关 *%}{%if $urlPara["unenc"]=="1"%}{%$urlEncryption = 0 %}{%/if%}{%$urlEncMaxLen = ($tplData.templateConfig.urlEncMaxLen)?$tplData.templateConfig.urlEncMaxLen:2000%}{%$isFavoOn = ($tplData.templateConfig.EnableFavo=="1")?$isFavoOn:false%}{%$isLocationOn = false %}{%$isHomepageTipOn = ($tplData.templateConfig.EnableHomepageTip=="1")?true:false%}{%$isOldSnapshootOn = ($tplData.templateConfig.isOldSnapshootOn=="1")?true:false%}{%$urlEncryption_jump = $tplData.templateConfig.urlEncryption_jump%}{%$snapPicUrl = 'http://www.baidu.com/p?'%}{%$confuse = false%}{%if ($tplData.templateConfig.confuseResult=="1") || ($tplData.templateConfig.confuseResult=="2" && $tplData.queryInfo.speSwitch==1)%}{%$confuse = true%}{%/if%}{%$resLimit = ($pageNo==1)&&($tplData.templateConfig.resLimit=="1")%}{%$forceTip = $tplData.templateConfig.forceTip%}{%$forceConfuseTip = $tplData.templateConfig.forceConfuseTip%}{%$un360 = ($urlPara.un360=="1")&&($tplData.templateConfig.un360=="1")%}{%$disableFlag = ($tplData.templateConfig.disableFlag=="1")%}{%$noscript = ($tplData.templateConfig.noscript=="1")%}{%$useRender = ($tplData.templateConfig.useRender=="1")%}{%* 原common.cfg *%}{%$style_link_color = '#0000cc'%}{%$style_site_color = '#008000'%}{%$style_snapshot_color = '#666'%}{%$style_rsbackground_color = '#fff'%}{%$style_foot_background_color = '#e6e6e6'%}{%$style_highlight_color = '#cc0000'%}{%$lable_html_title = '百度搜索_'%}{%$lable_submit_value = '百度一下'%}{%$lable_btn_value = '结果中找'%}{%$lable_preferences = '设置'%}{%$lable_advanced = '高级搜索'%}{%$lable_set_homepage = '把百度设为主页'%}{%$lable_rs = '相关搜索'%}{%$lable_foot_year = "{%date('Y')%}"%}{%$lable_foot_word = '此内容系百度根据您的指令自动搜索的结果，不代表百度赞成被搜索网站的内容或立场'%}{%$lable_help = '帮助'%}{%$lable_listen  = '反馈意见'%}{%$lable_doctype1 = '文件格式:'%}{%$lable_doctype2 = 'HTML版'%}{%$lable_pp = '推广'%}{%$lable_cache = '百度快照'%}{%$lable_trade = '更多品牌信息'%}{%$lable_pre_page = '上一页'%}{%$lable_for_page = '下一页'%}{%$lable_more_site_res = '&nbsp;上的更多结果'%}{%$lable_talk_with_baidu = '与百度对话'%}{%$lable_res_tieba = '的最新贴吧贴子'%}{%$hint_amount_and_time_part1 = '百度一下，找到相关网页'%}{%$hint_amount_and_time_part2 = '约'%}{%$hint_amount_and_time_part3 = '篇，用时'%}{%$hint_amount_and_time_part4 = '秒'%}{%$hint_filter_forpage = '根据相关法律法规和政策，部分搜索结果未予显示。'%}{%$hint_pinyin = '查看解释'%}{%$hint_se = '您要找的是不是:'%}{%$hint_quet_part1 = '去掉""获得更多&nbsp;'%}{%$hint_quet_part2 = '&nbsp;的搜索结果('%}{%$hint_quet_part3 = '关于双引号'%}{%$hint_quet_part4 = ')'%}{%$hint_bookname_part1 = '去掉《》获得更多&nbsp;'%}{%$hint_bookname_part2 = '&nbsp;的搜索结果('%}{%$hint_bookname_part3 = '关于书名号'%}{%$hint_bookname_part4 = ')'%}{%$hint_longstr_part1 = '提示："'%}{%$hint_longstr_part1_s = '"'%}{%$hint_longstr_part2 = '"&nbsp;及其后面的字词均被忽略，因为百度的查询限制在38个汉字以内。'%}{%$hint_sitesearch_part1 = '提示：找到的相关网页数是估算值，不代表真实结果数，仅供参考。'%}{%$hint_sitesearch_part2 = '站长帮助'%}{%$hint_mp3_part1 = '—百度mp3搜索'%}{%$hint_mp3_part2 = '百度MP3可以让你简单快捷准确的获得歌曲，快速的在线试听，并有自动选取链接的音乐盒方便你随时试听歌曲，体验完美的音乐感受。'%}{%$hint_postcode_part1 = '—百度邮编搜索'%}{%$hint_postcode_part2 = '百度邮编由国家邮政局名址信息中心提供数据，可搜索全国354个城市的37823个邮政编码，并支持地名和邮编互查，查询更快速、获取更便捷。'%}{%$hint_search_part1 = '提示：为了提供最相关的结果，我们省略了一些内容相似的条目，'%}{%$hint_search_part2 = '点击这里'%}{%$hint_search_part3 = '可以看到所有搜索结果。'%}{%$hint_searchbytime_part1 = '您现在选择的是在时间段内进行搜索，'%}{%$hint_searchbytime_part2 = '点击此处'%}{%$hint_searchbytime_part3 = '查看全部搜索结果'%}{%$hint_searchbyzone_part1 = '您现在选择的是在地区内进行搜索，'%}{%$hint_searchbyzone_part2 = '点击此处'%}{%$hint_searchbyzone_part3 = '查看互联网全部搜索结果'%}{%$hint_omit = '提示：限于网页篇幅，部分结果未予显示。'%}{%$hint_domain_part1 = '没有找到该URL。您可以直接访问&nbsp;'%}{%$hint_domain_part2 = '以下是网页中包含"'%}{%$hint_domain_part3 = '"的结果:'%}{%$hint_domain_part4 = '，还可'%}{%$hint_domain_part5 = '提交网址'%}{%$hint_domain_part6 = '给我们'%}{%$hint_domain_part7 = '给我们。'%}{%$hint_jc_part1 = '以下是"'%}{%$hint_jc_part2 = '"的结果:'%}{%$hint_onlysyb_part1 = '<span style="font-family:宋体">“</span>'%}{%$hint_onlysyb_part2 = '<span style="font-family:宋体">”</span>不在查询范围内，建议尝试其他相关词。'%}{%$hint_none_part1 = '抱歉，没有找到与<span style="font-family:宋体">“</span>'%}{%$hint_none_part2 = '<span style="font-family:宋体">”</span>相关的网页。'%}{%$hint_none_part3 = '建议：'%}{%$hint_none_part4 = '看看输入的文字是否有误'%}{%$hint_none_part5 = '去掉可能不必要的字词，如“的”、“什么”等'%}{%$hint_none_part6 = '阅读'%}{%$hint_none_part7 = '帮助'%}{%$hint_none_part8 = '站长帮助'%}{%$hint_none_part9 = '<span style="font-family:宋体">”</span>相关的'%}{%$hint_none_part10 = '检查输入是否正确'%}{%$hint_none_part11 = '简化输入词'%}{%$hint_none_part12 = '尝试其他相关词，如同义、近义词等'%}{%$hint_none_part13 = '如网页存在，请'%}{%$hint_none_part14 = '去掉输入词的语法限制，如“site:”、“intitle:”等'%}{%$hint_none_domain = '直接访问&nbsp;'%}{%$hint_filter_fornone = '搜索结果可能不符合相关法律法规和政策，未予显示。建议尝试其他相关词。'%}{%$hint_psother_part1 = '在百度网页中查找“'%}{%$hint_psother_part2 = '”相关的网页'%}{%$suggestion_version = '1.0.3.0'%}{%$advanced_url = 'http://www.baidu.com/gaoji/advanced.html'%}{%$preferences_url = 'http://www.baidu.com/gaoji/preferences.html'%}{%$special_pagetype_para  = ' 0,4'%}{%$imeopen_url = 'http://www.baidu.com/cache/ime/js/openime-1.0.1.js'%}{%* 原base.cfg *%}{%$www_domain = 'http://www.baidu.com'%}{%$news_domain = 'http://news.baidu.com'%}{%$mp3_domain = 'http://mp3.baidu.com'%}{%$music_domain = 'http://music.baidu.com'%}{%$image_domain = 'http://image.baidu.com'%}{%$ikown_domain = 'http://zhidao.baidu.com'%}{%$tieba_domain = 'http://tieba.baidu.com'%}{%$video_domain = 'http://v.baidu.com'%}{%$dict_domain = 'http://dict.baidu.com'%}{%$baike_domain = 'http://baike.baidu.com'%}{%$youbian_domain = 'http://youbian.baidu.com'%}{%$youa_domain = 'http://youa.baidu.com'%}{%$map_domain = 'http://map.baidu.com'%}{%$wenku_domain = 'http://wenku.baidu.com'%}{%$more_domain = 'http://www.baidu.com/more/'%}{%$cache_domain = 'http://cache.baiducontent.com'%}{%$c_domain = 'http://c.baidu.com'%}{%$ubs_domain = 'http://sclick.baidu.com'%}{%$ubs_url = '/w.gif'%}{%$suggestion_src = 'http://www.baidu.com/js/bdsug.js'%}{%$app_domain = 'http://app.baidu.com'%}{%$hao123_domain = 'http://www.hao123.com'%}{%$base64_domain = 'http://b1.bdstatic.com/'%}{%$sugHost = $tplData.templateConfig.sugHost%}{%* 原baidu.cfg *%}{%$logo = '<div class="bg logo" title="到百度首页"></div>'%}{%$needubs = '1'%}{%$pp_template_for_rs = 'baidur'%}{%$result_width = '33.7'%}{%$sethomepage_tip = '<strong>推荐&nbsp;:&nbsp;</strong>'%}{%$is_internal_flow = '1'%}{%$my_app_per_page_count = '5'%}{%$hint_amount_and_time_part1 = '百度为您找到相关结果'%}{%$hint_amount_and_time_part2 = '约'%}{%$hint_amount_and_time_part3 = '个'%}{%$showLike = '1'%}{%$showLikeTip = '1'%}{%* 静态文件域名,域名后请不要带/  *%}{%$STATIC_DOMAIN_WWW0 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_WWW1 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_ALADDIN0 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_ALADDIN1 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_APP0 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_APP1 = 'http://s1.bdstatic.com/r/www'%}{%$STATIC_DOMAIN_SUPERPAGE = 'http://su.bdimg.com'%}{%* 静态文件地址 类型名_模块名_功能名	请写【绝对路径】 *%}{%* JS部分  *%}{%$JS_WWW_TANGRAM = '/cache/global/js/tangram-1.3.4c1.0.js'%}{%$JS_WWW_SUG = '/cache/sug/js/bdsug-1.1.js'%}{%$JS_WWW_USER = '/cache/user/js/u-1.3.7.js'%}{%$JS_WWW_HPS = '/cache/hps/js/hps-1.6.js'%}{%$JS_WWW_FAVO = '/cache/favo/js/fav-1.2.js'%}{%$JS_WWW_IME = '/cache/ime/js/openime-1.0.1.js'%}{%$JS_WWW_ADDTOHOME = '/cache/addtohome/js/addtohome-3.0.1.js'%}{%$JS_WWW_SPEED = '/cache/cache/speed-1.0.js'%}{%$JS_WWW_MONITOR = '/js/s/monitor.js'%}{%$JS_ALADDIN_BASE = '/cache/aladdin/base-1.1.js'%}{%$JS_APP_LOAD = '/app/app/app_load.js'%}{%$JS_WWW_HOME = '/cache/global/js/home-2.10.js'%}{%$JS_WWW_COMMON = '/cache/global/js/common-2.9.js'%}{%$JS_WWW_LOGIC = '/cache/global/js/logic-2.39.js'%}{%$JS_WWW_COMMON_CORE = '/cache/global/js/common-core-1.7.js'%}{%$JS_WWW_URSTATIC = '/static/ur/js/ur/urstatic-3.10.js'%}{%$JS_WWW_URSTATIC_INDEX = '/static/ur/js/ur/urstatic-index-1.6.js'%}{%*新首页引导js*%}{%$JS_SUPERPAGE_GUIDE = '/cache/superpage/js/superpage-1.5.js'%}{%* CSS部分 *%}{%* IMG部分 *%}{%$IMG_WWW_ALL = '/img/i-1.0.0.png'%}{%$IMG_WWW_BG = '/img/bg-1.0.0.gif'%}{%$IMG_WWW_FAVO = '/cache/favo/img/fav-1.0.png'%}{%$IMG_WWW_SCORE = '/cache/global/img/score-1.0.png'%}{%$IMG_WWW_REALTIME = '/cache/realtime/img/play-1.0.png'%}{%$IMG_ALADDIN_ICON = '/cache/global/img/aladdinIcon-1.0.gif'%}{%$urlArgs.cl = ($urlPara.cl != 3)?"&cl=`$urlPara.cl`":"" %}{%$urlArgs.ct = ($urlPara.ct != 0) ? "&ct=`$urlPara.ct`":""%}{%$urlArgs.tn = ($urlPara.tn != 'baidu') ? "&tn=`$urlPara.tn`":""%}{%$urlArgs.rn = ($urlPara.rn != 10) ? "&rn=`$urlPara.rn`":""%}{%$urlArgs.ie = ($urlPara.ie != 'gb2312') ? "&ie=`$urlPara.ie`":""%}{%* $urlArgs.ie = ''*%}{%$urlArgs.lm = ($urlPara.lm != 0) ? "&lm=`$urlPara.lm|escape:'url'`":""%}{%$urlArgs.si = (strlen($urlPara.si) > 0) ? "&si=`$urlPara.si|escape:'url'`":""%}{%$urlArgs.z_type = ($urlPara.z_type == 3) ? "&z=`$urlPara.z|vui_escape:'url'`":""%}{%$urlArgs.ch = ($urlPara.ch != 0) ? "&ch=`$urlPara.ch|escape:'url'`":""%}{%$urlArgs.vit = ($urlPara.vit) ? "&vit=`$urlPara.vit|vui_escape:'url'`":""%}{%$urlArgs.dsp = ($urlPara.dsp) ? "&dsp=`$urlPara.dsp|vui_escape:'url'`":""%}{%$urlArgs.sts= (strlen($urlPara.sts) > 0) ? "&sts=`$urlPara.sts|vui_escape:'url'`":""%}{%$jumpUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}{%*是否能将js基础库放到页尾*%}{%$baseJSInPageEnd = true%}{%$nocache_start = "<!--[bd_nocache_start]-->"%}{%$nocache_end = "<!--[bd_nocache_end]-->"%}{%$isSameSize = 0%}{%$isToolsOn = ($tplData.templateConfig.enableTools=="1")%}{%* content全局变量定义 *%}{%$tangramTplt = [
"goods1search"=>1,
"jijin_search"=>1,
"mid_right_timeline"=>1,
"top_zx"=>1,
"uefa1"=>1
]
%}{%* 纠错后使用的query *%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs%}{%$querySymbol = $tplData.queryInfo.pQueryMap.symbol%}{%$queryNopunc = $tplData.queryInfo.pQueryMap.nopunc%}{%$queryEncoding = $urlPara.ie%}{%$topHint = $tplData.asResult.topHint%}{%$bottomHint = $tplData.asResult.bottomHint%}{%$domainType = $tplData.asResult.domainType%}{%* 是否加载Tangram *%}{%$needTangram = false scope="global"%}{%* 框的开启状态 *%}{%$borderFlag = false%}{%* 是否支持加框的开关 *%}{%$enableBorder = true%}{%* 检测是否存在Aladdin和APP结果  *%}{%foreach $tplData.asResult.item as $res%}{%if $res.comeFrome eq 'SP'%}{%if $res.dispData.SrcId%}{%$hasAladdin = true%}{%/if%}{%if $res.dispData.resultData.extData.resourceid == 6677 || $res.dispData.StdStg==6677%}{%$hasApp = true%}{%/if%}{%if $res.dispData.resultData.extData.resourceid > 10000%}{%$hasOpenAladdin = true%}{%/if%}{%if $tangramTplt[$res.dispData.strategy.tempName]%}{%$needTangram = true%}{%/if%}{%/if%}{%/foreach%}{%foreach $tplData.leftResult.item as $res%}{%if $tangramTplt[$res.dispData.strategy.tempName]%}{%$needTangram = true%}{%/if%}{%/foreach%}{%foreach $tplData.rightResult.item as $res%}{%if $tangramTplt[$res.dispData.strategy.tempName]%}{%$needTangram = true%}{%/if%}{%/foreach%}{%$ecomIds =""%}{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent%}{%$adv[$ecom.id].num=$ecom.adNum%}{%$ecomIds ="`$ecomIds`_`$ecom.id`"%}{%/foreach%}{%if $resLimit%}{%$urlPara.usm = $urlPara.usm + $adv[213].num%}{%$resMaxCount = $urlPara.rn - $adv[213].num%}{%/if%}{%$exist213=0%}{%$exist204=0%}{%if $adv[213].num && $adv[213].num > 0%}{%$exist213=1%}{%/if%}{%if $adv[204].num && $adv[204].num > 0%}{%$exist204=1%}{%/if%}{%foreach $tplData.rsseResult.daResult as $da%}{%$daRes[$da.itemSrcid].num=$da.resNum%}{%$daRes[$da.itemSrcid].results=$da.res%}{%/foreach%}{%$hintData = array()%}{%foreach $tplData.queryInfo.promptNode as $node%}{%if $node.promptContent != "null" && strlen($node.promptContent) > 4%}{%$newData = json_decode($node.promptContent,true)%}{%$hintData = array_merge_recursive($hintData,$newData)%}{%/if%}{%/foreach%}{%$advShow["right"] = true%}{%$advShow["leftTop"] = true%}{%$advShow["leftBottom"] = true%}{%if $disableFlag && $tplData.disableFlag%}{%if $tplData.disableFlag.adRight==1%}{%$advShow["right"] = false%}{%/if%}{%if $tplData.disableFlag.adLeftT==1%}{%$advShow["leftTop"] = false%}{%/if%}{%if $tplData.disableFlag.adLeftB==1%}{%$advShow["leftBottom"] = false%}{%/if%}{%/if%}{%block name="index_global_vars_ext"%}{%/block%}{%/block%}{%block name="global_functions"%}{%function name=pdc_mark%}{%if $PDC%}<script>if(typeof PDC != 'undefined'){PDC.mark("c_{%$tag|escape:'javascript'%}");}</script>{%/if%}{%/function%}{%* AS结果的时间显示逻辑 *%}{%function name=display_as_time%}{%* 计算lastModifyTime *%}{%$lastModifyTime = (strlen($timeShow) > 0) ? $timeShow : $lastModified%}{%* 计算时间差的因子是否存在 *%}{%if $FactorTimePrecision >= 0 && $FactorTime >=0 && $LastModTime >= 0 && $LinkFoundTime >=0 %}{%* 计算时间差的因子是否合法 *%}{%if $FactorTimePrecision == 2 || (($serverTime - $FactorTime) / 3600) > 24 || (($serverTime - $LastModTime) / 3600) > 48 || (($serverTime - $LinkFoundTime) / 3600) > 24%}{%$lastModifyTime%}{%else%}{%$second = ($FactorTimePrecision==1) ? $LinkFoundTime : $FactorTime%}{%* 显示时间差逻辑 *%}{%* 计算时间差 *%}{%$timeDiff=$serverTime-$second%}{%$timeDiffMin=$timeDiff/60%}{%$timeDiffHour=$timeDiff/3600%}{%$timeDiffDay=$timeDiff/86400%}{%if $timeDiffMin < 60%}{%if $timeDiff < 0%}{%$lastModifyTime%}{%else%}{%($timeDiffMin <= 1) ? "1" : $timeDiffMin|string_format:'%d' %}分钟前{%/if%}{%else%}{%($timeDiffHour < 24) ? "`$timeDiffHour|string_format:'%d'`小时前" : $lastModifyTime%}{%/if%}{%* /显示时间差逻辑 *%}{%/if%}{%else%}{%$lastModifyTime%}{%/if%}{%/function%}{%function name=display_time%}{%$timeDiff=$serverTime-$second%}{%$timeDiffMin=$timeDiff/60%}{%$timeDiffHour=$timeDiff/3600%}{%$timeDiffDay=$timeDiff/86400%}{%if $timeDiff > 0%}{%if $timeDiffMin < 60%}{%($timeDiffMin <= 1) ? "1" : $timeDiffMin|string_format:'%d' %}分钟{%else%}{%($timeDiffHour < 24) ? "`$timeDiffHour|string_format:'%d'`小时" : "`$timeDiffDay|string_format:'%d'`天"%}{%/if%}前{%/if%}{%/function%}{%function name=make_url%}{%(strlen($eurl)>0 && strlen($eurl)<$urlEncMaxLen)?"`$urlEncryption_jump``$eurl`":"`$ourl`"%}{%/function%}{%function name=get_url%}{%if $urlEncryption && $encryptionUrl%}{%if $token && $resToken[$token]%}{%$urlTokenMd5Str = "`$originUrl``$serverTime`"%}{%$urlTokenMd5 = md5($urlTokenMd5Str)%}{%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}{%if strlen($urlToken)>0 && strlen($urlToken)<$urlEncMaxLen%}{%$originUrl = "`$originUrl`&__bd_tkn__=`$urlToken`"%}{%/if%}{%make_url eurl=$originUrl|encryptUrl ourl=$originUrl%}{%else%}{%make_url eurl=$encryptionUrl ourl=$originUrl%}{%/if%}{%else%}{%$originUrl%}{%/if%}{%/function%}{%function name=get_mu%}{%if $urlEncryption && $encryptionUrl%}{%make_url eurl=$encryptionUrl ourl=$originUrl%}{%else%}{%$originUrl%}{%/if%}{%/function%}{%function name=enc_url%}{%if $urlEncryption%}{%if $token && $resToken[$token]%}{%$urlTokenMd5Str = "`$url``$serverTime`"%}{%$urlTokenMd5 = md5($urlTokenMd5Str)%}{%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}{%if strlen($urlToken)>0 && strlen($urlToken)<$urlEncMaxLen%}{%$url = "`$url`&__bd_tkn__=`$urlToken`"%}{%/if%}{%/if%}{%make_url eurl=$url|encryptUrl ourl=$url%}{%else%}{%$url%}{%/if%}{%/function%}{%function name=enc_str%}{%if $urlEncryption%}{%$str|encryptUrl:3%}{%else%}{%$str%}{%/if%}{%/function%}{%function name=pdc_tpl_start%}{%if $PDC%}{%if $tpl && $tpl!="se_st_default" && $tpl!="se_st_guanwang" && $tpl!="se_st_general_pictype"%}<script>__tpl_start_time = (new Date()).getTime();</script>{%/if%}{%/if%}{%/function%}{%function name=pdc_tpl_end%}{%if $PDC%}{%if $tpl && $tpl!="se_st_default" && $tpl!="se_st_guanwang" && $tpl!="se_st_general_pictype"%}<script>if(__tpl_start_time){__tpl_T.push("{%$tpl%}=" + ((new Date()).getTime() - __tpl_start_time));}</script>{%/if%}{%/if%}{%/function%}{%* 循环结果，用于上侧结果、右侧结果 *%}{%function name=loop_results%}{%if $theResult.item%}<div id="con-{%$id%}">{%foreach $theResult.item as $res%}{%if $res.dispData.resultData.extData && !$tplData.queryInfo.multiRenderFlag%}{%$res.dispData.resultData.extData.feData=[
                'rsv_stl' => $res.dispData.StdStl,   
                'cssUI'=>$cssUI,
                'hasOffset'=>1
            ]%}{%/if%}{%$aladdinHTML = ''%}{%$aladdinHTML = $res.dispData|common_render:"{%if $res.dispData.strategy.type%}{%$res.dispData.strategy.type%}{%else%}aladdin{%/if%}":$res.dispData.strategy.tempName:$res@index%}{%if $test%}<small>render by smarty :{%$res.dispData.strategy.tempName%}| SrcId:{%$res.dispData.SrcId%}</small><p>{%/if%}{%if $aladdinHTML != ''%}{%pdc_tpl_start tpl=$res.dispData.strategy.tempName%}<div class="result-op xpath-log" tpl="{%$res.dispData.strategy.tempName%}" data-click="{fm:'{%$fm%}',p1:'{%$res@index + 1%}'{%if $res.dispData.SrcId%},rsv_srcid:'{%$res.dispData.SrcId%}'{%/if%},mu:'{%trim($res.itemUrl)%}'{%if isset($res.dispData.category_id)%},rsv_catid:'{%$res.dispData.category_id%}'{%/if%}{%if isset($res.dispData.card_id)%},rsv_cardid:'{%$res.dispData.card_id%}'{%/if%}{%if isset($res.dispData.entityname)&&trim($res.dispData.entityname)%},rsv_ename:'{%$res.dispData.entityname|escape:'javascript'|escape:'html'%}'{%/if%}{%if isset($res.dispData.uri)&&trim($res.dispData.uri)%},rsv_uri:'{%$res.dispData.uri|escape:'javascript'|escape:'html'%}'{%/if%},rsv_stl:'{%$res.dispData.StdStl|escape%}'}">{%$aladdinHTML%}</div>{%pdc_tpl_end tpl=$res.dispData.strategy.tempName%}{%/if%}{%/foreach%}</div>{%/if%}{%/function%}{%*栅格化按需加载css函数*%}{%function fe_fn_ui_c_css_write css='' ext=''%}{%if !isset($cssState[$css][$ext])%}{%$cssUI[$css][$ext]%}{%$cssState[$css][$ext]=1%}{%/if%}{%/function%}{%function fe_fn_ui_c_css css='' ext=''%}{%if $css%}{%fe_fn_ui_c_css_write css=$css ext='common'%}{%if $ext%}{%if is_array($ext)%}{%foreach $ext as $item%}{%fe_fn_ui_c_css_write css=$css ext=$item%}{%/foreach%}{%else%}{%fe_fn_ui_c_css_write css=$css ext=$ext%}{%/if%}{%/if%}{%/if%}{%/function%}{%block name="index_global_functions_ext"%}{%/block%}{%/block%}{%* ************************************************************* *%}{%* style in head *%}{%block name="index_head_style"%}<style >html,body{height:100%}html{overflow-y:auto}#wrapper{position:relative;_position:;min-height:100%}#content{padding-bottom:100px;text-align:center}#ftCon{height:100px;position:absolute;bottom:44px;text-align:center;width:100%;margin:0 auto;z-index:0;overflow:hidden}#ftConw{width:720px;margin:0 auto}body{font:12px arial;text-align:;background:#fff}body,p,form,ul,li{margin:0;padding:0;list-style:none}body,form,#fm{position:relative}td{text-align:left}img{border:0}a{color:#00c}a:active{color:{%*i*%}#f60}.bg{background-image:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_5a72890d.png);background-repeat:no-repeat;_background-image:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_e90ad03e.gif)}.bg_tuiguang_browser{width:16px;height:16px;background-position:-600px 0;display:inline-block;vertical-align:text-bottom;font-style:normal;overflow:hidden;margin-right:5px}.bg_tuiguang_browser_big{width:56px;height:56px;position:absolute;left:10px;top:10px;background-positi{%*i*%}on:-600px -24px}.bg_tuiguang_weishi{width:56px;height:56px;position:absolute;left:10px;top:10px;background-position:-672px -24px}.c-icon{display:inline-block;width:14px;height:14px;vertical-align:text-bottom;font-style normal;overflow:hidden;background:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_5a72890d.png) no-repeat 0 0;_background-image:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_e90ad03e.gif)}.c-icon-triangle-down-blue{background-position:-480px -168px}{%*i*%}.c-icon-chevron-unfold2{background-position:-504px -168px}#u{color:#999;padding:4px 10px 5px 0;text-align:right}#u a{margin:0 5px}#u .reg{margin:0}#m{width:720px;margin:0 auto}#nv a,#nv b,.btn,#lk{font-size:14px}#fm{padding-left:110px;text-align:left;z-index:1}input{border:0;padding:0}#nv{height:19px;font-size:16px;margin:0 0 4px;text-align:left;text-indent:137px}.bdsug{position:absolute;width:418px;background:#fff;display:none;border:1px solid #817f82}.bdsug li{width:402px;color:#000;font:14px{%*i*%}arial;line-height:25px;padding:0 8px;position:relative;cursor:default}.bdsug li.bdsug-s{background:#ebebeb}#fm .bdsug{top:31px}.bdsug-store span,.bdsug-store b{color:#7a77c8}.bdsug-store-del{font-size:12px;color:#666;text-decoration:underline;position:absolute;right:8px;top:0;cursor:pointer;display:none}.bdsug-s .bdsug-store-del{display:inline-block}.bdsug-ala{display:inline-block;border-bottom:1px solid #e6e6e6}.bdsug-ala h3{line-height:14px;background:url(http://www.baidu.com/img/sug_bd.png) n{%*i*%}o-repeat left center;margin:6px 0 4px 0;font-size:12px;font-weight:normal;color:#7b7b7b;padding-left:20px}.bdsug-ala p{font-size:14px;font-weight:bold;padding-left:20px}.s_ipt_wr{width:418px;height:30px;display:inline-block;margin-right:5px;background-position:0 -96px;border:1px solid #b6b6b6;border-color:#9a9a9a #cdcdcd #cdcdcd #9a9a9a;vertical-align:top}.s_ipt{width:405px;height:22px;font-size:16px;line-height:22px;font-family:arial;margin:5px 0 0 7px;background:#fff;outline:0;-webkit-appearan{%*i*%}ce:none}.s_btn{width:95px;height:32px;padding-top:2px\9;font-size:14px;background-color:#ddd;background-position:0 -48px;cursor:pointer}.s_btn_h{background-position:-240px -48px}.s_btn_wr{width:97px;height:34px;display:inline-block;background-position:-120px -48px;*position:relative;z-index:0;vertical-align:top}#lg img{vertical-align:top;margin-bottom:3px}#lk{margin:33px 0}#lk span{font:14px "宋体"}#lm{height:60px;line-height:15px}#lh{margin:16px 0 5px;word-spacing:3px}.tools{position:absolute;top{%*i*%}{%*i*%}:-4px;*top:10px;right:7px}#mHolder{width:62px;position:relative;z-index:296;display:none}#mCon{height:18px;line-height:18px;position:absolute;cursor:pointer}#mCon span{color:#00c;cursor:default;display:block;width:24px}#mCon .hw{text-decoration:underline;cursor:pointer;display:inline-block}#mCon .pinyin{display:inline-block}#mCon .c-icon-chevron-unfold2{margin-left:5px}#mMenu a{width:100%;height:100%;display:block;line-height:22px;text-indent:6px;text-decoration:none;filter:none\9}#mMenu,#user u{%*i*%}l{box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color="#cccccc")\9}#mMenu{width:56px;border:1px solid #9b9b9b;list-style:none;position:absolute;right:27px;top:28px;display:none;background:#fff}#mMenu a:hover{background:#ebebeb}#mMenu .ln{height:1px;background:#ebebeb;overflow:hidden;font-size:1px;line-height:1px;margin-top:-1px}#cp,#cp a{color:#666}#seth{display:none;behavi{%*i*%}or:url(#default#homepage)}#setf{display:none}#sekj{margin-left:14px}#shouji{margin-right:14px}{%if $isUserLogin == 1%}#u .last{margin-right:0}#u .un{font-weight:bold;margin-right:5px}#u ul{width:100%;background:#fff;border:1px solid #9b9b9b}#u li{height:25px}#u li a{width:100%;height:25px;line-height:25px;display:block;text-align:left;text-decoration:none;text-indent:6px;margin:0;filter:none\9}#u li a:hover{background:#ebebeb}#u li.nl{border-top:1px solid #ebebeb}#user_center{position:relative;display:inline-block}#user_center .user_center_btn{margin-right:5px}.userMenu{width:64px;position:absolute;right:7px;_r{%*i*%}ight:2px;top:15px;top:14px\9;*top:15px;padding-top:4px;display:none;*background:#fff}#user{position:relative;display:inline-block}{%/if%}{%if $urlArgs.dsp%}#pad-version{position:fixed;bottom:10px;right:22px;font:13px "华文细黑";color:#cdcdcd}#pad-version span{color:#000;margin-left:10px}#pad-version a{margin-right:10px}{%/if%}{%fe_fn_ui_c_css css='btn'%}#user,#user_center{z-index:2}.ws-tips{position:absolute;right:10px;top:54px;width:250px;height:78px;background:#fff;border:1px solid #e3e3e3;white-space:nowrap;z-index:1;border-bottom-color:#e0e0e0;border-right-color:#ececec;box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:0 2px 2px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:0 2px 2px rgba(0,0,0,0.072)}.ws-tips img{vertical-align:middle;width:56px;height:56px;position:absolute;left:10px;top:10px}.ws-{%*i*%}d-info{text-align:center;width:144px;height:46px;position:absolute;left:76px;top:15px}.ws-d-label{font-size:14px;font-family:'宋体';color:#666}.ws-d-label span{font-family:arial}#ws-btn{position:absolute;right:8px;top:8px;background:url('http://s1.bdstatic.com/r/www/cache/static/global/img/wsCloseBtn2_4a84c812.png') no-repeat;width:9px;height:9px}#ws-btn:focus{outline:0}.ws-d-info a{margin-top:6px;font:bold 12px/24px "宋体"}</style>{%block name="index_head_style_ext"%}{%/block%}{%/block%}{%* ************************************************************* *%}{%* head_script *%}{%block name="index_head_script"%}<script >function h(obj){obj.style.behavior='url(#default#homepage)';var a = obj.setHomePage('http://www.baidu.com/');}</script>{%block name="index_head_script_ext"%}{%/block%}{%/block%}{%* ************************************************************* *%}{%* loginbar *%}{%block name="index_login"%}<div id="u">{%if $isUserLogin == 1%}<span id="user"><a href="http://i.baidu.com" class="un" name="tj_home">{%$userDisplayInfo%}<i class="c-icon c-icon-triangle-down-blue"></i></a><div id="userMenu" class="userMenu"><ul><li><a href="http://i.baidu.com" onmousedown="return user_c({'fm':'set','tab':'uc_center'})">个人中心</a></li><li><a href="http://passport.baidu.com" name="tj_user">帐号设置</a></li><li class="nl"><a href="http://passport.baidu.com/?logout&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_logout">退出</a></li></ul></div></span>|<a href="{%$preferences_url%}" name="tj_setting">搜索设置</a>{%if $tplData.passport.isSupercenterErr != 1%}|<a href="/home/show/home{%if $urlPara.dsp%}?dsp=pc{%else%}{%if $urlPara.tn || $urlPara.ch || $urlPara.bar%}?tn={%if $urlPara.tn%}{%$urlPara.tn|vui_escape:'url'%}{%/if%}&ch={%if $urlPara.ch%}{%$urlPara.ch|vui_escape:'url'%}{%/if%}&bar={%if $urlPara.bar%}{%$urlPara.bar|vui_escape:'url'%}{%/if%}{%/if%}{%/if%}" name="tj_supper" class="last">新版首页</a>{%/if%}{%else%}<a href="{%$preferences_url%}" name="tj_setting">搜索设置</a>|<a href="https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_login" id="lb" onclick="return false;">登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" target="_blank" name="tj_reg" class="reg">注册</a>{%/if%}</div>{%/block%}{%* ************************************************************* *%}{%* logo *%}{%block name="index_logo"%}<p id="lg"><img src="{%$tplData.templateConfig.bdLogoSrc%}" width="270" height="129"{%if $tplData.templateConfig.bdLogoUrl%} usemap="#mp"{%else%}{%if $tplData.templateConfig.bdLogoAlt%} title="{%$tplData.templateConfig.bdLogoAlt%}"{%/if%}{%/if%}>{%if $tplData.templateConfig.bdLogoUrl%}<map name="mp"><area shape="rect" coords="{%$tplData.templateConfig.bdLogoArea%}" href="{%$tplData.templateConfig.bdLogoUrl%}" target="_blank"{%if $tplData.templateConfig.bdLogoAlt%} title="{%$tplData.templateConfig.bdLogoAlt%}"{%/if%}{%if $tplData.templateConfig.bdLogoRec%}{%$tplData.templateConfig.bdLogoRec%}{%/if%}></map>{%/if%}</p>{%/block%}{%* ************************************************************* *%}{%* search *%}{%block name="index_search"%}<p id="nv"><a href="{%$news_domain%}">新&nbsp;闻</a>　<b>网&nbsp;页</b>　<a href="{%$tieba_domain%}">贴&nbsp;吧</a>　<a href="{%$ikown_domain%}">知&nbsp;道</a>　<a href="{%$music_domain%}">音&nbsp;乐</a>　<a href="{%$image_domain%}">图&nbsp;片</a>　<a href="{%$video_domain%}">视&nbsp;频</a>　<a href="{%$map_domain%}">地&nbsp;图</a></p><div id="fm"><form name="f" action="/s"><span class="bg s_ipt_wr"><input type="text" name="wd" id="kw" maxlength="100" class="s_ipt"></span><input type="hidden" name="rsv_bp" value="0">{%if $urlPara.vit%}<input type=hidden name=vit value="{%$urlPara.vit|vui_escape:'html'%}">{%/if%}{%if $urlPara.dsp%}<input type=hidden name=dsp value="{%$urlPara.dsp|vui_escape:'html'%}">{%/if%}{%if $urlPara.tn || $urlPara.ch || $urlPara.bar%}<input type=hidden name=ch value="{%if $urlPara.ch%}{%$urlPara.ch|vui_escape:'html'%}{%/if%}"><input type=hidden name=tn value="{%if $urlPara.tn%}{%$urlPara.tn|vui_escape:'html'%}{%/if%}"><input type=hidden name=bar value="{%if $urlPara.bar%}{%$urlPara.bar|vui_escape:'html'%}{%/if%}">{%/if%}<input type="hidden" name="rsv_spt" value="3"><input type="hidden" name="ie" value="utf-8"><span class="bg s_btn_wr"><input type="submit" value="{%$lable_submit_value%}" id="su" class="bg s_btn" onmousedown="this.className='bg s_btn s_btn_h'" onmouseout="this.className='bg s_btn'"></span></form><span class="tools"><span id="mHolder"><div id="mCon"><span>输入法</span></div></span></span><ul id="mMenu"><li><a href="#" name="ime_hw">手写</a></li><li><a href="#" name="ime_py">拼音</a></li><li class="ln"></li><li><a href="#" name="ime_cl">关闭</a></li></ul></div>{%/block%}{%* ************************************************************* *%}{%* links *%}{%block name="index_links"%}<p id="lk"><a href="{%$baike_domain%}">百科</a>　<a href="{%$wenku_domain%}">文库</a>　<a href="{%$hao123_domain%}">hao123</a><span>&nbsp;|&nbsp;<a href="{%$more_domain%}">更多&gt;&gt;</a></span></p>{%block name="index_links_lm"%}<p id="lm">{%if $tplData.templateConfig.bdWordLink%}{%$tplData.templateConfig.bdWordLink%}{%/if%}</p>{%/block%}{%if $urlPara.spguide == 1%}<div id="sp"></div>{%/if%}{%/block%}{%* ************************************************************* *%}{%* about *%}{%block name="index_about"%}<div id="ftCon"><div id="ftConw"><p id="st" {%if $urlPara.dsp%}style="display:none;"{%/if%}><a id="seth" onClick="h(this)" href="/" onmousedown="return ns_c({'fm':'behs','tab':'homepage','pos':0})">把百度设为主页</a><a id="setf" href="http://www.baidu.com/cache/sethelp/index.html" onmousedown="return ns_c({'fm':'behs','tab':'favorites','pos':0})" target="_blank">把百度设为主页</a><span id="sekj"><a href="http://anquan.baidu.com/?wenzilian" target="_blank" onmousedown="return ns_c({'fm':'behs','tab':'bdbrwlk','pos':1})">安装百度卫士</a></span></p><p id="lh"><a href="http://e.baidu.com/?refer=888" onmoused{%*i*%}{%*i*%}own="return ns_c({'fm':'behs','tab':'btlink','pos':2})">加入百度推广</a>&nbsp;|&nbsp;<a onmousedown="return ns_c({'fm':'behs','tab':'tj_bang'})" href="http://top.baidu.com">搜索风云榜</a>&nbsp;|&nbsp;<a onmousedown="return ns_c({'fm':'behs','tab':'tj_about'})" href="http://home.baidu.com">关于百度</a>&nbsp;|&nbsp;<a onmousedown="return ns_c({'fm':'behs','tab':'tj_about_en'})" href="http://ir.baidu.com">About Baidu</a></p><p id="cp">&copy;{%$lable_foot_year%}&nbsp;Baidu&nbsp;<a href="/duty/" name="tj_duty">使用百度前必读</a>&nbsp;京ICP证030173号&nbsp;<img src="{%$www_domain%}/cache/global/img/gs-2.0.gif"></p></div></div>{%if $urlPara.dsp == "pc"%}<p id="pad-version"><a href="/?dsp=ipad" onmousedown="ns_c({fm:'behb',tab:'ipad'})">Pad版</a>|<span>传统版</span></p>{%/if%}{%/block%}{%* ************************************************************* *%}{%* foot_script *%}{%block name="index_foot_script"%}{%block name="js_foot_script"%}<script>var bds={se:{},comm : {ishome : 1,sid : "{%$urlPara.sid|vui_escape:'javascript'%}",user : "{%$userDisplayInfo|vui_escape:'javascript'%}",username : "{%$username|vui_escape:'javascript'%}",sugHost : "{%$sugHost%}",{%if $tplData.queryInfo.personalData%}personalData : {%json_encode($tplData.queryInfo.personalData)%},{%/if%}loginAction : []}}</script><script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/jquery/jquery-1.10.2.min_f2fb5194.js" charset="utf-8"></script>{%block name="home_script_js"%}<script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/global/js/home_053a4d96.js" charset="utf-8"></script>{%/block%}<script>var bdUser = {%if $isUserLogin == 1%}"{%$username|vui_escape:'javascript'%}"{%else%}null{%/if%};var w=window,d=document,n=navigator,k=d.f.wd,a=d.getElementById("nv").getElementsByTagName("a"),isIE=n.userAgent.indexOf("MSIE")!=-1&&!window.opera;(function(){if(/q=([^&]+)/.test(location.search)){k.value=decodeURIComponent(RegExp["\x241"])}})();if(n.cookieEnabled){bds.se.sug({'form':$('#fm form')[0],'ipt':$('#kw')[0]});};function addEV(o, e, f){if(w.attachEvent){o.attachEvent("on" + e, f);}else if(w.addEventListener){ o.addEventListener(e, f, false);}}function G(id){return d.getElementById(id{%*i*%});}function ns_c(q){var p = encodeURIComponent(window.document.location.href), sQ = '', sV = '', mu='', img = window["BD_PS_C" + (new Date()).getTime()] = new Image();for (v in q) {sV = q[v];sQ += v + "=" + sV + "&";} mu= "&mu=" + p ;img.src = "http://nsclick.baidu.com/v.gif?pid=201&pj=www&rsv_sid={%$urlPara.sid|escape:'javascript'%}&" + sQ + "path="+p+"&t="+new Date().getTime();return true;}if(/\bbdime=[12]/.test(d.cookie)){document.write('<script src="' + "http://s1.bdstatic.com/r/www/cache/static/ime/js/openime_ceac1c4e.js" + '" charset="utf-8"><\/script>');}(function(){var u = G("u").getElementsByTagName("a"), nv = G("nv").getElementsByTagName("a"), lk = G("lk").getElementsByTagName("a"), un = "";var tj_nv = ["news","tieba","zhidao","mp3","img","video","map"];var tj_lk = ["baike","wenku","hao123","more"];un = bds.comm.u{%*i*%}ser == "" ? "" : bds.comm.user;function _addTJ(obj){addEV(obj, "mousedown", function(e){var e = e || window.event;var target = e.target || e.srcElement;if(target.name){ns_c({'fm':'behs','tab':target.name,'un':encodeURIComponent(un)});}});}for(var i = 0; i < u.length; i++){_addTJ(u[i]);}for(var i = 0; i < nv.length; i++){nv[i].name = 'tj_' + tj_nv[i];}for(var i = 0; i < lk.length; i++){lk[i].name = 'tj_' + tj_lk[i];}})();(function() {var links = {'tj_news': ['word', 'http://news.baidu.com/ns?tn=n{%*i*%}ews&cl=2&rn=20&ct=1&ie=utf-8'],'tj_tieba': ['kw', 'http://tieba.baidu.com/f?ie=utf-8'],'tj_zhidao': ['word', 'http://zhidao.baidu.com/search?pn=0&rn=10&lm=0'],'tj_mp3': ['key', 'http://music.baidu.com/search?fr=ps&ie=utf-8'],'tj_img': ['word', 'http://image.baidu.com/i?ct=201326592&cl=2&nc=1&lm=-1&st=-1&tn=baiduimage&istype=2&fm=&pv=&z=0&ie=utf-8'],'tj_video': ['word', 'http://video.baidu.com/v?ct=301989888&s=25&ie=utf-8'],'tj_map': ['wd', 'http://map.baidu.com/?newmap=1&ie=utf-8&s=s'],'tj_baike{%*i*%}': ['word', 'http://baike.baidu.com/search/word?pic=1&sug=1&enc=utf8'],'tj_wenku': ['word', 'http://wenku.baidu.com/search?ie=utf-8']};var domArr = [G('nv'), G('lk'),G('cp')],kw = G('kw');for (var i = 0, l = domArr.length; i < l; i++) {domArr[i].onmousedown = function(e) {e = e || window.event;var target = e.target || e.srcElement,name = target.getAttribute('name'),items = links[name],reg = new RegExp('^\\s+|\\s+\x24'),key = kw.value.replace(reg, '');if (items) {if (key.length > 0) {var wd = ite{%*i*%}ms[0], url = items[1],url = url + ( name === 'tj_map' ? encodeURIComponent('&' + wd + '=' + key) : ( ( url.indexOf('?') > 0 ? '&' : '?' ) + wd + '=' + encodeURIComponent(key) ) );target.href = url;} else {target.href = target.href.match(new RegExp('^http:\/\/.+\.baidu\.com'))[0];}}name && ns_c({'fm': 'behs','tab': name,'query': encodeURIComponent(key),'un': encodeURIComponent(bds.comm.user || '') });};}})();addEV(w,"load",function(){k.focus()});w.onunload=function(){};</script><script type="text{%*i*%}/javascript" src="http://s1.bdstatic.com/r/www/cache/static/user/js/u_82932a73.js" charset="utf-8"></script><script>try{document.cookie="WWW_ST=;expires=Sat, 01 Jan 2000 00:00:00 GMT";$(document.forms[0]).on("submit",function(){var _t=new Date().getTime();document.cookie = "WWW_ST=" + _t +";expires=" + new Date(_t + 10000).toGMTString()})}catch(e){}</script>{%if $urlPara['intrSid']%}<script>var bds = bds||{}; bds.comm = bds.comm||{};bds.comm.intrSid = "{%$urlPara['intrSid']|escape:'javascript'|escape%}";</script><script src="http://cq01-qa-bu-qa00.cq01.baidu.com:8028/Public/js/tips_search.js"></script>{%/if%}{%$randNum = mt_rand(0,9999)%}{%if $randNum>=1120 && $randNum<=1139%}<script>setTimeout(function(){var A=document.createElement("script");A.src= "http://s1.bdstatic.com/r/www/cache/static/sample/js/yc_f419d6bf.js";document.getElementsByTagName("HEAD")[0].appendChild(A)},0);</script>{%/if%}{%/block%}{%block name="index_foot_script_ext"%}{%/block%}{%/block%}{%* ************************************************************* *%}{%* foot_script *%}{%block name="index_html_end"%}{%if $tplData.templateConfig.bdWordLinkRec%}<script>{%$tplData.templateConfig.bdWordLinkRec%}</script>{%/if%}{%if $tplData.templateConfig.bdLogoCode%}{%$tplData.templateConfig.bdLogoCode%}{%/if%}{%/block%}