{%fis_widget%}{%$safetips['10040'] = "bd-1"%}{%$safetips['10041'] = "bd-2"%}{%$safetips['10042'] = "bd-3"%}{%$safetips['10043'] = "bd-4"%}{%$safetips['10050'] = "sc-1"%}{%$safetips['10051'] = "sc-2"%}{%$safetips['10052'] = "sc-3"%}{%$safetips['10053'] = "sc-4"%}{%$safetips['10060'] = "qq-1"%}{%$safetips['10061'] = "qq-2"%}{%$safetips['10062'] = "qq-3"%}{%$safetips['10063'] = "qq-4"%}{%$safetips['10070'] = "js-1"%}{%$safetips['10071'] = "js-2"%}{%$safetips['10072'] = "js-3"%}{%$safetips['10073'] = "js-4"%}{%$safetips['10080'] = "hs-1"%}{%$safetips['10081'] = "hs-2"%}{%$safetips['10082'] = "hs-3"%}{%$safetips['10083'] = "hs-4"%}{%$safestr = ""%}{%foreach $res.dispData.addSubArr as $subArr%}{%if $safetips[$subArr.typeID]%}{%$safestr = "`$safetips[$subArr.typeID]`|`$safestr`"%}{%/if%}{%/foreach%}{%if $safestr%}{%$bdFlag = stripos($safestr,"bd")%}{%$scFlag = stripos($safestr,"sc")%}{%$qqFlag = stripos($safestr,"qq")%}{%$jsFlag = stripos($safestr,"js")%}{%$hsFlag = stripos($safestr,"hs")%}<div class="unsafe_content"><a href="{%enc_url url="http://www.baidu.com/cache/spam/safe_tip2.html?`$res.offsetInfo.url|vui_escape:'url'|cat:"&data="|cat:$safestr`"%}" target="_blank" id="unsafe_{%$resIndex%}" data-safe="{%$safestr%}" class="unsafe_ico"><span class="unsafe_txttip">风险</span>{%if $qqFlag !==FALSE %}腾讯电脑管家提醒您：{%elseif $jsFlag !==FALSE && $bdFlag ===FALSE && $scFlag ===FALSE && $qqFlag === FALSE && $hsFlag === FALSE%}金山云安全提醒您：{%else%}安全联盟提醒您：{%/if%}该网站可能存在安全风险，请谨慎访问！</a></div>{%/if%}{%/fis_widget%}