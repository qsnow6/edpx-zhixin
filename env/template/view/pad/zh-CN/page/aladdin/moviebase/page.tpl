{%extends 'base.tpl'%} {%block name='content'%}<style >.op_mvbase_table th,.op_mvbase_table td{vertical-align:top}.op_mvbase_table td div{height:21px;line-height:21px}.op_mvbase_other,.op_mvbase_table td{font-size:1em}.op_mvbase_table th a{display:block;width:88px;height:118px;border:1px solid #e0e0e0;overflow:hidden;margin:5px 10px 0 0}.op_mvbase_table th img{width:88px;height:118px}.op_mvbase_showurl{color:#008000}.op_mvbase_line1{color:#666;word-spacing:10px}.op_mvbase_line1 span{display:inline-block;height:14px;line-height:14px}.op_mvbas{%*i*%}e_line1 .op_mvbase_data{line-height:24px}.op_mvbase_starbox,.op_mvbase_star{background:url(http://www.baidu.com/aladdin/img/book/hotel_star_level-1.2.png) no-repeat 0 0;overflow:hidden;line-height:0}.op_mvbase_starbox{background-position:left 2px;width:75px;margin-top:2px}.op_mvbase_star{background-position:left -12px}</style> {%$FE_GBVAR.wrapper_prefix%} {%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%} <table class="op_mvbase_table" cellspacing="0" cellpadding="0"><tr> {%if $tplData.image[0]['src']!=""%} <th><a href="{%$tplData.image[0]['link']|escape:'html'%}" target="_blank"><img src="{%$tplData.image[0]['src']|escape:'html'%}" alt="{%$tplData.image[0]['imgalt']|escape:'html'%}"></a></th> {%/if%} <td class="op_mvbase_intro"> <div class="op_mvbase_line1">{%if $tplData.nowmarks!=""%}<span class="op_mvbase_starbox"><span class="op_mvbase_star"></span></span><span>{%$tplData.nowmarks|escape:'html'|escape:'javascript'%}</span>{%if $tplData.fullmarks!=""%}<span>{%$tplData.fullmarks|escape:'html'%}</span>{%/if%}{%/if%} {%if $tplData.playdate!=""%}<span>{%$tplData.playdate|escape:'html'%}</span>{%/if%}</div> <div>{%$tplData.director|limitlen:60|highlight:0%}</div> {%if $tplData.actor!=""%} <div>{%$tplData.actor|limitlen:60|highlight:0%}</div> {%/if%} {%if $tplData.type!=""%} <div style="word-spacing:8px">{%$tplData.type|limitlen:60|highlight:0%}</div> {%/if%} {%if $tplData.story!=""%} <div>{%$tplData.story|limitlen:50|highlight:0%}{%if $tplData.more[0]['word']!=""%} <a href="{%$tplData.more[0]['link']|escape:'html'%}" target="_blank">{%$tplData.more[0]['word']|escape:'html'%}</a>{%/if%}</div> {%/if%} {%if $tplData.link1[0]['text']!=""%} <div><a href="{%$tplData.link1[0]['src']|escape:'html'%}" target="_blank">{%$tplData.link1[0]['text']|escape:'html'%}</a>{%if $tplData.link1[1]['text']!=""%}{%$loop_maxcount=count($tplData.link1)%}{%for $op_loop_count=1 to 8%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.link1[$op_loop_count]['src'] != ""%} | <a href="{%$tplData.link1[$op_loop_count]['src']|escape:'html'%}" target="_blank">{%$tplData.link1[$op_loop_count]['text']|escape:'html'%}</a>{%/if%}{%else%}{%break%}{%/if%}{%/for%}{%/if%}</div> {%/if%} </td> </tr></table> <div class="op_mvbase_other"> {%if $tplData.othermv!=""%} <div>{%$tplData.othermv|escape:'html'%}：{%if $tplData.link2[0]['name']!=""%}<a href="{%$tplData.link2[0]['url']|escape:'html'%}" target="_blank">{%$tplData.link2[0]['name']|escape:'html'%}</a>{%/if%}{%if $tplData.link2[1]['name']!=""%}{%$loop_maxcount=count($tplData.link2)%}{%for $op_loop_count=1 to 4%}{%if $op_loop_count<$loop_maxcount%}{%if $tplData.link2[$op_loop_count]['name']!=""%} | <a href="{%$tplData.link2[$op_loop_count]['url']|escape:'html'%}" target="_blank">{%$tplData.link2[$op_loop_count]['name']|escape:'html'%}</a>{%/if%}{%else%}{%break%}{%/if%}{%/for%}{%/if%}</div> {%/if%} {%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%} {%$FE_GBVAR.wrapper_suffix%}<script >A.init(function() {var T = A.baidu,_this = this,aspan = _this.qq('op_mvbase_line1').getElementsByTagName('span');if (aspan.length == 1) {aspan[0].className = 'op_mvbase_data';}{%if $tplData.nowmarks!=""%};var op_mvbase_nowmarks = Number({%$tplData.nowmarks|escape:'html'|escape:'javascript'%});_this.qq('op_mvbase_star').style.width = op_mvbase_nowmarks * 10 + '%';{%/if%};});</script>{%/block%}