{%extends file='baidu/header.tpl'%} {%block name="login"%}<div id="u">{%if $isUserLogin == 1%}<span id="user"><a href="http://i.baidu.com" class="un">{%$userDisplayInfo%}<i class="c-icon c-icon-triangle-down-blue"></i></a><div id="userMenu" class="userMenu"></div></span>|<a href="{%$preferences_url%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'setting','login':'1'})"{%/if%}>搜索设置</a>|<a href="/{%if $urlPara.dsp%}?dsp={%$urlPara.dsp|vui_escape:'url'%}{%/if%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'index','login':'1'})"{%/if%} class="last">百度首页</a>{%else%}<a href="{%$preferences_url%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'setting','login':'0'})"{%/if%}>搜索设置</a>|<a id="btop" href="/{%if $urlPara.dsp%}?dsp={%$urlPara.dsp|vui_escape:'url'%}{%/if%}" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'index','login':'0'})"{%/if%}>百度首页</a>|<a id="lb" href="https://passport.baidu.com/v2/?login&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" onclick="return false;" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'login'})"{%/if%}>登录</a><a href="https://passport.baidu.com/v2/?reg&regType=1&tpl=mn&u=http%3A%2F%2Fwww.baidu.com%2F" {%if $needubs == 1%} onmousedown="return user_c({'fm':'set','tab':'reg'})"{%/if%} target="_blank" class="reg">注册</a>{%/if%}</div>{%/block%}{%block name="head_style_ext"%}<style >#u_level{display:none}</style>{%/block%}