{%extends file='baidu/index.tpl'%} {%block name="index_head_style_ext"%}<style >.bg2{background-image:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons-sam-searchbox_35de3810.png);background-repeat:no-repeat;_background-image:url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons-sam-searchbox_8866cc3d.gif)}#fm{padding-left:100px;text-align:left;z-index:1}.s_form{position:relative}.s_ipt_wr{position:relative;width:433px;height:30px;display:inline-block;margin-right:5px;background-position:0 -288px;border:1px solid #b8b8b8;border-color:#858585 #b{%*i*%}8b8b8 #b8b8b8 #858585;vertical-align:top}.s_ipt_wr_f,.s_ipt_wr_h{border-color:#388bff}.s_ipt{width:420px;height:22px;font:16px/22px arial;margin:5px 0 0 7px;padding:0;background:#fff;border:0;outline:0;-webkit-appearance:none}.s_ipt_p{padding-right:24px;*padding-right:0}.s_ipt_x{position:absolute;left:392px;top:5px;width:26px;height:26px;background-position:-610px -292px}.s_ipt_x_n{display:none}.s_ipt_x_h{background-position:-635px -292px}.s_btn{width:100px;height:32px;padding-top:2px\9;font-siz{%*i*%}e:14px;padding:0;background-color:transparent;background-position:0 -240px;border:0;cursor:pointer}.s_btn_wr{width:102px;height:34px;display:inline-block;background-position:0 -240px;*position:relative;z-index:0;vertical-align:top}.s_btn_wr_f{background-position:-120px -240px}.s_btn_wr_d{background-position:-240px -240px}.sug_bg{position:absolute;width:100px;height:100px;bottom:7px;right:4px;background-position:-373px -173px}</style>{%/block%}{%block name="index_search"%}<p id="nv"><a href="{%$news_domain%}">新&nbsp;闻</a>　<b>网&nbsp;页</b>　<a href="{%$tieba_domain%}">贴&nbsp;吧</a>　<a href="{%$ikown_domain%}">知&nbsp;道</a>　<a href="{%$music_domain%}">音&nbsp;乐</a>　<a href="{%$image_domain%}">图&nbsp;片</a>　<a href="{%$video_domain%}">视&nbsp;频</a>　<a href="{%$map_domain%}">地&nbsp;图</a></p><div id="fm"><form name="f" class="s_form" action="/s"><span class="bg2 s_ipt_wr"><input type="text" name="wd" id="kw" maxlength="100" class="s_ipt"></span><div class="bg2 s_ipt_x s_ipt_x_n"></div><input type="hidden" name="rsv_bp" value="0">{%if $urlPara.vit%}<input type=hidden name=vit value="{%$urlPara.vit|vui_escape:'html'%}">{%/if%}{%if $urlPara.dsp%}<input type=hidden name=dsp value="{%$urlPara.dsp|vui_escape:'html'%}">{%/if%}{%if $urlPara.tn || $urlPara.ch || $urlPara.bar%}<input type=hidden name=ch value="{%if $urlPara.ch%}{%$urlPara.ch|vui_escape:'html'%}{%/if%}"><input type=hidden name=tn value="{%if $urlPara.tn%}{%$urlPara.tn|vui_escape:'html'%}{%/if%}"><input type=hidden name=bar value="{%if $urlPara.bar%}{%$urlPara.bar|vui_escape:'html'%}{%/if%}">{%/if%}<input type="hidden" name="rsv_spt" value="3"><input type="hidden" name="ie" value="utf-8"><span class="bg2 s_btn_wr"><input type="submit" value="{%$lable_submit_value%}" id="su" class="s_btn"></span></form><span class="tools"><span id="mHolder"><div id="mCon"><span>输入法</span></div></span></span><ul id="mMenu"><li><a href="#" name="ime_hw">手写</a></li><li><a href="#" name="ime_py">拼音</a></li><li class="ln"></li><li><a href="#" name="ime_cl">关闭</a></li></ul></div>{%/block%}{%block name="home_script_js"%}<script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/jquery/jquery-1.10.2.min_f2fb5194.js" charset="utf-8"></script><script type="text/javascript" src="http://s1.bdstatic.com/r/www/cache/static/global/js/home-sam-searchbox_63723cea.js" charset="utf-8"></script>{%/block%}