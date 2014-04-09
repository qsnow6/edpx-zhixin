{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasTitleGap=false%} {%if $tplData.classicInfo&&$tplData.classicInfo.itemUrl%} {%$tplData.url=$tplData.classicInfo.itemUrl%} {%$tplData.title="`$queryInfo.wordNoSyntax`的最新相关消息"%} {%/if%}{%/block%}{%block name='content'%}{%function name=realTimeKvGetTimeInfo time=''%}{%$temp = time()-$time%}{%if $temp<3600%}{%intval($temp/60)%}分钟前{%elseif $temp<86400%}{%intval($temp/3600)%}小时前{%else%}{%intval($temp/86400)%}天前{%/if%}{%/function%}<div class="c-offset"> {%if $tplData.ThumURL0%} <div><a href="{%$tplData.SubTitleUrl0%}" target="_blank">{%$tplData.SubTitle0|limitlen:60|highlight:0%}</a></div> <div class="c-row c-gap-top-small c-gap-bottom-small"> <a class="c-span6" href="{%$tplData.SubTitleUrl0%}" target="_blank"><img class="c-img c-img6" src="{%$tplData.ThumURL0%}"></a> <div class="c-span-last"> <p>{%$tplData.SubAbs0|limitlen:140|highlight:0%}</p> <p><span class="op_realtime_kv_green">{%$tplData.SiteName0%}</span>&nbsp;<span class="op_realtime_kv_gray">{%realTimeKvGetTimeInfo time=$tplData.PostTime0%}</span></p> </div> </div> {%else%} <div class="c-clearfix"> <span class="op_realtime_kv_gray op_realtime_kv_right">{%realTimeKvGetTimeInfo time=$tplData.PostTime0%}</span> <a href="{%$tplData.SubTitleUrl0%}" target="_blank">{%$tplData.SubTitle0|limitlen:50|highlight:0%}</a>&nbsp;<span class="op_realtime_kv_green">{%$tplData.SiteName0%}</span> </div> <p>{%$tplData.SubAbs0|limitlen:140|highlight:0%}</p> {%/if%} {%for $item=1 to 4%} {%if $tplData["SubTitle{%$item%}"]&&trim($tplData["SubTitle{%$item%}"])%} <div class="c-clearfix"> <span class="op_realtime_kv_gray op_realtime_kv_right">{%realTimeKvGetTimeInfo time=$tplData["PostTime{%$item%}"]%}</span> <a href="{%$tplData["SubTitleUrl{%$item%}"]%}" target="_blank">{%$tplData["SubTitle{%$item%}"]|limitlen:50|highlight:0%}</a>&nbsp;<span class="op_realtime_kv_green">{%$tplData["SiteName{%$item%}"]%}</span> </div> {%else%} {%break%} {%/if%} {%/for%}</div>{%/block%}