{%$rsUrlComponent = "&oq=`$query|vui_escape:'url'``$urlArgs.cl``$urlArgs.ct``$urlArgs.tn``$urlArgs.rn``$urlArgs.ie``$urlArgs.lm``$urlArgs.si``$urlArgs.ch``$urlArgs.sts``$urlArgs.z_type``$urlArgs.vit``$urlArgs.dsp`"%}{%$rsNum = count($tplData.rsseResult.rsphrase)%}{%if $rsNum > 0%}<div id="rs" style="background:#ffffff;padding:0;margin:18px 0 -5px 0;"><table cellpadding="0" cellspacing="0" border="0"><tr><th class="tt">{%$lable_rs%}</th></tr></table><table style="margin-left:20px;"><tr>{%for $index=0 to 9%}{%$rsWord = $tplData.rsseResult.rsphrase[$index]%}<th class="">{%if $rsWord%}<a href="{%$searchAction%}?wd={%$rsWord.phrase|vui_escape:'url'%}&rsp={%$index%}&f=1{%$rsUrlComponent%}{%(strlen($tplData.rsseResult.tag)>0)?"&rsv_ers=`$tplData.rsseResult.tag`":""%}&rs_src={%$rsWord.rsComeFrom%}">{%$rsWord.phrase|vui_escape:'html'%}</a>{%/if%}</th>{%if $index == 1 || $index == 3 || $index == 5 || $index == 7%}</tr><tr>{%else if $index==9%}{%else%}<td></td>{%/if%}{%/for%}</tr></table></div>{%/if%}