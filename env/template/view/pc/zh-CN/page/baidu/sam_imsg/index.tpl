{%extends file='baidu/index.tpl'%} {%block name="index_login"%}<div id="u1">{%if $isUserLogin == 1%}<span id="user1"><a href="http://i.baidu.com" class="un" name="tj_home">{%$userDisplayInfo%}<i class="c-icon c-icon-triangle-down-blue"></i></a><div id="userMenu1" class="userMenu"><ul><li><a href="http://i.baidu.com" onmousedown="return user_c({'fm':'set','tab':'uc_center'})">个人中心</a></li><li><a href="http://passport.baidu.com" name="tj_user">帐号设置</a></li><li class="nl"><a href="http://passport.baidu.com/?logout&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_logout">退出</a></li></ul></div></span>|<a id="imsg1" href="http://i.baidu.com/msg/message/list" name="tj_imsg1">消息</a>|<a href={%*i*%}{%*i*%}"{%$preferences_url%}" name="tj_setting">搜索设置</a>{%if $tplData.passport.isSupercenterErr != 1%}|<a href="/home/show/home{%if $urlPara.dsp%}?dsp=pc{%else%}{%if $urlPara.tn || $urlPara.ch || $urlPara.bar%}?tn={%if $urlPara.tn%}{%$urlPara.tn|vui_escape:'url'%}{%/if%}&ch={%if $urlPara.ch%}{%$urlPara.ch|vui_escape:'url'%}{%/if%}&bar={%if $urlPara.bar%}{%$urlPara.bar|vui_escape:'url'%}{%/if%}{%/if%}{%/if%}" name="tj_supper" class="last">新版首页</a>{%/if%}{%else%}<a href="{%$preferences_url%}" name="tj_setting">搜索设置</a>|<a href="https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" name="tj_login" id="lb" onclick="return false;">登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" target="_blank" name="tj_reg" class="reg">注册</a>{%/if%}</div>{%/block%}{%block name="result_login"%}<div id="u">{%if $isUserLogin == 1%}<span id="user"><a href="http://i.baidu.com" class="un">{%$userDisplayInfo%}<i class="c-icon c-icon-triangle-down-blue"></i></a><div id="userMenu" class="userMenu"></div></span>|<a id="imsg" href="http://i.baidu.com/msg/message/list" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'imsg','login':'1'})"{%/if%}>消息</a>|<a href="{%$preferences_url%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'setting','login':'1'})"{%/if%}>搜索设置</a>|<a href="/{%if $urlPara.dsp%}?dsp={%$urlPara.dsp|vui_escape:'url'%}{%/if%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'index','login':'1'})"{%/if%} class="last">百度首页</a>{%else%}<a href="{%$preferences_url%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'setting','login':'0'})"{%/if%}>搜索设置</a>|<a id="btop" href="/{%if $urlPara.dsp%}?dsp={%$urlPara.dsp|vui_escape:'url'%}{%/if%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'index','login':'0'})"{%/if%}>百度首页</a>|<a id="lb" href="https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" onclick="return false;" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'login'})"{%/if%}>登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'reg'})"{%/if%} target="_blank" class="reg">注册</a>{%/if%}</div>{%/block%}{%block name="index_foot_script_ext" append%}<script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/global/js/imsg_f9324dbd.js"></script><script>$(function(){function showImsg(){if($("#imsg")[0] && bds.comm.ishome != 1){bds.se.imsg && bds.se.imsg.get && bds.se.imsg.get("imsg"); }if($("#imsg1")[0] && bds.comm.ishome == 1){bds.se.imsg && bds.se.imsg.get && bds.se.imsg.get("imsg1"); }}bds.comm.loginAction.push(function(stat,username){if(stat==1){showImsg();}});showImsg();});</script>{%/block%}