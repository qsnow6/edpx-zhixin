{%if count($hintData.hints.RightBottom) > 0%}<style>.hint_right_bottom .hint_right_t_l,.hint_right_bottom .hint_right_t_a,.hint_right_bottom .hint_right_t_t_securityplan{background:url(http://s1.bdstatic.com/r/www/cache/pad/static/global/img/rightHintIcon_4234bbda.png) no-repeat;background-size:225px 122px}.hint_right_bottom{line-height:20px;margin-bottom:20px;margin-left:10px;padding:0 11px;color:#666;position:relative;border:1px solid #9dc9f5}.hint_right_bottom ul{width:1000px}.hint_right_bottom li{float:left;list-style-type:none}.hint_r{%*i*%}ight_bottom_hover,.hint_right_bottom_expand{border-width:2px;padding:0 10px}.hint_right_bottom,.hint_right_bottom_box,.hint_right_bottom li{width:235px;overflow:hidden}.hint_right_bottom .hint_right_title{height:25px;margin:5px 0 4px;overflow:hidden}.hint_right_bottom .hint_right_content{display:none;padding:8px 0 11px 0;border-top:1px solid #e7edf4;overflow:hidden}.hint_right_bottom_hover .hint_right_title,.hint_right_bottom_expand .hint_right_title{margin:4px 0 3px}.hint_right_bottom_hover .hi{%*i*%}nt_right_content,.hint_right_bottom_expand .hint_right_content{padding:8px 0 10px 0}.hint_right_bottom_expand .hint_right_title{height:26px}.hint_right_bottom .hint_right_botline{color:#8ec0f4}.hint_right_bottom .hint_right_t_l{float:left;margin:0 9px 0 3px;display:inline-block;width:20px;height:24px;background-position:-10px -8px}.container_s .hint_right_bottom .hint_right_t_l{margin:0 9px 0 3px}.hint_right_bottom .hint_right_t_a{float:right;display:inline-block;width:20px;height:24px;backgroun{%*i*%}d-position:-10px -47px}.hint_right_bottom .hint_right_t_a_down{background-position:-10px -88px}.hint_right_bottom .hint_right_t_t_securityplan{float:left;display:inline-block;width:177px;height:24px;background-position:-43px -8px}</style><div class="hint_right_bottom"><div class="hint_right_bottom_box"><ul class="c-clearfix">{%$lisnum = 0%}{%foreach $hintData.hints.RightBottom as $hint%}<li>{%if $hint@index > 0%}{%break%}{%/if%}{%display_hint widgetName=$hint.templateName%}{%$lisnum = $lisnum + 1%}</li>{%/foreach%}</ul></div></div><script type="text/javascript">bds.ready(function(){var $con = $('.hint_right_bottom');var $title = $con.find('.hint_right_title');var $arrow = $con.find('.hint_right_t_a');var $content= $con.find('.hint_right_content');$title.click(function(){$con.toggleClass('hint_right_bottom_expand').toggleClass('hint_right_bottom_hover');$arrow.toggleClass('hint_right_t_a_down');$content.toggle();});});</script>{%/if%}