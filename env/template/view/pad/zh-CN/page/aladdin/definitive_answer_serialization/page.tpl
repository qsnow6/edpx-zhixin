{%extends 'c_base.tpl'%} {%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='data_modifier'%} {%*定义结果页内链参数末尾公共部分*%} {%$SearchURL_EndParams = "&amp;rsv_cq={%$extData.OriginQuery%}&amp;rsv_dl=0_left_qaserial_{%$extData.resourceid%}"%}{%/block%}{%block name='content'%}<style>{%fe_fn_c_css css='img'%}.op_definitive_answer_ser_main{overflow:auto}.op_definitive_answer_ser_main a{text-decoration:none}.op_definitive_answer_ser_main a:hover{text-decoration:underline}.op_definitive_answer_ser_area{padding-bottom:20px}.op_definitive_answer_ser_prop,.op_definitive_answer_ser_prop a{font-size:16px;font-weight:bold;color:#999}.op_definitive_answer_ser_answer{font-family:"Microsoft YaHei",SimHei;{%if $tplData.result[0].attrquery|string_display_len < 30%}font-size:26px;{%elseif $tplData.result[0].attrquery|string_display_len < 72%}font-size:22px;{%elseif $tplData.result[0].attrquery|string_display_len < 138%}font-size:18px;{%else%}font-size:16px;{%/if%}}.op_definitive_answer_ser_abstract{color:#333}.op_definitive_answer_ser_abstract_more{font-family:SimSun;white-space:nowrap;color:#00c}.op_definitive_answer_ser_abstract_more a{color:#00c}.op_definitive_answer_ser_feedback{color:#999;font-size:14px;text-align:right;margin:-15px 0 -3px 0}.op_definitive_answer_ser_feedback a{color:#999;text-decoration:none;cursor:pointer}.op_definitive_answer_ser_feedback a:hover{text-decoration:underline}.op_definitive_answer_ser_feedback .op_definitive_answer_s{%*i*%}er_feedback_sep{color:#ccc;margin:0 8px}.op_definitive_answer_ser_serialization{padding-top:3px;margin-bottom:-7px;border-top:#f0f0f0 1px solid;overflow:auto;clear:both}.op_definitive_answer_ser_serialization_title{color:#000;font-weight:normal;line-height:20px;white-space:nowrap;vertical-align:top}.op_definitive_answer_ser_serialization_links{line-height:20px}.op_definitive_answer_ser_serialization_links a{display:inline-block;text-decoration:none}.op_definitive_answer_ser_serialization_links a{%*i*%}:hover{text-decoration:underline}.op_definitive_answer_ser_serialization_links span{color:#ccc}</style><div class="c-border"> <div class="op_definitive_answer_ser_main c-row"> {%if $tplData.result[0].appendpic%} <div class="op_definitive_answer_ser_img c-span6"> {%if $tplData.result[0].jumplink%} <a href='{%$tplData.result[0].jumplink%}' target="_blank"> {%elseif $tplData.result[0].search_type && $tplData.result[0].search_type == 'value'%} <a href='{%build_search_url params="wd={%$tplData.result[0].attrquery|escape:'url'%}{%$SearchURL_EndParams%}"%}' target="_blank" title="{%$tplData.result[0].attrquery|escape:'html'%}"> {%else%} <a href='{%build_search_url params="wd={%$tplData.QueryAnalyse[0].entity|escape:'url'%}{%$SearchURL_EndParams%}"%}' target="_blank" title="{%$tplData.QueryAnalyse[0].entity|escape:'html'%}"> {%/if%} <img class="c-img c-img6" src="{%$tplData.result[0].appendpic%}"/> </a> </div> {%/if%} <div class="op_definitive_answer_ser_area {%if $tplData.result[0].appendpic%}c-span18{%else%}c-span24{%/if%} c-span-last"> <p class="op_definitive_answer_ser_prop"> <a href='{%build_search_url params="wd={%$tplData.QueryAnalyse[0].entity|escape:'url'%}{%$SearchURL_EndParams%}"%}' target="_blank">{%$tplData.QueryAnalyse[0].entity|escape:'html'%}</a>{%$tplData.result[0].attrdisp|escape:'html'%}： </p> <p class="op_definitive_answer_ser_answer c-gap-top-small"> {%if $tplData.result[0].jumplink%} <a href='{%$tplData.result[0].jumplink%}' target="_blank"> {%elseif $tplData.result[0].search_type && $tplData.result[0].search_type == 'value'%} <a href='{%build_search_url params="wd={%$tplData.result[0].attrquery|escape:'url'%}{%$SearchURL_EndParams%}"%}' target="_blank"> {%/if%} {%$tplData.result[0].attrquery|limitlen:200|escape:'html'%} {%if $tplData.result[0].jumplink || ($tplData.result[0].search_type && $tplData.result[0].search_type == 'value')%} </a> {%/if%} </p> {%if $tplData.result[0].appendinfo%} <p class="op_definitive_answer_ser_abstract c-gap-top-small"> {%$tplData.result[0].appendinfo|limitlen:160|escape:'html'%}{%if $tplData.result[0].appendinfolink%}<span class="op_definitive_answer_ser_abstract_more c-gap-left-small"><a href="{%$tplData.result[0].appendinfolink|escape:'html'%}" target="_blank">详情&gt;&gt;</a></span>{%/if%} </p> {%/if%} </div> </div>  <div class="op_definitive_answer_ser_feedback"> {%if $tplData.source[0].sourcetitle%}来自<a class="op_definitive_answer_ser_feedback_source" href="{%$tplData.source[0].sourceurl%}" target="_blank">{%$tplData.source[0].sourcetitle|escape:'html'%}</a><span class="op_definitive_answer_ser_feedback_sep">|</span>{%/if%}<a class="op_definitive_answer_ser_feedback_a" href="javascript:;" data-click="{info:'报错'}">报错</a> </div> {%if $tplData.serialization%}  <div class="op_definitive_answer_ser_serialization c-gap-top"> <table><tr> {%if $tplData.serialization[0].title && !$tplData.serialization[0].url%} <th class="op_definitive_answer_ser_serialization_title">{%$tplData.serialization[0].title|escape:'html'%}：</th> {%/if%} <td class="op_definitive_answer_ser_serialization_links"> {%foreach array_slice($tplData.serialization, 0) as $item%} {%if $item.url%} <a href="{%$item.url%}" target="_blank">{%$item.title|escape:'html'%}</a>{%if $item.attr == "1"%}<i class="c-text c-text-danger">热</i>{%/if%} {%if $item@index != $item@last%}<span class="c-gap-left-small c-gap-right-small">|</span>{%/if%} {%/if%} {%/foreach%} </td> </tr></table> </div> {%/if%}</div><script>A.setup(function(){var Ala = this;Ala.find('.op_definitive_answer_ser_feedback_a').on('click', function(){$(this).replaceWith('<span>感谢反馈</span>');});});</script>{%/block%}