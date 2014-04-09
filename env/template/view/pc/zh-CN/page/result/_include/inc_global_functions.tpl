{%* AS结果的时间显示逻辑 *%}{%function name=display_as_time%}{%* 计算lastModifyTime *%}{%$lastModifyTime = (strlen($timeShow) > 0) ? $timeShow : $lastModified%}{%* 计算时间差的因子是否存在 *%}{%if $FactorTimePrecision >= 0 && $FactorTime >=0 && $LastModTime >= 0 && $LinkFoundTime >=0 %}{%* 计算时间差的因子是否合法 *%}{%if $FactorTimePrecision == 2 || (($serverTime - $FactorTime) / 3600) > 24 || (($serverTime - $LastModTime) / 3600) > 48 || (($serverTime - $LinkFoundTime) / 3600) > 24%}{%$lastModifyTime%}{%else%}{%$second = ($FactorTimePrecision==1) ? $LinkFoundTime : $FactorTime%}{%* 显示时间差逻辑 *%}{%* 计算时间差 *%}{%$timeDiff=$serverTime-$second%}{%$timeDiffMin=$timeDiff/60%}{%$timeDiffHour=$timeDiff/3600%}{%$timeDiffDay=$timeDiff/86400%}{%if $timeDiffMin < 60%}{%if $timeDiff < 0%}{%$lastModifyTime%}{%else%}{%($timeDiffMin <= 1) ? "1" : $timeDiffMin|string_format:'%d' %}分钟前{%/if%}{%else%}{%($timeDiffHour < 24) ? "`$timeDiffHour|string_format:'%d'`小时前" : $lastModifyTime%}{%/if%}{%* /显示时间差逻辑 *%} {%/if%}{%else%}{%$lastModifyTime%}{%/if%}{%/function%}{%function name=display_time%}{%$timeDiff=$serverTime-$second%}{%$timeDiffMin=$timeDiff/60%}{%$timeDiffHour=$timeDiff/3600%}{%$timeDiffDay=$timeDiff/86400%}{%if $timeDiff > 0%}{%if $timeDiffMin < 60%}{%($timeDiffMin <= 1) ? "1" : $timeDiffMin|string_format:'%d' %}分钟{%else%}{%($timeDiffHour < 24) ? "`$timeDiffHour|string_format:'%d'`小时" : "`$timeDiffDay|string_format:'%d'`天"%}{%/if%}前{%/if%}{%/function%}{%function name=make_url%}{%(strlen($eurl)>0 && strlen($eurl)<$urlEncMaxLen)?"`$urlEncryption_jump``$eurl`":"`$ourl`"%}{%/function%}{%function name=get_url%}{%if $urlEncryption && $encryptionUrl%}{%if $token && $resToken[$token]%}{%$urlTokenMd5Str = "`$originUrl``$serverTime`"%}{%$urlTokenMd5 = md5($urlTokenMd5Str)%}{%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}{%if strlen($urlToken)>0 && strlen($urlToken)<$urlEncMaxLen%}{%$originUrl = "`$originUrl`&__bd_tkn__=`$urlToken`"%}{%/if%}{%make_url eurl=$originUrl|encryptUrl ourl=$originUrl%}{%else%}{%make_url eurl=$encryptionUrl ourl=$originUrl%}{%/if%}{%else%}{%$originUrl%}{%/if%}{%/function%}{%function name=get_mu%}{%if $urlEncryption && $encryptionUrl%}{%make_url eurl=$encryptionUrl ourl=$originUrl%}{%else%}{%$originUrl%}{%/if%}{%/function%}{%function name=enc_url%}{%if $urlEncryption%}{%if $token && $resToken[$token]%}{%$urlTokenMd5Str = "`$url``$serverTime`"%}{%$urlTokenMd5 = md5($urlTokenMd5Str)%}{%$urlToken = "`$urlTokenMd5`&`$serverTime`"|encryptUrl:3:$productEncKey%}{%if strlen($urlToken)>0 && strlen($urlToken)<$urlEncMaxLen%}{%$url = "`$url`&__bd_tkn__=`$urlToken`"%}{%/if%}{%/if%}{%make_url eurl=$url|encryptUrl ourl=$url%}{%else%}{%$url%}{%/if%}{%/function%}{%function name=enc_str%}{%if $urlEncryption%}{%$str|encryptUrl:3%}{%else%}{%$str%}{%/if%}{%/function%}