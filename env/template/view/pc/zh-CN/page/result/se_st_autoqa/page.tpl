{%extends 'base.tpl'%} {%block name="result_box_attr"%}data-click="{'fm': '{%rs_enc_str str="alzd1"%}','rsv_bdr':'{%$extData['burstFlag']%}'}"{%/block%}{%block name="result_content"%}<style>.autoqa{margin-top:11px;_margin-top:9px;}
                .question_icon,.answer_icon{background:url(http://s1.bdstatic.com/r/www/cache/res/static/global/img/bg_92e71001.png) no-repeat 0 -592px;display:inline-block;width:17px;height:16px;vertical-align:-2px;margin-right:8px;*vertical-align:0;}
                .answer_icon{background-position:-32px -592px;float:left;margin-top:2px;}
                .answer_text{overflow:hidden;_zoom:1;}
                .answer_text pre{margin:0;font-size:13px;white-space:pre-wrap;white-space:-moz-pre-wrap;white-space:-pre-wrap;word-wrap:break-word;}</style>{%$titleUrl = {%rs_get_url originUrl=$tplData.classicInfo.urlEncoded encryptionUrl=$tplData.classicInfo.encryptionUrl%}%}<h3 class="t"><span class="question_icon"></span><a href="{%$titleUrl|escape%}" target="_blank">{%if $tplData.autoqa.title%}{%$tplData.autoqa.title|trim|limitlen:40|highlight:4%}{%else%}{%$tplData.title|trim|limitlen:40|highlight:4%}{%/if%}_最佳答案_百度知道</a></h3><font size="-1"><div class="autoqa"><span class="answer_icon"></span><div class="answer_text"><pre>{%if $tplData.autoqa.answer%}{%$tplData.autoqa.answer|trim|regex_replace:"/[\r\n]/":"!-----!"|highlight:4|regex_replace:"/(!-----!)/":"\r\n"%}{%else%}{%$tplData.answer|trim|regex_replace:"/[\r\n]/":"!-----!"|highlight:4|regex_replace:"/(!-----!)/":"\r\n"%}{%/if%}</pre><p style="color:#666;padding-top:5px;">答案来自<span style="color:#008000;font-weight:700;">百度知道</span>网友:{%if $tplData.autoqa.name%}<a href="{%rs_enc_url url="http://www.baidu.com/p/`$tplData.autoqa.name|trim|vui_escape:'url'`?from=zhidao"%}" data-click="{'fm': '{%rs_enc_str str="alzd1"%}','p2': '{%$resIndex%}'}" target="_blank" style="color:#666;">{%$tplData.autoqa.name|trim%}</a>{%else%}<a href="{%rs_enc_url url="http://www.baidu.com/p/`$tplData.name|trim|vui_escape:'url'`?from=zhidao"%}" data-click="{'fm': '{%rs_enc_str str="alzd1"%}','p2': '{%$resIndex%}'}" target="_blank" style="color:#666;">{%$tplData.name|trim|escape:'html'%}</a>{%/if%}</p><div class="g">{%if $tplData.DispUrl%}{%$tplData.DispUrl|url_bold_html%}{%else%}{%$tplData.classicInfo.urlDisplay|url_limit:45:true%}{%/if%}{%rs_display_as_time FactorTimePrecision=$tplData.FactorTimePrecision FactorTime=$tplData.FactorTime LastModTime=$tplData.LastModTime LinkFoundTime=$tplData.LinkFoundTime timeShow=$tplData.classicInfo.timeShow lastModified=$tplData.classicInfo.lastModified serverTime=$serverTime%}&nbsp;{%fis_widget_inline name="info_tools" url=$titleUrl title=$tplData.classicInfo.view.title%}{%if $title && $url%}<div class="c-tools" id="tools_{%$tplData.classicInfo.urlSign%}" data-tools='{"title":"{%$title|escape:javascript|escape%}","url":"{%$url|escape:javascript|escape%}"}'><a class="c-tip-icon"><i class="c-icon c-icon-triangle-down-g"></i></a></div>{%/if%}{%/fis_widget_inline%}</div></div></div></font>{%/block%}