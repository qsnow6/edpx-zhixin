{%extends 'c_right_base.tpl'%} {%block name='content'%}<style data-merge>.opr_timeliness_imga{display:block;position:relative}.opr_timeliness_imga span.opr_timeliness_imgmask{display:block;position:absolute;bottom:0;left:0;height:1.82em;line-height:1.82em;background:rgba(0,0,0,0.75);filter:progid:DXImageTransform.Microsoft.Gradient(GradientType=0,StartColorStr='#99000000',EndColorStr='#99000000')}.opr_timeliness_imga span.opr_timeliness_imgmask a{color:#fff}.opr_timeliness_tip_tip li{list-style:square;list-style-position:inside;line-height:1.82em}.o{%*i*%}pr_timeliness_table{width:100%}.op_timeliness_inNum{font-weight:bold}.op_timeliness_inNum span{padding:0 5px;color:#ff8a00}</style><style>{%if $extData.feData.platform === 'pc'%}.opr_timeliness_narrow{width:259px}{%/if%}</style>{%function name="getImgHTML" item=""%}{%if $item.imglink%}{%if $item.imgcontent%}<div class="opr_timeliness_imga" style="height:{%$item.imgheight|escape%}px">{%/if%}<a href="{%$item.imglink%}" target="_blank">{%/if%}<img src="{%$item.imgsrc%}" class="c-img" width="{%$item.imgwidth|escape%}px" height="{%$item.imgheight|escape%}px"/>{%if $item.imglink%}</a>{%if $item.imgcontent%}<span class="opr_timeliness_imgmask" style="width:{%$item.imgwidth|escape%}px"><a href="{%$item.imglink%}" class="c-gap-left-small" title="{%$item.imgcontent%}" target="_blank">{%if $item.imgwidth<=70%}{%$item.imgcontent|limitlen:8|escape%}{%else%}{%$item.imgcontent|limitlen:32|escape%}{%/if%}</a></span></div>{%/if%}{%/if%}{%/function%}<div class="{%if $tplData.narrow%} opr_timeliness_narrow{%/if%}"> {%$max_count=count($tplData.tips)%}{%for $index=0 to 4%}{%if $index<$max_count%} {%$item=$tplData.tips[$index]%} {%if $item.title%} <div {%if $index!=0%} class="c-gap-top-small"{%/if%}> <div class="cr-title{%if $item.seq=='1'&& $item.imgsrc%} c-gap-bottom{%/if%}"> {%if $item.titlelink%}<div class="cr-title-sub">{%build_search_url_limit_ubburl content=$item.titlelink%}</div>{%/if%} {%$item.title|limitlen:30|replace:'...':''|escape%} </div> <div class="opr_timeliness_tip_tip"> {%if $item.seq=='1'%} <table class="opr_timeliness_table"> <tr> <td> {%if $item.imgsrc%} {%getImgHTML item=$item%} {%if $item.imgwidth<=70%}</td><td>{%/if%} {%/if%} {%if !$item.imgsrc && $item.imglittle0%} <div class="c-row c-gap-top-small" style="width:101%"> {%for $index=0 to 2%} {%$params="imglittle{%$index%}"%} {%$paramlink="imglittlelink{%$index%}"%} {%if $item[$params]%} <div class="c-span4 {%if $index ==2%} c-span-last{%/if%}"> <a href="{%$item[$paramlink]%}" target="_blank"><img class="c-img c-img4" src="{%$item[$params]%}" /></a> </div> {%/if%} {%/for%} </div> {%/if%} {%if $item.label0%} <p class="c-gap-top-small">{%build_search_url_limit_ubburl content=$item.label0%}</p> {%/if%} {%if $item.label1%} <ul class="{%if $item.imgsrc&&$item.imgwidth<=70%}c-gap-left-small{%else%}c-gap-top-small{%/if%}"> {%if $item.label2%} {%for $ind=1 to 10%} {%$param="label{%$ind%}"%} {%if $item[$param]%} <li> {%build_search_url_limit_ubburl content=$item[$param]%} </li> {%else%} {%break%} {%/if%} {%/for%} {%else%} <li>{%build_search_url_limit_ubburl content=$item.label1%}</li> {%/if%} </ul> {%/if%} </td> </tr> </table> {%else%} {%if !$item.imgsrc && $item.imglittle0%} <div class="c-row c-gap-top c-gap-bottom-small"> {%for $index=0 to 2%} {%$params="imglittle{%$index%}"%} {%$paramlink="imglittlelink{%$index%}"%} {%if $item[$params]%} <div class="c-span4 {%if $index ==2%} c-span-last{%/if%}"> <a href="{%$item[$paramlink]%}" target="_blank"><img class="c-img c-img4" src="{%$item[$params]%}" /></a> </div> {%/if%} {%/for%} </div> {%/if%} {%if $item.label0%} <p class="c-gap-top-small">{%build_search_url_limit_ubburl content=$item.label0%}</p> {%/if%} {%if $item.label1%} <ul class="c-gap-top-small"> {%if $item.label2%} {%for $ind=1 to 10%} {%$param="label{%$ind%}"%} {%if $item[$param]%} {%$hotico = 'hotico'|cat:$ind%} {%$newico = 'newico'|cat:$ind%} <li> {%build_search_url_limit_ubburl content=$item[$param]%}{%if $item.$hotico && substr($hotico,-1)==$ind%}<i class="c-text c-text-danger c-gap-icon-left-small">热</i>{%/if%}{%if $item.$newico && substr($newico,-1)==$ind%}<i class="c-text c-text-danger c-gap-icon-left-small">新</i>{%/if%} </li> {%else%} {%break%} {%/if%} {%/for%} {%else%} <li>{%build_search_url_limit_ubburl content=$item.label1%}</li> {%/if%} </ul> {%/if%} {%if $item.imgsrc%} {%getImgHTML item=$item%} {%/if%} {%/if%} </div> </div> {%/if%} {%else%} {%break%} {%/if%} {%/for%}</div>{%if $tplData.activities[0]%}<div class="op_timeliness_inNum"> {%$tplData.activities[0].beforeTip%}<span>{%$tplData.activities[0].num%}</span>{%$tplData.activities[0].afterTip%}</div>{%/if%}{%/block%}