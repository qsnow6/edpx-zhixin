{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_img_main"><ul class="op_img_small"></ul><div class="op_img_showurl"><span class="g">{%$tplData.showurl%}</span>{%if $tplData.morelink[0]['txt']!=""%} - <a href="{%$tplData.morelink[0]['linkUrl']%}" target="_blank">{%$tplData.morelink[0]['txt']%}</a>{%/if%}{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/" class="op_LAMP">{%$FE_GBVAR.aladdin_txt%}</a>{%/if%}</div></div>{%$FE_GBVAR.wrapper_suffix%}<script >
var op_img_bImg = [{%$loop_maxcount=count($tplData.icon)%}{%for $op_loop_count=0 to 10%}{%if $op_loop_count<$loop_maxcount%}{'iconSmallAddress': '{%$tplData.icon[$op_loop_count]['iconSmallAddress']%}', 'smallWidth': '{%$tplData.icon[$op_loop_count]['smallWidth']%}', 'smallHeight': '{%$tplData.icon[$op_loop_count]['smallHeight']%}', 'iconBigAddress': '{%$tplData.icon[$op_loop_count]['iconBigAddress']%}', 'bigWidth': '{%$tplData.icon[$op_loop_count]['bigWidth']%}', 'bigHeight': '{%$tplData.icon[$op_loop_count]['bigHeight']%}', 'iconUrlLink': '{%$tplData.icon[$op_loop_count]['iconUrlLink']%}', 'title': '{%$tplData.icon[$op_loop_count]['title']%}', 'px': '{%$tplData.icon[$op_loop_count]['px']%}', 'size': '{%$tplData.icon[$op_loop_count]['size']%}', 'showUrl': '{%$tplData.icon[$op_loop_count]['showUrl']%}'},{%else%}{%break%}{%/if%}{%/for%}{}];
op_img_bImg.pop();
</script>{%/block%}