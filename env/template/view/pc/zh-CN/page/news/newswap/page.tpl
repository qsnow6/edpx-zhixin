<?xml version="1.0" encoding="gb2312"?>
<wapnews>
{%* 全局变量定义 *%}{%$test=false scope='global'%}{%* 是否存在Aladdin结果  *%}{%$hasAladdin = false scope='global'%}{%$hasOpenAladdin = false scope='global'%}{%$searchAction = '/ns' scope='global'%}{%* 用户是否登录 *%}{%$isUserLogin = $tplData.passport.isPassportUserLogin scope='global'%}{%$displayname = $tplData.queryInfo.sessionData.displayname scope='global'%}{%$username = $tplData.passport.passportUserName scope='global'%}{%$secureemail = $tplData.queryInfo.sessionData.secureemail scope='global'%}{%$securemobil = $tplData.queryInfo.sessionData.securemobil scope='global'%}{%$userDisplayInfo = (strlen($displayname)>0)?$displayname:((strlen($username)>0)?$username:((strlen($secureemail)>0)?$secureemail:$securemobil)) scope='global'%}{%$urlPara = $tplData.queryInfo.pUrlConfig scope='global'%}{%$serverTime = $tplData.queryInfo.listTime scope='global'%}{%$productEncKey = $tplData.queryInfo.productEncKey scope='global'%}{%$baiduId = $tplData.queryInfo.baiduId scope='global'%}{%$asNum = $tplData.asResult.asDataDispNum - $tplData.asResult.spResutlNum scope='global'%}{%* 纠错后使用的原始query *%}{%$query = $tplData.queryInfo.wordNoSyntax scope='global'%}{%* 纠错前使用的原始query *%}{%$queryOriginal = ($tplData.queryInfo.queryWordBak)?$tplData.queryInfo.queryWordBak:$tplData.queryInfo.wordNoSyntax scope='global'%}{%$queryUbs = $tplData.queryInfo.pQueryMap.ubs scope='global'%}{%$querySymbol = $tplData.queryInfo.pQueryMap.symbol scope='global'%}{%$queryNopunc = $tplData.queryInfo.pQueryMap.nopunc scope='global'%}{%$queryEnc = $tplData.queryInfo.wordNoSyntaxEncoded scope='global'%}{%* 标题搜索过滤intitle语法后的query *%}{%if ($urlPara.tn == 'newstitle' || $urlPara.tn == 'newstitledy')%}{%if preg_match("/^(in)?title:(\((([^()]+|(?2))*)\))/i",$queryOriginal)%}{%$queryNoTitle = preg_replace("/^(in)?title:(\((([^()]+|(?2))*)\))/i",'$3',$queryOriginal) scope='global'%}{%$queryEncNoTitle = preg_replace("/^(in)?title:(\((([^()]+|(?2))*)\))/i",'$3',$queryEnc) scope='global'%}{%else%}{%$queryNoTitle = preg_replace("/^(in)?title:\(/i",'',$queryOriginal)%}{%$queryNoTitle = preg_replace("/\)?$/i",'',$queryNoTitle) scope='global'%}{%$queryEncNoTitle = preg_replace("/^(in)?title:\(/i",'',$queryEnc)%}{%$queryEncNoTitle = preg_replace("/\)?$/i",'',$queryEncNoTitle) scope='global'%}{%/if%}{%else%}{%$queryNoTitle = $queryOriginal scope='global'%}{%$queryEncNoTitle = $queryEnc scope='global'%}{%/if%}{%$pageNo = $tplData.queryInfo.pageNo scope='global'%}{%$queryId = $tplData.queryInfo.queryId scope='global'%}{%$pageEncoding = $tplData.queryInfo.outputEncode scope='global'%}{%$queryEncoding = $urlPara.ie scope='global'%}{%$resIndex = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$resOffset = ($pageNo-1)*$tplData.queryInfo.resNum+1 scope='global'%}{%$topHint = $tplData.asResult.topHint scope='global'%}{%$bottomHint = $tplData.asResult.bottomHint scope='global'%}{%$domainType = $tplData.asResult.domainType scope='global'%}{%$browser.userAgent = $tplData.passport.useragentNameFull scope='global'%}{%$browser.ie6 = preg_match("/msie 6/i",$browser.userAgent) scope='global'%}{%$browser.ie = (preg_match("/msie (\d+)/i", $browser.userAgent, $browser.iedata)) ? $browser.iedata[1]:0 scope='global'%}{%$browser.baidu = preg_match("/BIDUBrowser/i",$browser.userAgent) scope='global'%}{%$browser.sogou = preg_match("/se [1-2]\.X/i",$browser.userAgent) scope='global'%}{%$updateIE6 = ($tplData.templateConfig.ie6tip=="1") && $browser.ie6 && !$browser.baidu && !$browser.sogou scope='global'%}{%$BySame = ($urlPara.scs)?ture:false scope='global'%}{%* 全局随机数  *%}{%$randNum = mt_rand(0,9999) scope='global'%}{%$PDC = ($tplData.templateConfig.PDC=="1") && ($randNum>=1010 && $randNum<=1109)  scope='global'%}{%* 检测是否存在Aladdin结果  *%}{%foreach $tplData.asResult.item as $res%}{%if $res.comeFrome eq 'SP'%}{%if $res.dispData.SrcId%}{%$hasAladdin = true scope='global'%}{%/if%}{%if $res.dispData.resultData.extData.resourceid > 10000%}{%$hasOpenAladdin = true scope='global'%}{%/if%}{%/if%}{%/foreach%}{%foreach $tplData.ecResult.ecResultItem as $ecom%}{%$adv[$ecom.id].content=$ecom.adContent scope='global'%}{%$adv[$ecom.id].num=$ecom.adNum scope='global'%}{%/foreach%}{%$resToken["tieba"] = ($tplData.templateConfig.token_tieba=="1") scope='global'%}{%$resToken["zhidao"] = ($tplData.templateConfig.token_zhidao=="1") scope='global'%}{%$resToken["baike"] = ($tplData.templateConfig.token_baike=="1") scope='global'%}{%$resToken[""] = false scope='global'%}{%$isOldSnapshootOn = ($tplData.templateConfig.isOldSnapshootOn=="1")?true:false scope='global'%}{%$snapPicUrl = 'http://www.baidu.com/p?' scope='global'%}{%$resLimit = ($pageNo==1)&&($tplData.templateConfig.resLimit=="1") scope='global'%}{%foreach $tplData.rsseResult.daResult as $da%}{%$daRes[$da.itemSrcid].num=$da.resNum scope='global'%}{%$daRes[$da.itemSrcid].results=$da.res scope='global'%}{%/foreach%}{%$suggestion_version = '1.0.3.0' scope='global'%}{%$advanced_url = 'http://www.baidu.com/gaoji/advanced.html' scope='global'%}{%$newswifi_url = 'http://app.news.baidu.com/?src=pctop' scope='global'%}{%$help_url = 'http://www.baidu.com/search/news_help.html' scope='global'%}{%$special_pagetype_para  = ' 0,4' scope='global'%}{%$www_domain = 'http://www.baidu.com' scope='global'%}{%$news_domain = 'http://news.baidu.com' scope='global'%}{%$music_domain = 'http://music.baidu.com' scope='global'%}{%$image_domain = 'http://image.baidu.com' scope='global'%}{%$ikown_domain = 'http://zhidao.baidu.com' scope='global'%}{%$tieba_domain = 'http://tieba.baidu.com' scope='global'%}{%$video_domain = 'http://video.baidu.com' scope='global'%}{%$baike_domain = 'http://baike.baidu.com' scope='global'%}{%$youbian_domain = 'http://youbian.baidu.com' scope='global'%}{%$map_domain = 'http://map.baidu.com' scope='global'%}{%$wenku_domain = 'http://wenku.baidu.com' scope='global'%}{%$more_domain = 'http://www.baidu.com/more/' scope='global'%}{%$cache_domain = 'http://cache.baiducontent.com' scope='global'%}{%$cache_domain = 'http://cache.baidu.com' scope='global'%}{%$c_domain = 'http://c.baidu.com' scope='global'%}{%$ubs_domain = 'http://nsclick.baidu.com' scope='global'%}{%$ubs_url = '/v.gif' scope='global'%}{%$suggestion_src = 'http://www.baidu.com/js/bdsug.js' scope='global'%}{%$app_domain = 'http://app.baidu.com' scope='global'%}{%$hao123_domain = 'http://www.hao123.com' scope='global'%}{%$sugHost = "http://nssug.baidu.com/su" scope="global"%}{%* 原baidu.cfg *%}{%$logo = '<img src="http://news.baidu.com/resource/img/logo_news.gif" width="117" height="38" border="0" alt="到百度首页" title="到百度首页">' scope='global'%}{%$needubs = '1' scope='global'%}{%$pp_template_for_rs = 'baidur' scope='global'%}{%$is_internal_flow = '1' scope='global'%}{%$my_app_per_page_count = '5' scope='global'%}{%$showLike = '1' scope='global'%}{%$showLikeTip = '1' scope='global'%}{%$lable_foot_year = "{%date('Y')%}" scope='global'%}{%$lable_foot_word = '此内容系百度根据您的指令自动搜索的结果，不代表百度赞成被搜索网站的内容或立场' scope='global'%}{%* 静态文件域名,域名后请不要带/  *%}{%$STATIC_DOMAIN_WWW0 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$STATIC_DOMAIN_WWW1 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$STATIC_DOMAIN_ALADDIN0 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$STATIC_DOMAIN_ALADDIN1 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$STATIC_DOMAIN_APP0 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%$STATIC_DOMAIN_APP1 = 'http://s1.bdstatic.com/r/www' scope='global'%}{%* CSS部分 *%}{%* IMG部分 *%}{%$IMG_WWW_ALL = '/img/i-1.0.0.png' scope='global'%}{%$IMG_WWW_BG = '/img/bg-1.0.0.gif' scope='global'%}{%$urlArgs.cl = ($urlPara.cl != 3)?"&cl=`$urlPara.cl`":""  scope='global'%}{%$urlArgs.ct = ($urlPara.rtt == 6) ? "&ct=0":"&ct=1" scope='global'%}{%$urlArgs.tn = ($urlPara.tn != 'baidu') ? "&tn=`$urlPara.tn`":"" scope='global'%}{%$urlArgs.rn = ($urlPara.rn != 10) ? "&rn=`$urlPara.rn`":"" scope='global'%}{%$urlArgs.ie = ($urlPara.ie != 'gb2312') ? "&ie=`$urlPara.ie`":"" scope='global'%}{%$urlArgs.bt = ($urlPara.bt_only) ? "&bt=`$urlPara.bt_only|escape:'url'`":"&bt=0" scope='global'%}{%$urlArgs.et = ($urlPara.et_only) ? "&et=`$urlPara.et_only|escape:'url'`":"&et=0" scope='global'%}{%$urlArgs.lm = ($urlPara.lm_only) ? "&lm=`$urlPara.lm_only|escape:'url'`":"" scope='global'%}{%$jumpUrlComponent = "`$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.bt``$urlArgs.et``$urlArgs.lm`"%}{%*是否能将js基础库放到页尾*%}{%$baseJSInPageEnd = true scope="global"%}{%$nocache_start = "<!--[bd_nocache_start]-->"%}{%$nocache_end = "<!--[bd_nocache_end]-->"%}
{%capture pager assign=pagerTxt%}
  {%if $tplData.queryInfo.tPageNo > 1%}
    {%if $pageNo > 1%}
      <a href="{%$searchAction%}?word={%$queryOriginal|escape:'url'%}&pn={%($pageNo - 2) * $urlPara.rn%}{%$jumpUrlComponent%}&rsv_page=-1" class="pre">&lt;上一页</a>
    {%/if%}
    {%for $index = 1 to 10%}
      {%if ($pageNo - 1 + $index - 10) > 0%}
        <a href="{%$searchAction%}?word={%$queryOriginal|escape:'url'%}&pn={%($pageNo - 2 + $index - 10) * $urlPara.rn%}{%$jumpUrlComponent%}">
          {%$pageNo - 1 + $index - 10%}
        </a>
      {%/if%}
    {%/for%}
      <span class="cur">{%$pageNo%}</span>
    {%for $index = 1 to 9%}
      {%if ($pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}
        <a href="{%$searchAction%}?word={%$queryOriginal|escape:'url'%}&pn={%($pageNo + $index - 1) * $urlPara.rn%}{%$jumpUrlComponent%}">
          {%$pageNo + $index%}
        </a>
      {%/if%}
    {%/for%}
    {%if $pageNo < $tplData.queryInfo.tPageNo%}
      <a href="{%$searchAction%}?word={%$queryOriginal|escape:'url'%}&pn={%$pageNo * $urlPara.rn%}{%$jumpUrlComponent%}&rsv_page=1" class="next">下一页&gt;</a>
    {%/if%}
{%/if%}
{%/capture%}
<keyword text="{%$tplData.queryInfo.wordNoSyntax|escape%}">
{%if ($topHint & 0x4) != 0%}
<reference><![CDATA[{%$seNum = count($tplData.rsseResult.seword)%}{%for $index=0 to $seNum-1%}{%$seWord = $tplData.rsseResult.seword[$index]%}<a href="/ns?word={%$seWord|escape:'url'%}{%$jumpUrlComponent%}&f=12">{%$seWord|escape%}</a>&nbsp;&nbsp;{%/for%}]]>
</reference>
{%/if%}
{%$rsNum = count($tplData.rsseResult.rsphrase)%}
{%if $rsNum > 0%}
<reference_query><![CDATA[{%for $index=0 to 9%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}{%if $rsWord%}{%$rsWord.phrase|escape:'html'%}|{%/if%}{%/for%}]]></reference_query>
{%/if%}
</keyword>
<listnum><![CDATA[{%$tplData.asResult.asDataListNum%}]]></listnum>
<resultnum><![CDATA[{%$tplData.asResult.asResultNum%}]]></resultnum>
  {%foreach $tplData.asResult.item as $res%}
  <item>
      <title><![CDATA[{%$res.offsetInfo.title|highlight:2%}]]></title>
      <link><![CDATA[{%$res.offsetInfo.url|escape:'html'%}]]></link>
      <pubDate><![CDATA[{%$res.dispData.rtset|escape:'html'|date_format:"%a, %d %b %Y %T"%}]]></pubDate>
      <source><![CDATA[{%$res.dispData.rtses|escape:'html'%}]]></source>
      <author><![CDATA[{%$res.dispData.rtses|escape:'html'%}]]></author>
      <image><![CDATA[{%$res.dispData.ThumURL|escape:'html'%}]]></image>
      <description><![CDATA[{%$res.offsetInfo.summary|highlight:2%}]]></description>
  </item>
  {%/foreach%}
<nevigator><![CDATA[{%$pagerTxt%}]]></nevigator>
</wapnews>
