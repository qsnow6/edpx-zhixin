{%*
* @fileOverview 中间页模板-右侧导航
* @author       刘悦
* @version      1.0
* @date         2012/12/11
*%}<div id="side" {%if strlen($urlPara.io) && $urlPara.io == 0%} style="display:none" {%/if%}><ul> <li>{%if !$urlPara.wb %} <strong>不限来源</strong>{%else%}{%if $urlPara.wb != '1' && $urlPara.wb != '2' && $urlPara.wb != '3' && $urlPara.wb != '4'%} <strong>不限来源</strong>{%else%} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=0&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_all'})">不限来源</a>{%/if%}{%/if%}</li> <li>{%if !$urlPara.wb %} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=4&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_sina'})" class="wb_nav_sina">新浪微博</a>{%else%}{%if $urlPara.wb == 4%} <strong class="wb_nav_sina">新浪微博</strong>{%else%} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=4&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_sina'})" class="wb_nav_sina">新浪微博</a>{%/if%}{%/if%} </li> <li>{%if !$urlPara.wb %} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=1&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_qq'})" class="wb_nav_qq">腾讯微博</a>{%else%}{%if $urlPara.wb == 1%} <strong class="wb_nav_qq">腾讯微博</strong>{%else%} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=1&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_qq'})" class="wb_nav_qq">腾讯微博</a>{%/if%}{%/if%} </li> <li>{%if !$urlPara.wb %} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=3&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_163'})" class="wb_nav_163">网易微博</a> {%else%}{%if $urlPara.wb == 3%} <strong class="wb_nav_163">网易微博</strong>{%else%} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=3&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_163'})" class="wb_nav_163">网易微博</a>{%/if%}{%/if%} </li> <li>{%if !$urlPara.wb %} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=2&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_sohu'})" class="wb_nav_souhu">搜狐微博</a> {%else%}{%if $urlPara.wb == 2%} <strong class="wb_nav_souhu">搜狐微博</strong>{%else%} <a href="/s?wd={%$query|vui_escape:'url'%}&tn=baiduwb&wb=2&cl=2{%if $urlPara.rtt%}&rtt={%$urlPara.rtt|vui_escape:'url'%}{%$urlArgs.ie%}{%/if%}{%$urlArgs.rn%}" onmousedown="return ns_c({'fm':'alwb','tab':'wb_sohu'})" class="wb_nav_souhu">搜狐微博</a>{%/if%}{%/if%} </li> </ul> <div class="weibo_rt"><a href="/s?tn=baidurt&rtt=1&wd={%$query|vui_escape:'url'%}&ie=utf-8" onmousedown="return ns_c({'fm':'alwb','tab':'baidurt'})">其他最新信息</a></div></div>