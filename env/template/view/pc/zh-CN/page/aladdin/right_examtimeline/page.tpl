{%extends 'c_right_base.tpl'%} {%block name='content'%}{%if $extData.feData.hasOffset%}<style>.opr-examtimeline-nodelist li{margin-left:-28px}.opr-examtimeline-title-icon{left:-24px;_left:-29px}</style>{%/if%}<div class="opr-examtimeline"> <div class="opr-examtimeline-title"> <span class="opr-examtimeline-title-icon"></span> {%$tplData.title|escape:'html'%} {%if $tplData.official%} <span class="opr-examtimeline-sp">| <a href="{%$tplData.official[0].url%}" target="_blank">{%$tplData.official[0].text|escape:'html'%}</a> </span> {%/if%} </div> <ul class="opr-examtimeline-nodelist"> {%$now = time()%} {%if $tplData.remainingtime%} {%* 计算目标日期和当前时间的时间间隔 *%} {%$overTime = strtotime( $tplData.remainingtime[0].time )%} {%$remain_time = $overTime - $now%} {%* 每天和每小时的毫秒数 *%} {%$oneDay = 24 * 60 * 60%} {%$oneHour = $oneDay / 24%} {%* 计算剩余时间 *%} {%if $remain_time / $oneDay > 1%} {%$remain_str = ceil( $remain_time / $oneDay )%} {%$remain_unit = '天'%} {%/if%} {%$hours = $remain_time / $oneHour%} {%if $hours > 1 && $hours < 24%} {%$remain_str = floor( $remain_time / $oneHour )%} {%$remain_unit = '小时'%} {%/if%} {%if $remain_str%} <li class="opr-examtimeline-red">{%$tplData.remainingtime[0].text%}<strong>{%$remain_str|escape:'html'%}</strong>{%$remain_unit|escape:'html'%}</li> {%/if%} {%/if%} {%foreach $tplData.timenode as $item%} {%$startTime = strtotime( $item.starttime )%} {%$endTime = strtotime( $item.endtime )%} <li{%if $startTime < $now && $endTime > $now%} class="opr-examtimeline-select"{%/if%} > <span class="opr-examtimeline-time">{%$item.text|escape:'html'%}</span><span class="opr-examtimeline-timetitle">{%$item.title|escape:'html'%}</span> {%for $index = 1 to 3%} {%if $item["link{%$index%}"]%} <span class="opr-examtimeline-link">{%if $index > 1%}|&nbsp;{%/if%}{%build_search_url_limit_ubburl content=$item["link{%$index%}"]%}</span> {%/if%} {%/for%} </li> {%/foreach%} </ul></div>{%/block%}