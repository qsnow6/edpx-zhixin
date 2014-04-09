{%extends 'base.tpl'%} {%block name='content'%}<style >.op_olympic_wrapper{font-size:1em;padding-top:7px}.op_olympic_tab .op-ui-tabs-sep{width:5px;background-position:3px -32px}.op_olympic_tab .op-ui-tabs-content{padding:0}.op_olympic_clear{clear:both;height:12px;*height:4px;font-size:0;line-height:0}.op_olympic_img{float:left;padding-top:3px}.op_olympic_img a{width:118px;height:90px;display:block;overflow:hidden;border:1px solid #ccc}.op_olympic_info{float:left;padding-left:9px}.op_olympic_info p{margin-top:8px}.op_olympic_info .op_olympic_{%*i*%}title{margin:0}.op_olympic_title a{font-weight:bold}.op_olympic_table td{padding:9px;border-bottom:1px solid #eee;font-size:1em}.op_olympic_table td a{text-decoration:none}.op_olympic_table td p{white-space:nowrap;overflow:hidden}.op_olympic_txt{height:19px;background:url(http://www.baidu.com/aladdin/img/asiangames/jinpai-1.0.gif) no-repeat left;padding-left:16px}.op_olympic_tinfo{color:#666;padding-top:3px}.op_olympic_play{display:inline-block;text-decoration:none;padding-left:20px;white-space:{%*i*%}nowrap}.op_olympic_play1{text-decoration:none;color:#000;cursor:default;margin-left:20px}.op_olympic_icon{background:url(http://www.baidu.com/aladdin/img/asiangames/play.gif) no-repeat left;margin-left:0;padding-left:20px}.op_olympic_icon1{display:inline-block;height:16px;width:22px;cursor:default}.op_olympic_link{padding-top:10px}.op_olympic_link a,.op_olympic_l a{margin-right:5px}.op_olympic_gm{position:relative}.op_olympic_pic{position:absolute;height:30px;overflow:hidden;right:5px;top:-20px}{%*i*%}.op_olympic_to{padding-top:8px;color:#696969}.op_olympic_tab .op-ui-tabs-tab,.op_olympic_tab .op-ui-tabs-only{font-size:1em}</style>{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_olympic_wrapper"> {%if $tplData.icon%}<div class="op_olympic_img"><a target="_blank" href="{%$tplData.url|escape:'html'%}"><img src="{%$tplData.icon|escape:'html'%}" /></a></div><div class="op_olympic_info"><p class="op_olympic_title"><a target="_blank" href="{%$tplData.vtitle[0]['link']|escape:'html'%}">{%$tplData.vtitle[0]['txt']|escape:'html'%}</a></p><p>{%$tplData.vtime|escape:'html'%}</p><p>{%$tplData.vplay|escape:'html'%}</p><p class="op_olympic_l">{%$tplData.vltitle|escape:'html'%}{%$loop_maxcount=count($tplData.vlink)%}{%for $op_loop_count=0 to 5%}{%if $op_loop_count<$loop_maxcount%}<a target="_blank" href="{%$tplData.vlink[$op_loop_count]['link']|escape:'html'%}">{%$tplData.vlink[$op_loop_count]['txt']|escape:'html'%}</a> {%else%}{%break%}{%/if%}{%/for%}</p></div><div class="op_olympic_clear"></div> {%/if%}<div class="op_olympic_tab"><div class="op_olympic_content" id="op_olympic_content" style="display: none"><div class="op_olympic_div"><table cellpadding="0" cellspacing="0" border="0" width="100%" class="op_olympic_table">{%$loop_maxcount=count($tplData.table1)%}{%for $op_loop_count=0 to 10%}{%if $op_loop_count<$loop_maxcount%} <tr><td>{%$tplData.table1[$op_loop_count]['td1']|escape:'html'%}</td><td><p {%if $tplData.table1[$op_loop_count]['td2icon']%}class="op_olympic_txt"{%/if%}>{%$tplData.table1[$op_loop_count]['td2txt1']|escape:'html'%}</p>{%if $tplData.table1[$op_loop_count]['td2txt2']%}<p class="op_olympic_tinfo">{%$tplData.table1[$op_loop_count]['td2txt2']|escape:'html'%}</p>{%/if%}</td><td>{%if $tplData.table1[$op_loop_count]['td3link']%}<a target="_blank" href="{%$tplData.table1[$op_loop_count]['td3link']|escape:'html'%}">{%/if%}{%$tplData.table1[$op_loop_count]['td3']|escape:'html'%}{%if $tplData.table1[$op_loop_count]['td3link']%}</a>{%/if%}</td> <td><a ></a></td><td> <a target="_blank" class="{%if $tplData.table1[$op_loop_count]['td4link']%}op_olympic_play{%else%}op_olympic_play1{%/if%} {%if $tplData.table1[$op_loop_count]['td4icon']%}op_olympic_icon{%/if%}" href="{%if $tplData.table1[$op_loop_count]['td4link']%}{%$tplData.table1[$op_loop_count]['td4link']|escape:'html'%}{%else%}javascript:void(0);{%/if%}"> {%$tplData.table1[$op_loop_count]['td4']|escape:'html'%} </a> </td></tr>{%else%}{%break%}{%/if%}{%/for%}</table><div class="op_olympic_link">{%$loop_maxcount=count($tplData.mlink1)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%} <a target="_blank" href="{%$tplData.mlink1[$op_loop_count]['link']|escape:'html'%}">{%$tplData.mlink1[$op_loop_count]['txt']|escape:'html'%}</a>{%else%}{%break%}{%/if%}{%/for%}</div></div>{%if $tplData.tab2%}<div class="op_olympic_div"><table cellpadding="0" cellspacing="0" border="0" width="100%" class="op_olympic_table">{%$loop_maxcount=count($tplData.table2)%}{%for $op_loop_count=0 to 10%}{%if $op_loop_count<$loop_maxcount%} <tr><td>{%$tplData.table2[$op_loop_count]['td1']|escape:'html'%}</td><td><p {%if $tplData.table2[$op_loop_count]['td2icon']%}class="op_olympic_txt"{%/if%}>{%$tplData.table2[$op_loop_count]['td2txt1']|escape:'html'%}</p>{%if $tplData.table2[$op_loop_count]['td2txt2']%}<p class="op_olympic_tinfo">{%$tplData.table2[$op_loop_count]['td2txt2']|escape:'html'%}</p>{%/if%}</td><td>{%if $tplData.table2[$op_loop_count]['td3link']%}<a target="_blank" href="{%$tplData.table2[$op_loop_count]['td3link']|escape:'html'%}">{%/if%}{%$tplData.table2[$op_loop_count]['td3']|escape:'html'%}{%if $tplData.table2[$op_loop_count]['td3link']%}</a>{%/if%}</td><td> <a target="_blank" class="{%if $tplData.table2[$op_loop_count]['td4link']%}op_olympic_play{%else%}op_olympic_play1{%/if%} {%if $tplData.table2[$op_loop_count]['td4icon']%}op_olympic_icon{%/if%}" href="{%if $tplData.table2[$op_loop_count]['td4link']%}{%$tplData.table2[$op_loop_count]['td4link']|escape:'html'%}{%else%}javascript:void(0);{%/if%}"> {%$tplData.table2[$op_loop_count]['td4']|escape:'html'%} </a> </td></tr>{%else%}{%break%}{%/if%}{%/for%}</table><div class="op_olympic_link">{%$loop_maxcount=count($tplData.mlink2)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%} <a target="_blank" href="{%$tplData.mlink2[$op_loop_count]['link']|escape:'html'%}">{%$tplData.mlink2[$op_loop_count]['txt']|escape:'html'%}</a>{%else%}{%break%}{%/if%}{%/for%}</div></div>{%/if%}{%if $tplData.tab3%}<div class="op_olympic_div"><table cellpadding="0" cellspacing="0" border="0" width="100%" class="op_olympic_table">{%$loop_maxcount=count($tplData.table3)%}{%for $op_loop_count=0 to 10%}{%if $op_loop_count<$loop_maxcount%} <tr><td>{%$tplData.table3[$op_loop_count]['td1']|escape:'html'%}</td><td><p {%if $tplData.table3[$op_loop_count]['td2icon']%}class="op_olympic_txt"{%/if%}>{%$tplData.table3[$op_loop_count]['td2txt1']|escape:'html'%}</p>{%if $tplData.table3[$op_loop_count]['td2txt2']%}<p class="op_olympic_tinfo">{%$tplData.table3[$op_loop_count]['td2txt2']|escape:'html'%}</p>{%/if%}</td><td>{%if $tplData.table3[$op_loop_count]['td3link']%}<a target="_blank" href="{%$tplData.table3[$op_loop_count]['td3link']|escape:'html'%}" target="_blank">{%/if%}{%$tplData.table3[$op_loop_count]['td3']|escape:'html'%}{%if $tplData.table3[$op_loop_count]['td3link']%}</a>{%/if%}</td><td> <a target="_blank" class="{%if $tplData.table3[$op_loop_count]['td4link']%}op_olympic_play{%else%}op_olympic_play1{%/if%} {%if $tplData.table3[$op_loop_count]['td4icon']%}op_olympic_icon{%/if%}" href="{%if $tplData.table3[$op_loop_count]['td4link']%}{%$tplData.table3[$op_loop_count]['td4link']|escape:'html'%}{%else%}javascript:void(0);{%/if%}"> {%$tplData.table3[$op_loop_count]['td4']|escape:'html'%} </a> </td></tr>{%else%}{%break%}{%/if%}{%/for%}</table><div class="op_olympic_link">{%$loop_maxcount=count($tplData.mlink3)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%} <a target="_blank" href="{%$tplData.mlink3[$op_loop_count]['link']|escape:'html'%}">{%$tplData.mlink3[$op_loop_count]['txt']|escape:'html'%}</a>{%else%}{%break%}{%/if%}{%/for%}</div></div>{%/if%}</div></div><div class="op_olympic_gm">{%if $tplData.bimg[0]['url']%}<div class="op_olympic_pic"><a target="_blank" href="{%$tplData.bimg[0]['link']|escape:'html'%}"><img class="op_olympic_p" src="{%$tplData.bimg[0]['url']|escape:'html'%}" height="30px" /></a></div>{%/if%}</div>{%if $tplData.from%}<div class="op_olympic_to">{%$tplData.from|escape:'html'%}</div>{%/if%}</div>{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}{%$FE_GBVAR.wrapper_suffix%}<script >A.use('tabs');
</script><script >A.init(function() {var T = A.baidu, _this = this;{%if $tplData.icon%};var oImg = _this.qq('op_olympic_img').getElementsByTagName('img')[0];autoWidth(oImg, 118);{%/if%};var iImg = _this.qq('op_olympic_p');var op_olympic_table = _this.q('op_olympic_div');var op_olympic_tab = A.ui.tabs(_this.qq('op_olympic_tab'));var rule = '.op_olympic_tab .op-ui-tabs-tabs,.op_olympic_tab .op-ui-tabs-sep{background-image:url(' + A.uiPrefix + 'tabs/images/op_ui_tab_bg.png);}';var aStyle = document.createElement('style');aStyle.type = 'text/css';try {aStyle .innerHTML = rule;}catch (e) {aStyle .styleSheet.cssText = rule;}document.getElementsByTagName('head')[0].appendChild(aStyle{%*i*%});if (iImg) {autoWidth(iImg, 140);}function autoWidth(obj,maxw) {var newImg = new Image();newImg.onload = function() {obj.width = this.width > maxw ? maxw : this.width;};newImg.src = obj.src;}op_olympic_tab.add('{%$tplData.tab1|escape:'html'%}', op_olympic_table[0]);{%if $tplData.tab2%};op_olympic_tab.add('{%$tplData.tab2|escape:'html'%}', op_olympic_table[1]);{%/if%};{%if $tplData.tab3%};op_olympic_tab.add('{%$tplData.tab3|escape:'html'%}', op_olympic_table[2]);{%/if%};for (var i = 0; i < op_olympic_tab.length; i++) {op_olympic_tab[i].tab.className += ' OP_LOG_BTN';}var op_olympic_current = '{%$tplData.current|escape:'html'%}' * 1;op_olympic_tab.sw(op_olympic_current - 1);});</script>{%/block%}