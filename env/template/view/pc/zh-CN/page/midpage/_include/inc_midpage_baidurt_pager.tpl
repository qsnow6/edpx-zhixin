{%*
* @fileOverview 时效性中间页模板-翻页
* @author       update by changshuang
* @version      1.0
* @date         2012/12/20
*%}<p id="page">{%if !isset($urlPara.pnw) && !isset($urlPara.pbs)%}{%if $tplData.queryInfo.tPageNo > 1%}{%if $tplData.queryInfo.pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>{%/if%}{%/if%}{%/if%}{%if isset($urlPara.pnw) && isset($urlPara.pbl) && isset($urlPara.pbs) && !isset($urlPara.pvd)%}{%if $urlPara.pnw == 1 && $urlPara.pbl == 0 && $urlPara.pbs == 0%}{%if $tplData.queryInfo.tPageNo > 1%}{%if $tplData.queryInfo.pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pnw=1&pbl=0&pbs=0&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pnw=1&pbl=0&pbs=0&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pnw=1&pbl=0&pbs=0&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pnw=1&pbl=0&pbs=0&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>{%/if%}{%/if%}{%/if%}{%/if%}{%if isset($urlPara.pbs) && !isset($urlPara.pnw) && !isset($urlPara.pbl)%}{%if $urlPara.pbs==1%}{%if $tplData.queryInfo.tPageNo > 1%}{%if $tplData.queryInfo.pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pbs=1&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pbs=1&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pbs=1&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pbs=1&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>{%/if%}{%/if%}{%/if%}{%/if%}{%if isset($urlPara.pbl) && isset($urlPara.pbs) && !isset($urlPara.pnw)%}{%if $urlPara.pbl==1 && $urlPara.pbs==0%}{%if $tplData.queryInfo.tPageNo > 1%}{%if $tplData.queryInfo.pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pbl=1&pbs=0&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pbl=1&pbs=0&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pbl=1&pbs=0&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pbl=1&pbs=0&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>{%/if%}{%/if%}{%/if%}{%/if%}{%if isset($urlPara.pvd) && isset($urlPara.pnw) && isset($urlPara.pbl) && isset($urlPara.pbs) && isset($urlPara.rvf)%}{%if $urlPara.pvd==1 && $urlPara.pnw==0 && $urlPara.pbl==0 && $urlPara.pbs==0 && $urlPara.rvf==1%}{%if $tplData.queryInfo.tPageNo > 1%}{%if $tplData.queryInfo.pageNo > 1%}<a href="s?wd={%$query|vui_escape:'url'%}&pvd=1&pnw=0&pbl=0&pbs=0&rvf=1&pn={%($tplData.queryInfo.pageNo - 2)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">&lt;{%$lable_pre_page%}</a>{%/if%}{%for $index = 1 to 10%}{%if ($tplData.queryInfo.pageNo - 1 + $index - 10) > 0%}<a href="s?wd={%$query|vui_escape:'url'%}&pvd=1&pnw=0&pbl=0&pbs=0&rvf=1&pn={%($tplData.queryInfo.pageNo-2+$index - 10)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo-1+$index - 10%}</a>{%/if%}{%/for%}<strong>{%$tplData.queryInfo.pageNo%}</strong>{%for $index = 1 to 9%}{%if ($tplData.queryInfo.pageNo + $index - 1) < $tplData.queryInfo.tPageNo%}<a href="s?wd={%$query|vui_escape:'url'%}&pvd=1&pnw=0&pbl=0&pbs=0&rvf=1&pn={%($tplData.queryInfo.pageNo+$index - 1)*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}">{%$tplData.queryInfo.pageNo+$index%}</a>{%/if%}{%/for%}{%if $tplData.queryInfo.pageNo < $tplData.queryInfo.tPageNo %}<a href="s?wd={%$query|vui_escape:'url'%}&pvd=1&pnw=0&pbl=0&pbs=0&rvf=1&pn={%$tplData.queryInfo.pageNo*$urlPara.rn%}{%$urlArgs.cl%}{%$urlArgs.ct%}{%$urlArgs.tn%}{%$urlArgs.rn%}{%$urlArgs.ie%}{%$urlArgs.f%}{%$urlArgs.lm%}{%$urlArgs.si%}{%$urlArgs.usm%}{%$urlArgs.z_type%}{%$urlArgs.ch%}{%$urlArgs.sts%}{%$urlArgs.rtt%}{%$urlArgs.bsst%}{%$urlArgs.oe%}{%if strlen($urlPara.io)%}&io={%$urlPara.io|vui_escape:'url'%}{%/if%}" class="n">{%$lable_for_page%}&gt;</a>{%/if%}{%/if%}{%/if%}{%/if%}</p>