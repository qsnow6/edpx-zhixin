{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='content'%}{%$lines0 = $tplData.lines[0]%}{%$lines1 = $tplData.lines[1]%}<div class="c-border op_map_bustime"> <div class="c-tabs"> <ul class="c-tabs-nav c-tabs-nav-movetop"{%if !$lines1['lineName']%}style="display:none"{%/if%} data-click="{fm:'beha'}"> <li class="c-tabs-nav-li c-tabs-nav-selected">{%$lines0['lineName']|escape%}</li> {%if $lines1%}<li class="c-tabs-nav-sep"></li> <li class="c-tabs-nav-li">{%$lines1['lineName']|escape%}</li>{%/if%} </ul> {%$geoStr0 = $lines0.detail[0]['startName']|string_display_len%} {%$geoStr1 = $lines0.detail[0]['endName']|string_display_len%} {%$timeStr0 = $lines0.detail[0]['startName']|string_display_len%} {%$timeStr1 = $lines0.detail[0]['endTime']|string_display_len%} {%$strLeng =  $geoStr0 +$geoStr1 +$timeStr0+$timeStr1+ 25%} {%if $strLeng< 37%} {%$font = 20%} {%elseif $strLeng < 70 && $strLeng > 36%}{%$font = 16%}{%elseif $strLeng < 101 && $strLeng>69%}{%$font = 14%} {%/if%} {%foreach $tplData.lines as $item%} <div class="c-tabs c-tabs-content {%if count($tplData.lines) > 1%}c-gap-top{%/if%}" {%if !$item@first%}style="display:none"{%/if%}> <div class="op_map_bustimetitle">{%$item['lineName']|escape%}首末车时间：</div> <p class="op_map_bustimefont{%$font|escape%}"> <span class="c-gap-right {%if $font == 14%}op_map_bustimeblock{%/if%}">{%$item.detail[0]['startName']|escape%}→{%$item.detail[0]['endName']|escape%}方向</span> <span class="c-gap-right-small">首车：{%$item.detail[0]['startTime']|escape%}</span>末车：{%$item.detail[0]['endTime']|escape%} </p> {%if $item.detail[1]['startName']%} <p class="op_map_bustimefont{%$font|escape%}"><span class="c-gap-right {%if $font == 14%}op_map_bustimeblock{%/if%}">{%$item.detail[1]['startName']|escape%}→{%$item.detail[1]['endName']|escape%}方向</span> <span class="c-gap-right-small">首车：{%$item.detail[1]['startTime']|escape%}</span>末车：{%$item.detail[1]['endTime']|escape%} </p> {%/if%} {%if $item.detail[0]['lineUrl']%}<p class="op_map_bustimefeed">来自：<a href="{%$item.detail[0]['lineUrl']%}" target="_blank">百度地图</a><span class="op_map_bustimesep">|</span><a class="op_map_bustimefeed_a" href="{%$item.detail[0]['jiucuoUrl']%}" target="_blank" >报错</a> </p>{%/if%} </div> {%/foreach%} </div> </div> {%/block%}{%block name='foot'%}{%/block%}