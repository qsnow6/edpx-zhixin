{%extends 'c_right_base.tpl'%} {%block name='content'%}<style data-merge>.opr-personinfo-rankup,.opr-personinfo-rankdown{background:url(http://www.baidu.com/aladdin/img/zhixin/updown.gif) no-repeat}.container_s .opr-personinfo-searchnum{display:none}.container_s .opr-personinfo-todaypvonly .opr-personinfo-searchnum{display:inline}.opr-personinfo-rankup{background-position:right 3px;padding-right:16px}.opr-personinfo-rankdown{background-position:right -26px;padding-right:16px}.opr-personinfo-todaypvonly .opr-personinfo-rankup,.opr-personinfo-todaypvo{%*i*%}nly .opr-personinfo-rankdown{background:0}.opr-personinfo-infoname{white-space:nowrap}.opr-personinfo-title{float:left}</style>{%$titleLengthL = $tplData.title|string_display_len%}{%if !($tplData.option && $tplData.option[0] && $tplData.option[0].text)%} {%$tempDataTitleDataL = $tplData.title|limitlen:52%}{%else%} {%if $titleLengthL >= 52%} {%$tempDataTitleDataL = $tplData.title|limitlen:52%} {%else%} {%$tempDataTitleDataL = $tplData.title|limitlen:52%} {%$optionLengthL = 48 - $titleLengthL%} {%if $optionLengthL >= 4%} {%$tempDataOptionDataL = $tplData.option[0].text|limitlen:$optionLengthL%} {%/if%} {%/if%}{%/if%}{%$titleLengthS = $tplData.title|string_display_len%}{%if !($tplData.option && $tplData.option[0] && $tplData.option[0].text)%} {%$tempDataTitleDataS = $tplData.title|limitlen:66%}{%else%} {%if $titleLengthS >= 66%} {%$tempDataTitleDataS = $tplData.title|limitlen:66%} {%else%} {%$tempDataTitleDataS = $tplData.title|limitlen:66%} {%$optionLengthS = 62 - $titleLengthS%} {%if $optionLengthS >= 4%} {%$tempDataOptionDataS = $tplData.option[0].text|limitlen:$optionLengthS%} {%/if%} {%/if%}{%/if%}<div> <div class="cr-title c-gap-bottom-small c-clearfix"> {%if $tplData.today%} {%* 只有pv数据的，窄屏下不显示 *%} <div class="opr-personinfo-title"> {%if $tplData.from && $tplData.from[0].text%} {%$tplData.from[0].text%} {%else%} {%$tplData.title|limitlen:52%} {%/if%} </div> {%else%} <div class="opr-personinfo-title"> {%$tplData.title|limitlen:52%} </div> {%/if%} <div class="{%if $tplData.today[0].pv!='' && $tplData.today[0].rank==''%} opr-personinfo-todaypvonly{%/if%} cr-title-sub c-clearfix"> {%if $tplData.today[0].pv != ''%} <span class="opr-personinfo-searchnum {%if $tplData.today[0].status == 'up'%}opr-personinfo-rankup{%elseif $tplData.today[0].status == 'down'%}opr-personinfo-rankdown{%else%}{%/if%} cr-title-sub c-gap-left-small">{%if !($tplData.today[0].pv!='' && $tplData.today[0].rank=='')%}{%if $tplData.from[0].link%}<a href="{%$tplData.from[0].link%}" target="_blank">{%/if%}{%$tplData.today[0].pvtip%}{%if $tplData.from[0].link%}</a>{%/if%}{%/if%}：<strong>{%$tplData.today[0].pv%}</strong></span> {%/if%} {%if $tplData.today[0].rank != ''%} <span class="cr-title-sub c-gap-left-small">{%if $tplData.from[0].link%}<a href="{%$tplData.from[0].link%}" target="_blank">{%/if%}{%$tplData.today[0].ranktip%}{%if $tplData.from[0].link%}</a>{%/if%}：<strong>{%$tplData.today[0].rank%}</strong></span> {%/if%} </div> </div> {%if $tplData.summary%} {%if $tplData.list%} <div class="opr-personinfo-summary c-gap-top"> {%else%} <div class="opr-personinfo-summary"> {%/if%} {%build_search_url_limit_ubburl content=$tplData.summary[0].text limit=112%} {%if $tplData.summary[0].moretext != ''%} <a href="{%$tplData.summary[0].morelink%}" target="_blank" class="opr-personinfo-link">{%$tplData.summary[0].moretext%}</a> {%/if%} </div> {%/if%} <div class="opr-personinfo-info"> <table> {%foreach $tplData.list as $ls%} {%if $ls@index > 7%}{%break%}{%/if%} <tr> <td class="opr-personinfo-infoname">{%$ls.name%}：</td> <td> {%build_search_url_limit_ubburl content=$ls.content limit=42%} </td> </tr> {%/foreach%} </table> </div> {%if $tplData.source[0].text%} <div class="c-gap-top-small"> {%build_search_url_limit_ubburl content=$tplData.source[0].text%} </div> {%/if%}</div>{%/block%}