{%extends file='baidu/none.tpl'%} {%block name="head_style_ext"%}{%if $isUserLogin == 1%}{%else%}<style data-for="result" >#mCon{top:5px}.s_ipt_wr.bg,.s_btn_wr.bg,#su.bg{background-image:none}.s_btn_wr{width:auto;height:auto;border-bottom:1px solid transparent;*border-bottom:0}.s_btn{width:100px;height:34px;color:white;letter-spacing:1px;background:#3385ff;border-bottom:1px solid #2d78f4;outline:medium;*border-bottom:0}.s_btn.btnhover{background:#317ef3;border-bottom:1px solid #2868c8;*border-bottom:0;box-shadow:1px 1px 1px #ccc}.s_btn_h{background:#3075dc;box-shadow:inset 1px 1px 3px #2964{%*i*%}bb;-webkit-box-shadow:inset 1px 1px 3px #2964bb;-moz-box-shadow:inset 1px 1px 3px #2964bb;-o-box-shadow:inset 1px 1px 3px #2964bb}.s_ipt_wr{width:539px;height:32px;margin-right:0;border-right-width:0;border-color:#b8b8b8 transparent #ccc #b8b8b8}.s_ipt_wr:hover,.s_ipt_wr.ipthover{border-color:#999 transparent #b3b3b3 #999}.s_ipt_wr.iptfocus{border-color:#4791ff transparent #4791ff #4791ff}.s_ipt{width:526px;margin-top:6px}#head .bdsug{top:33px}.bdsug{width:538px;border-color:#ccc;box-shadow:1px{%*i*%}1px 3px #ededed;-webkit-box-shadow:1px 1px 3px #ededed;-moz-box-shadow:1px 1px 3px #ededed;-o-box-shadow:1px 1px 3px #ededed}.bdsug.bdsugbg{background-repeat:no-repeat;background-position:100% 100%;background-size:100px 110px;background-image:url(http://s1.bdstatic.com/r/www/cache/static/home/img/sugbg_6a9201c2.png);background-image:url(http://s1.bdstatic.com/r/www/cache/static/home/img/sugbg_d24a0811.gif)\9}.bdsug li{width:522px;line-height:28px}.bdsug li.bdsug-s{width:522px;background:#f0f0f0}{%*i*%}.bdsug-ala h3{margin:8px 0 5px 0}</style>{%/if%}{%/block%}{%block name="foot_script_logic_ext"%}{%if $isUserLogin == 1%}{%else%}<script>$(function(){for(i=0;i<3;i++){u($($('.s_ipt_wr')[i]),$($('.s_ipt')[i]),$($('.s_btn_wr')[i]),$($('.s_btn')[i]));}function u(iptwr,ipt,btnwr,btn){if(iptwr && ipt){iptwr.on('mouseover',function(){iptwr.addClass('ipthover');}).on('mouseout',function(){iptwr.removeClass('ipthover');}).on('click',function(){ipt.focus();});ipt.on('focus',function(){iptwr.addClass('iptfocus');}).on('blur',function(){iptwr.removeClass('iptfocus');}).on('render',function(e){var $s = iptwr.parent().find('.bdsug');v{%*i*%}ar l = $s.find('li').length;if(l>=5){$s.addClass('bdsugbg');}else{$s.removeClass('bdsugbg');}});}if(btnwr && btn){btnwr.on('mouseover',function(){btn.addClass('btnhover');}).on('mouseout',function(){btn.removeClass('btnhover');});}}});</script>{%/if%}{%/block%}