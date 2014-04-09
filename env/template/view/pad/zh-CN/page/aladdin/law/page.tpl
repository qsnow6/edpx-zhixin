{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='content'%}<style data-merge>.op_law_title{text-align:center;margin-top:-1px;margin-bottom:3px;font-weight:normal;font-size:1.7em}.op_law_ltuc{color:#666;text-align:center;padding-bottom:11px}.op_law_size16{font-size:1.2em}.op_law_size20{font-size:1.5em}.op_law_text{color:#323232;line-height:30px}.op_law_gap{padding-bottom:11px}.op_law_foot{text-align:right;font-size:.9em;clear:both}.op_law_foot span{color:#ccc;margin:0 8px}.op_law_foot a{color:#999;text-decoration:none}.op_law_foot a.op_law_color{color:#0{%*i*%}100ce}.op_law_foot a:hover{text-decoration:underline}.op_law_fl{float:left}.op_law_textNum{width:24px;line-height:30px}.op_law_textCont{width:564px}.op_law_textCont_change{width:591px}</style><div class="c-border c-clearfix"> <div class="op_law_title">{%$tplData.contTit|escape:'html'%}</div> {%if $tplData.court!="" ||$tplData.ltuc!="" %} <p class="op_law_ltuc">{%$tplData.court|escape:'html'%}<span class="c-gap-right"></span>{%$tplData.ltuc|escape:'html'%}</p> {%/if%} {%$count = count($tplData.text)%} {%foreach $tplData.text as $item%} {%if $count > 1%} {%if $item.number%}<p class="op_law_fl op_law_textNum op_law_size16">{%$item.number%}</p>{%/if%}<p class="op_law_size16 op_law_textCont op_law_fl op_law_text{%if $item@last%} op_law_gap{%/if%}{%if $item.number == ''%} op_law_textCont_change{%/if%}">{%$item.value|escape:'html'%}</p> {%else%} <p class="{%if $item.value|string_display_len < 48%}op_law_size20{%else%} op_law_size16{%/if%} op_law_text{%if $item@last%} op_law_gap{%/if%}">{%$item.value|escape:'html'%}</p> {%/if%} {%/foreach%} <p class="op_law_foot">{%if $tplData.lawtext[0]['orgin']!=""%}<a class="op_law_color" href="{%$tplData.lawtext[0].orginLink%}" target="_blank">{%$tplData.lawtext[0].orgin|escape:'html'%}</a>{%/if%}{%if $tplData.lawtext[0]['orgin']!="" && $tplData.lawtext[0]['source']!=""%}<span>|</span>{%/if%}{%if $tplData.lawtext[0]['source']!=""%}<a href="{%$tplData.lawtext[0].sourceLink%}" target="_blank">{%$tplData.lawtext[0].source|escape:'html'%}</a>{%/if%}</p></div>{%/block%}{%block name='foot'%}{%/block%}