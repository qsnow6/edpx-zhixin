<div id="search"><form name="f2" action="{%$searchAction%}"><input type="hidden" name="bs" value="{%$query|vui_escape:'html'%}">{%if $urlPara.z_type == 3%}<input type="hidden" name="z" value="{%$urlPara.z|vui_escape:'html'%}">{%/if%}{%if $urlPara.ct != 0%}<input type="hidden" name="ct" value="{%$urlPara.ct|vui_escape:'html'%}">{%/if%}{%if $urlPara.tn != 'baidu'%}<input type="hidden" name="tn" value="{%$urlPara.tn%}">{%/if%}{%if $urlPara.rn != 10%}<input type="hidden" name="rn" value="{%$urlPara.rn|vui_escape:'html'%}">{%/if%}{%if $urlPara.lm != 0%}<input type="hidden" name="lm" value="{%$urlPara.lm|vui_escape:'html'%}">{%/if%}{%if $urlPara.ch != 0%}<input type="hidden" name="ch" value="{%$urlPara.ch|vui_escape:'html'%}">{%/if%}{%if $urlPara.vit%}<input type="hidden" name="vit" value="{%$urlPara.vit|vui_escape:'html'%}">{%/if%}{%if $urlPara.dsp%}<input type="hidden" name="dsp" value="{%$urlPara.dsp|vui_escape:'html'%}">{%/if%}{%if $pageEncoding == 'utf-8'%}<input type="hidden" name="ie" value="{%$pageEncoding%}">{%/if%}{%if strlen($urlPara.si) > 0%}<input type="hidden" name="si" value="{%$urlPara.si|vui_escape:'html'%}">{%/if%}<input type="hidden" name="f" value="8"><input type="hidden" name="rsv_bp" value="2">{%if $urlPara.rsv_spt%}{%if $urlPara.rsv_spt == '1' || $urlPara.rsv_spt == '2' || $urlPara.rsv_spt == '3'%}<input type="hidden" name="rsv_spt" value="{%$urlPara.rsv_spt%}">{%/if%}{%/if%}<span class="s_ipt_wr"><input name="wd" class="s_ipt" value="{%$query|vui_escape:'html'%}" maxlength="100"></span><span class="s_btn_wr"><input type="submit" value="{%$lable_submit_value%}" class="s_btn" onmouseout="this.className='s_btn'" onmousedown="this.className='s_btn s_btn_h'"></span><span class="s_help">&nbsp;&nbsp;&nbsp;<a href="{%$searchAction%}?wd={%$query|vui_escape:'url'%}&tn=baidufir" onmousedown="return c({'almid':'fir','stl':'link'})">结果中找</a>&nbsp;&nbsp;&nbsp;<a href="{%$www_domain%}/search/jiqiao.html" target="_blank" onmousedown="return c({'fm':'behb','tab':'help','url':this.href,'title':this.innerHTML})">{%$lable_help%}</a>&nbsp;&nbsp;&nbsp;<a href="http://qingting.baidu.com" target="_blank" onmousedown="return c({'fm':'behb','tab':'listen','url':this.href,'title':this.innerHTML})">{%$lable_listen%}</a>&nbsp;&nbsp;&nbsp;<a href="http://www.baidu.com/search/jubao.html" target="_blank" onmousedown="return c({'fm':'behb','tab':'jubao','url':this.href,'title':this.innerHTML})">举报</a>&nbsp;&nbsp;&nbsp;<a href="{%$advanced_url%}" onclick='location.href=this.href+"?q="+encodeURIComponent(document.f.kw.value);return false;' onmousedown="return c({'fm':'behb','tab':'gaoji','url':this.href,'title':this.innerHTML})">{%$lable_advanced%}</a></span></form></div><div id="foot">&copy;{%$lable_foot_year%} Baidu <span>{%$lable_foot_word%}</span></div>