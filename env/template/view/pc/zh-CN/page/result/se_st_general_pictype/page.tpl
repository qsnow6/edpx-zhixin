{%extends 'se_st_default/page.tpl'%} {%block name="result_abstract"%}<div class="c-abstract">{%if $tplData.general_pic.hasPicType == "21"%}<i class="c-text c-text-info c-gap-icon-right-small"><b>[</b><span>图文</span><b>]</b></i>{%/if%}{%if $tplData.TimeFactor && strlen($tplData.TimeFactor) > 0%}<span style="color:#666">{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.TimeFactor|regex_replace:"/\s-\s/":"&nbsp;" lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}-&nbsp;</span>{%/if%}{%$tplData.classicInfo.summary|highlight:6%}</div>{%/block%}