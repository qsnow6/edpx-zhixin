{%extends 'c_base.tpl'%} {%block name='title'%}{%/block%}{%block name='foot'%}{%/block%}{%block name='data_modifier'%} {%*解决aladdin资源经典坑*%} {%if !$tplData.result[0]%} {%$tplData.result = array($tplData.result)%} {%/if%} {%*跳转链接方法 优先级jumpquery>jumplink>ename*%} {%$EndParams = "&rsv_cq={%$extData.OriginQuery%}&rsv_dl=0_left_definitiveanswerpo_{%$extData.resourceid%}"%} {%function op_definitive_answer_po_get_href jumpquery='' jumplink='' ename=''%}{%strip%} {%if $jumpquery%} {%$escaped_jumpquery = $jumpquery%} {%build_search_url params="wd={%$escaped_jumpquery%}"%}{%$EndParams|escape:'html'%} {%elseif $jumplink%} {%$jumplink|escape:'html'%} {%else%} {%$escaped_ename = $ename%} {%build_search_url params="wd={%$escaped_ename%}"%}{%$EndParams|escape:'html'%} {%/if%} {%/strip%}{%/function%} {%if $tplData.result[0].item%} {%$EntityNumber = "M"%} {%$TextLine = "M1_3"%} {%$Additional = "0"%} {%$ViewPic = $tplData.result[0].item[0].selpic%} {%if $ViewPic == 'normalpic'%} {%$TemplateView = "M2"%} {%elseif $ViewPic == 'bigpic'%} {%$TemplateView = "M3"%} {%elseif $ViewPic == 'broadpic'%} {%$TemplateView = "M4"%} {%else%} {%$TemplateView = "M1"%} {%/if%} {%if $TemplateView != "M1"%} {%foreach array_slice($tplData.result[0].item, 0, 12) as $item%} {%if $item@index < 8 && !$item[$ViewPic]%} {%$TemplateView = "M1"%} {%elseif $item@index >= 8 && $ViewPic == 'normalpic' && !$item.normalpic%} {%$TemplateView = "M1"%} {%/if%} {%if $item.additional != ""%} {%$Additional = "1"%} {%/if%} {%/foreach%} {%/if%} {%if $TemplateView == "M1"%} {%foreach array_slice($tplData.result[0].item, 0, 15) as $item%} {%if $TextLine == "M1_3" && $item.attrquery|string_display_len > 14 && $item.attrquery|string_display_len <= 26%} {%$TextLine = "M1_2"%} {%elseif $item.attrquery|string_display_len > 26 && $item@index < 10%} {%$TextLine = "M1_1"%} {%/if%} {%if $item.additional != ""%} {%$Additional = "1"%} {%/if%} {%/foreach%} {%/if%} {%if $TemplateView == "M1" && $Additional == "0"%} {%$TextLength = 0%} {%$TextEndIndex = 76%} {%foreach array_slice($tplData.result[0].item, 0, 77) as $item%} {%$TextLength = $TextLength + $item.attrquery|string_display_len + 2%} {%if $TextEndIndex == 76 && $TextLength >= 310%} {%$TextEndIndex = $item@index%} {%break%} {%elseif $item@last%} {%$TextEndIndex = $item@index + 1%} {%/if%} {%/foreach%} {%if $TextLength <= 30%} {%$TextLevel = "M1_L1"%} {%elseif $TextLength <= 72%} {%$TextLevel = "M1_L2"%} {%else%} {%$TextLevel = "M1_L3"%} {%/if%} {%/if%} {%else%} {%$EntityNumber = "S"%} {%/if%} {%*$EntityNumber    实体类型 S-单实体 M-多实体*%} {%*$TemplateView    模版展现形式 M1-多实体纯文本 M2-多实体方图 M3-多实体长图 M4-多实体宽图*%} {%*$TextLine        多文本显示列数 M1_1-一列 M1_2-两列 M1_3-三列*%} {%*$Additional      是否存在属性 1-存在 0-不存在*%} {%*$TextLevel       多文本顿号展现显示级别 M1_L1-大字 M1_L2-中字 M1_L3-小字*%} {%*$TextLength      多文本顿号展现总长度*%} {%*$TextEndIndex    多文本顿号展现截止index*%}{%/block%}{%block name='content'%}<style>.op_definitive_answer_po_main a{text-decoration:none}.op_definitive_answer_po_main a:hover{text-decoration:underline}.op_definitive_answer_po_tools{text-align:right;color:#999;font-size:.92em;margin:-15px 0 -3px 0}.op_definitive_answer_po_tools a{color:#999;font-size:.92em;cursor:pointer;text-decoration:none}.op_definitive_answer_po_tools a:hover{color:#999;text-decoration:underline}.op_definitive_answer_po_tools .op_definitive_answer_po_source{margin-right:8px}{%if $EntityNumber == 'S'%}.op_definitive_answer_po_s_item{overflow:auto}.op_definitive_answer_po_s_area{padding-bottom:20px}.op_definitive_answer_po_s_prop{font-size:1.077em;font-weight:bold;color:#999}.op_definitive_answer_po_s_prop a,.op_definitive_answer_po_s_prop a:hover{color:#999}.op_definitive_answer_po_s_answer{font-family:"Microsoft YaHei",SimHei;{%if $tplData.result[0].attrquery|string_display_len < 30%}font-size:1.85em;{%elseif $tplData.result[0].attrquery|string_display_len < 72%}font-size:1.54em;{%elseif $tplData.result[0].attrquery|string_display_len < 138%}font-size:1.23em;{%else%}font-size:1.077em;{%/if%}}.op_definitive_answer_po_s_answer_more{white-space:nowrap}.op_definitive_answer_po_s_abstract_more{font-family:SimSun;white-space:nowrap;color:#00c}.op_definitive_answer_po_s_abstract_more a{color:#00c}{%elseif $EntityNumber == 'M'%}.op_definitive_answer_po_title{font-size:1.077em;font-weight:bold;color:#333}.op_definitive_answer_po_title span{font-weight:normal;color:#999}.op_definitive_answer_po_tag{border-bottom:1px solid #f0f0f0;font-size:.92em;padding-bottom:10px;margin-top:-5px}.op_definitive_answer_po_tag p{height:28px;line-height:28px;overflow:hidden}.op_definitive_answer_po_tag_item{color:#00c;padding:1px 4px 2px 4px;*padding:3px 4px 1px 4px;margin:0 4px;cursor:pointer;white-space:nowrap}.op_definitive_answer_po_ta{%*i*%}g_item:hover{text-decoration:underline}.op_definitive_answer_po_tag_selected{color:#fff;background:#388bff}.op_definitive_answer_po_tag_selected:hover{text-decoration:none}.op_definitive_answer_po_tag_type{color:#999}.op_definitive_answer_po_body{padding-bottom:15px;*zoom:1}.op_definitive_answer_po_itemsArea{*zoom:normal}.op_definitive_answer_po_nodata{text-align:center}.op_definitive_answer_po_item p{white-space:nowrap}{%if $TemplateView == 'M1'%}.op_definitive_answer_po_head{margin-bottom:5px}.op_definitive_answer_po_item{float:left}.op_definitive_answer_po_item p{font-size:1.23em;text-align:left;font-family:"Microsoft YaHei",SimHei}.op_definitive_answer_po_item .op_definitive_answer_po_item_additional{color:#666;font-size:{%if $extData.feData.platform === 'pc'%}13{%else%}15{%/if%}px;margin-left:8px}{%if $Additional == '0' && $TextLevel%}.op_definitive_answer_po_item p{{%if $TextLevel == "M1_L1"%}font-size:1.85em;{%elseif $TextLevel == "M1_L2"%}font-size:1.54em;{%elseif $TextLevel == "M1_L3"%}font-size:1.23em;{%/if%}}.op_definitive_answer_po_item p a{color:#000}{%elseif $Additional == '1' && $TextLine%}.op_definitive_answer_po_item{overflow:hidden}{%/if%}{%elseif $TemplateView == 'M2'%}.op_definitive_answer_po_item_img{width:78px;height:78px}.op_definitive_answer_po_item .c-img4{height:78px}.op_definitive_answer_po_item p{text-align:center;color:#666}{%elseif $TemplateView == 'M3'%}.op_definitive_answer_po_item_img{width:121px;height:161px}.op_definitive_answer_po_item .c-img6{height:161px}.op_definitive_answer_po_item p{text-align:center;color:#666}{%elseif $TemplateView == 'M4'%}.op_definitive_answer_po_item_img{width:121px;height:91px}.op_definitive_answer_po_item .c-img6{height:91px}.op_definitive_answer_po_item p{text-align:center;color:#666}{%/if%}.op_definitive_answer_po_page{font-size:.92em;clear:both}.op_definitive_answer_po_page p{color:#00c;text-align:center;line-height:19px}.op_definitive_answer_po_page_number,.op_definitive_answer_po_page_pre,.op_definitive_answer_po_page_next{border:1px solid #e7ecf0;text-align:center;font-weight:normal;cursor:pointer;margin:0 2px;padding:0 5px;display:inline-block}.op_definitive_answer_po_page_number_now{font-weight:bold;color:#000;margin:0 8px;display:inline-block;*border:1px solid #fff}.op_defi{%*i*%}nitive_answer_po_page_more{color:#000}.op_definitive_answer_po_page_number:hover,.op_definitive_answer_po_page_pre:hover,.op_definitive_answer_po_page_next:hover{border:1px solid #5a9ff1}.op_definitive_answer_po_feedback{color:#00c;font-weight:bold;text-align:left;cursor:pointer;display:none}{%/if%}</style><div class="c-border"> <div class="op_definitive_answer_po_main"> {%if $EntityNumber == 'S'%} <div class="op_definitive_answer_po_s_item c-row"> {%if $tplData.result[0].selpic && $tplData.result[0][$tplData.result[0].selpic] && (!$tplData.search_property || $tplData.QueryAnalyse.ENTITY)%} <div class="op_definitive_answer_po_s_img c-span6"> {%if $tplData.search_property%} <a href='{%op_definitive_answer_po_get_href ename=$tplData.QueryAnalyse.ENTITY%}' target="_blank" title="{%$tplData.QueryAnalyse.ENTITY|escape:'html'%}"> {%else%} <a href='{%op_definitive_answer_po_get_href ename=$tplData.result[0].attrquery%}' target="_blank" title="{%$tplData.result[0].attrquery|escape:'html'%}"> {%/if%} <img class="c-img c-img6" src="{%$tplData.result[0][$tplData.result[0].selpic]|escape:'html'%}"/> </a> </div> {%/if%} <div class="op_definitive_answer_po_s_area {%if $tplData.result[0].selpic && $tplData.result[0][$tplData.result[0].selpic]%}c-span18{%else%}c-span24{%/if%} c-span-last"> <p class="op_definitive_answer_po_s_prop"> {%if $tplData.QueryAnalyse.ENTITY && $tplData.result[0].attrdisp%} <a href='{%op_definitive_answer_po_get_href ename=$tplData.QueryAnalyse.ENTITY%}' target="_blank">{%$tplData.QueryAnalyse.ENTITY|escape:'html'%}</a>{%if $tplData.result[0].appendinfo%}<span>({%$tplData.result[0].appendinfo|escape:'html'%})</span>{%/if%}{%$tplData.result[0].attrdisp|escape:'html'%}： {%else%} {%$extData.OriginQuery%}： {%/if%} </p> <p class="op_definitive_answer_po_s_answer c-gap-top-small"> {%if !$tplData.search_property%} <a href='{%op_definitive_answer_po_get_href ename=$tplData.result[0].attrquery%}' target="_blank">{%$tplData.result[0].attrquery|limitlen:200|escape:'html'%}</a> {%else%} {%$tplData.result[0].attrquery|limitlen:200|escape:'html'%} {%if $tplData.result[0].attrquery|string_display_len > 200 && $tplData.result[0].sourcelink%}<a class="op_definitive_answer_po_s_answer_more" href="{%$tplData.result[0].sourcelink|escape:'html'%}" target="_blank">详情&gt;&gt;</a>{%/if%} {%/if%} </p> {%if $tplData.result[0].summary && !$tplData.search_property && $tplData.result[0].sourcelink && in_array('人物', $tplData.cate_di)%} {%$summaryLimitlen = ($tplData.result[0].selpic == 'bigpic') ? 190 : 160 scope='global'%} <p class="op_definitive_answer_po_s_abstract c-gap-top-small"> <span class="c-gap-right-small">{%$tplData.result[0].summary|limitlen:$summaryLimitlen|escape:'html'%}</span><span class="op_definitive_answer_po_s_abstract_more"><a href="{%$tplData.result[0].sourcelink|escape:'html'%}" target="_blank">详情&gt;&gt;</a></span> </p> {%/if%} </div> </div> {%elseif $EntityNumber == 'M'%} <div class="op_definitive_answer_po_head c-gap-bottom">  <div class="op_definitive_answer_po_title c-gap-bottom">{%if $tplData.result[0].entity && $tplData.result[0].attrdisp%}{%$tplData.result[0].entity%}{%$tplData.result[0].attrdisp%}{%else%}{%$extData.OriginQuery%}{%/if%}：</div> {%if $tplData.tag && count($tplData.tag) > 1%} <div class="op_definitive_answer_po_tag" data-click="{'fm':'beha'}"> <p> <span class="op_definitive_answer_po_tag_type c-gap-right">{%$tplData.tag[0].type|escape:'html'%}：</span><span class="op_definitive_answer_po_tag_item op_definitive_answer_po_tag_selected OP_LOG_BTN" key="all" num="{%$tplData.listNum|escape:'html'%}">全部</span> {%foreach array_slice($tplData.tag, 0, 15) as $tag%} <span class="op_definitive_answer_po_tag_item OP_LOG_BTN" key="{%$tag.key|escape:'html'%}" num="{%$tag.number|escape:'html'%}">{%$tag.name|limitlen:20|escape:'html'%}</span> {%/foreach%} </p> </div> {%/if%} </div> <div class="op_definitive_answer_po_body">  <div class="op_definitive_answer_po_itemsArea c-row"> {%if $TemplateView == 'M1' && $Additional == '0'%}  {%foreach array_slice($tplData.result[0].item, 0, $TextEndIndex) as $item%} <div class="op_definitive_answer_po_item c-gap-bottom-small"> <p>{%if !$item.jumplink || $item.jumplink != "null"%}<a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%/if%}{%$item.attrquery|limitlen:62|escape:'html'%}{%if !$item.jumplink || $item.jumplink != "null"%}</a>{%/if%}{%if !$item@last%}、{%/if%}</p> </div> {%/foreach%} {%elseif $TemplateView == 'M1' && $TextLine == 'M1_1' && $Additional == '1'%}  {%foreach array_slice($tplData.result[0].item, 0, 5) as $item%} {%if !$item.additional%} {%$attrqueryLimitlen = 50%} {%$additionalLimitlen = 0%} {%else%} {%$attrqueryLimitlen = ($item.attrquery|string_display_len > 50) ? 50 : $item.attrquery|string_display_len%} {%$additionalLimitlen = 63 - $attrqueryLimitlen%} {%/if%} <div class="op_definitive_answer_po_item c-gap-bottom c-span24 c-span-last"> <p> {%if !$item.jumplink || $item.jumplink != "null"%}<a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%/if%}{%$item.attrquery|limitlen:$attrqueryLimitlen|escape:'html'%}{%if !$item.jumplink || $item.jumplink != "null"%}</a>{%/if%}<span class="op_definitive_answer_po_item_additional" title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:$additionalLimitlen|escape:'html'%}{%/if%}</span> </p> </div> {%/foreach%} {%elseif $TemplateView == 'M1' && $TextLine == 'M1_2' && $Additional == '1'%}  {%foreach array_slice($tplData.result[0].item, 0, 10) as $item%} {%if !$item.additional%} {%$attrqueryLimitlen = 26%} {%$additionalLimitlen = 0%} {%else%} {%$attrqueryLimitlen = ($item.attrquery|string_display_len > 26) ? 26 : $item.attrquery|string_display_len%} {%$additionalLimitlen = 32 - $attrqueryLimitlen%} {%/if%} <div class="op_definitive_answer_po_item c-gap-bottom c-span12 {%if $item@iteration is div by 2%}c-span-last{%/if%}"> <p> {%if !$item.jumplink || $item.jumplink != "null"%}<a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%/if%}{%$item.attrquery|limitlen:$attrqueryLimitlen|escape:'html'%}{%if !$item.jumplink || $item.jumplink != "null"%}</a>{%/if%}<span class="op_definitive_answer_po_item_additional" title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:$additionalLimitlen|escape:'html'%}{%/if%}</span> </p> </div> {%/foreach%} {%elseif $TemplateView == 'M1' && $TextLine == 'M1_3' && $Additional == '1'%}  {%foreach array_slice($tplData.result[0].item, 0, 15) as $item%} {%if !$item.additional%} {%$attrqueryLimitlen = 14%} {%$additionalLimitlen = 0%} {%else%} {%$attrqueryLimitlen = ($item.attrquery|string_display_len > 14) ? 14 : $item.attrquery|string_display_len%} {%$additionalLimitlen = 21 - $attrqueryLimitlen%} {%/if%} <div class="op_definitive_answer_po_item c-gap-bottom c-span8 {%if $item@iteration is div by 3%}c-span-last{%/if%}"> <p> {%if !$item.jumplink || $item.jumplink != "null"%}<a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%/if%}{%$item.attrquery|limitlen:$attrqueryLimitlen|escape:'html'%}{%if !$item.jumplink || $item.jumplink != "null"%}</a>{%/if%}<span class="op_definitive_answer_po_item_additional" title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:$additionalLimitlen|escape:'html'%}{%/if%}</span> </p> </div> {%/foreach%} {%elseif $TemplateView == 'M2'%}  {%foreach array_slice($tplData.result[0].item, 0, 12) as $item%} <div class="op_definitive_answer_po_item c-gap-bottom c-span4 {%if $item@iteration is div by 6%}c-span-last{%/if%}"> <div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div> <p class="op_definitive_answer_po_item_img"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank"><img class="c-img c-img4" src="{%if $item.normalpic%}{%$item.normalpic%}{%else%}http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_normal.jpg{%/if%}"/></a></p> <p class="c-gap-top-small"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%$item.attrquery|limitlen:11|escape:'html'%}</a></p> {%if $Additional == '1'%} <p title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:11|escape:'html'%}{%else%}&nbsp;{%/if%}</p> {%/if%} </div> {%/foreach%} {%elseif $TemplateView == 'M3'%}  {%foreach array_slice($tplData.result[0].item, 0, 8) as $item%} <div class="op_definitive_answer_po_item c-gap-bottom c-span6 {%if $item@iteration is div by 4%}c-span-last{%/if%}"> <div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div> <p class="op_definitive_answer_po_item_img"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank"><img class="c-img c-img6" src="{%if $item.bigpic%}{%$item.bigpic%}{%else%}http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_big.jpg{%/if%}"/></a></p> <p class="c-gap-top-small"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%$item.attrquery|limitlen:18|escape:'html'%}</a></p> {%if $Additional == '1'%} <p title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:18|escape:'html'%}{%else%}&nbsp;{%/if%}</p> {%/if%} </div> {%/foreach%} {%elseif $TemplateView == 'M4'%}  {%foreach array_slice($tplData.result[0].item, 0, 8) as $item%} <div class="op_definitive_answer_po_item c-gap-bottom c-span6 {%if $item@iteration is div by 4%}c-span-last{%/if%}"> <div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div> <p class="op_definitive_answer_po_item_img"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank"><img class="c-img c-img6" src="{%if $item.broadpic%}{%$item.broadpic%}{%else%}http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_normal.jpg{%/if%}"/></a></p> <p class="c-gap-top-small"><a href='{%op_definitive_answer_po_get_href jumplink=$item.jumplink ename=$item.attrquery%}' title="{%$item.attrquery|escape:'html'%}" target="_blank">{%$item.attrquery|limitlen:18|escape:'html'%}</a></p> {%if $Additional == '1'%} <p title="{%if $item.additional%}{%$item.additional|escape:'html'%}{%/if%}">{%if $item.additional%}{%$item.additional|limitlen:18|escape:'html'%}{%else%}&nbsp;{%/if%}</p> {%/if%} </div> {%/foreach%} {%/if%} </div>  <div class="op_definitive_answer_po_page" style="display:none"><p></p></div>  </div> {%/if%} </div>   <div class="op_definitive_answer_po_tools"> {%if $tplData.result[0].sourcename && $tplData.result[0].sourcelink%}<span class="op_definitive_answer_po_source">来自<a href="{%$tplData.result[0].sourcelink|escape:'html'%}" target="_blank">{%$tplData.result[0].sourcename|escape:'html'%}</a></span><span style="color:#ccc">|</span>{%/if%}<span class="op_definitive_answer_po_tools_fb_area" style="margin-left:8px;"><a class="op_definitive_answer_po_tools_fb" href="javascript:;" data-click="{info:'报错'}">报错</a></span> </div> </div><script type="text/javascript" >
    A.setup({
        OriginQuery: "{%str_replace($extData.resourceid|cat:'_', '', $extData.fetchkey)|escape:'html'|escape:'javascript'%}",
        EndParams: "{%$EndParams|escape:'javascript'%}",
        EntityNumber: "{%$EntityNumber|escape:'javascript'%}",  //实体类型S/M
        TemplateView: "{%$TemplateView|escape:'javascript'%}",  //模版展现类型M1/M2/M3
        TextLine: "{%$TextLine|escape:'javascript'%}",          //M1展现时，文字展现样式M1_1/M1_2/M1_3
        Additional: "{%$Additional|escape:'javascript'%}",      //是否展示属性值 0否/1是
        TextEndIndex: "{%$TextEndIndex|escape:'javascript'%}",  //多文本顿号展现截止index
        ItemNumber: "{%$tplData.listNum|escape:'javascript'%}"  //item总数
    });
</script><script>A.setup(function(){var Ala = this,ajaxFinished = false;var $dom_pageArea = Ala.find('.op_definitive_answer_po_page'), $dom_tags = Ala.find('.op_definitive_answer_po_tag_item'), originQuery = Ala.data.OriginQuery,endParams = Ala.data.EndParams,entityNumber = Ala.data.EntityNumber, templateView = Ala.data.TemplateView, textLine = Ala.data.TextLine, additional = Ala.data.Additional, srcid = Ala.srcid; var tagKey = '', nowPage = 1, pn = 0, rownum, nowNum, itemNumber = Number(Ala.dat{%*i*%}a.ItemNumber); if (templateView == 'M1' && additional == '0') {nowNum = Number(Ala.data.TextEndIndex); } else if (templateView == 'M1' && textLine == 'M1_1' && additional == '1') {nowNum = 5;} else if (templateView == 'M1' && textLine == 'M1_2' && additional == '1'){nowNum = 10;} else if (templateView == 'M1' && textLine == 'M1_3' && additional == '1'){nowNum = 15;} else if (templateView == 'M2') {nowNum = 12;} else if(templateView == 'M3' || templateView == 'M4'){nowNum = 8;};rownum = Number(no{%*i*%}wNum);getTagStatus(); initPageComp(); initFeedback(); function getTagStatus(){if ($dom_tags.length) { tagKey = $dom_tags.filter('.op_definitive_answer_po_tag_selected').attr('key');if (tagKey == 'all') {tagKey = ''};};}$dom_tags.length && $dom_tags.on('click', function(){if (!$(this).hasClass('op_definitive_answer_po_tag_selected')) {$dom_tags.filter('.op_definitive_answer_po_tag_selected').removeClass('op_definitive_answer_po_tag_selected');$(this).addClass('op_definitive_answer_po_tag_selected{%*i*%}');tagKey = ($(this).attr('key') == 'all') ? '' : $(this).attr('key');itemNumber = $(this).attr('num');nowPage = 1;pn = 0;rownum = nowNum;asyncGetData(pn,rownum,tagKey);};});function asyncGetData(apn,arn,tag){url = 'http://opendata.baidu.com/api.php?resource_id=' + srcid + '&format=json&ie=utf-8&oe=utf-8&query=' + encodeURIComponent(originQuery) + '&apn=' + apn + '&arn=' + arn + '&co=result.item[key=' + tagKey + ']';$.ajax({dataType : 'jsonp',scriptCharset : 'utf-8',jsonp : 'cb',timeout : 6000,u{%*i*%}rl : url,success : initData});}function initData(data){ if (ajaxFinished) return;if (data.status == '0' && data.data.length > 0 && data.data[0].result && data.data[0].result.item.length > 0) { if (!data.data[0].result[0]) { data.data[0].result = [data.data[0].result];};var dispData = data.data[0].result[0].item,dispHtml = [];if (templateView == "M1" && additional == "0") { for (var i = 0; i < dispData.length; i++) {dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-botto{%*i*%}m-small">','<p>',(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '<a href="' + getJumpLink(dispData[i]) + '" title="' + dispData[i].attrquery + '" target="_blank">' : '',$.subByte(dispData[i].attrquery, 62),(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '</a>' : '',(i == dispData.length - 1) ? '' : '、','</p>','</div>']);};} else if (templateView == "M1" && textLine == "M1_1" && additional == "1") { for (var i = 0; i < dispData.length; i++) {if (!dispData[i].additional) {{%*i*%}var attrqueryLimitlen = 50,additionalLimitlen = 0;} else {var attrqueryLimitlen = Math.min($.getByteLength(dispData[i].attrquery), 50),additionalLimitlen = 63 - attrqueryLimitlen;};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span24 c-span-last">','<p>',(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '<a href="' + getJumpLink(dispData[i]) + '" title="' + dispData[i].attrquery + '" target="_blank">' : '',$.subByte(dispData[i].attrquery, attrquer{%*i*%}yLimitlen),(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '</a>' : '','<span class="op_definitive_answer_po_item_additional" title="', dispData[i].additional ? dispData[i].additional : '', '">', dispData[i].additional ? $.subByte(dispData[i].additional, additionalLimitlen) : '&nbsp;', '</span>','</p>','</div>']);};} else if (templateView == "M1" && textLine == "M1_2" && additional == "1"){ for (var i = 0; i < dispData.length; i++) {if (!dispData[i].additional) {var attrqueryLimitlen{%*i*%} = 26,additionalLimitlen = 0;} else {var attrqueryLimitlen = Math.min($.getByteLength(dispData[i].attrquery), 26),additionalLimitlen = 32 - attrqueryLimitlen;};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span12 ', (i % 2 == 1) ? 'c-span-last' : '', '">','<p>',(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '<a href="' + getJumpLink(dispData[i]) + '" title="' + dispData[i].attrquery + '" target="_blank">' : '',$.subByte(dispData[i].attrquery, a{%*i*%}ttrqueryLimitlen),(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '</a>' : '','<span class="op_definitive_answer_po_item_additional" title="', dispData[i].additional ? dispData[i].additional : '', '">', dispData[i].additional ? $.subByte(dispData[i].additional, additionalLimitlen) : '&nbsp;', '</span>','</p>','</div>']);};} else if (templateView == "M1" && textLine == "M1_3" && additional == "1"){ for (var i = 0; i < dispData.length; i++) {if (!dispData[i].additional) {var attrqueryL{%*i*%}imitlen = 14,additionalLimitlen = 0;} else {var attrqueryLimitlen = Math.min($.getByteLength(dispData[i].attrquery), 14),additionalLimitlen = 21 - attrqueryLimitlen;};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span8 ', (i % 3 == 2) ? 'c-span-last' : '', '">','<p>',(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '<a href="' + getJumpLink(dispData[i]) + '" title="' + dispData[i].attrquery + '" target="_blank">' : '',$.subByte(dispData[i].attrqu{%*i*%}ery, attrqueryLimitlen),(!dispData[i].jumplink || dispData[i].jumplink != 'null') ? '</a>' : '','<span class="op_definitive_answer_po_item_additional" title="', dispData[i].additional ? dispData[i].additional : '', '">', dispData[i].additional ? $.subByte(dispData[i].additional, additionalLimitlen) : '&nbsp;', '</span>','</p>','</div>']);};} else if (templateView == "M2") { for (var i = 0; i < dispData.length; i++) {if (additional == 1) {var additionalM2HTML;if (dispData[i].additional) {addition{%*i*%}alM2HTML = "<p title='" + dispData[i].additional + "'>" + $.subByte(dispData[i].additional, 11) + "</p>";} else {additionalM2HTML = "<p>&nbsp;</p>";};};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span4 ', (i % 6 == 5) ? 'c-span-last' : '', '">','<div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div>','<p class="op_definitive_answer_po_item_img"><a href="', getJumpLink(dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank"><img  {%*i*%}class="c-img c-img4" src="', dispData[i].normalpic ? dispData[i].normalpic : 'http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_normal.jpg', '"/></a></p>','<p class="c-gap-top-small"><a href="', getJumpLink(dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank">', $.subByte(dispData[i].attrquery, 11), '</a></p>',additionalM2HTML ? additionalM2HTML : '','</div>']);};} else if(templateView == "M3"){ for (var i = 0; i < dispData.length; i++) {if (a{%*i*%}dditional == 1) {var additionalM3HTML;if (dispData[i].additional) {additionalM3HTML = "<p title='" + dispData[i].additional + "'>" + $.subByte(dispData[i].additional, 18) + "</p>";} else {additionalM3HTML = "<p>&nbsp;</p>";};};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span6 ', (i % 4 == 3) ? 'c-span-last' : '', '">','<div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div>','<p class="op_definitive_answer_po_item_img"><a href="', getJumpLink({%*i*%}dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank"><img class="c-img c-img6" src="', dispData[i].bigpic ? dispData[i].bigpic : 'http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_big.jpg', '"/></a></p>','<p class="c-gap-top-small"><a href="', getJumpLink(dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank">', $.subByte(dispData[i].attrquery, 18), '</a></p>',additionalM3HTML ? additionalM3HTML : '','</div>']);};} else if(templa{%*i*%}teView == "M4"){ for (var i = 0; i < dispData.length; i++) {if (additional == 1) {var additionalM3HTML;if (dispData[i].additional) {additionalM3HTML = "<p title='" + dispData[i].additional + "'>" + $.subByte(dispData[i].additional, 18) + "</p>";} else {additionalM3HTML = "<p>&nbsp;</p>";};};dispHtml = dispHtml.concat(['<div class="op_definitive_answer_po_item c-gap-bottom c-span6 ', (i % 4 == 3) ? 'c-span-last' : '', '">','<div class="op_definitive_answer_po_feedback OP_LOG_BTN">有错误?</div>','<p {%*i*%}class="op_definitive_answer_po_item_img"><a href="', getJumpLink(dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank"><img class="c-img c-img6" src="', dispData[i].broadpic ? dispData[i].broadpic : 'http://www.baidu.com/aladdin/img/definitive_answer_mulit/definitive_answer_mulit_nopic_normal.jpg', '"/></a></p>','<p class="c-gap-top-small"><a href="', getJumpLink(dispData[i]), '" title="', dispData[i].attrquery, '" target="_blank">', $.subByte(dispData[i].attrquery, 18), '</a></p>{%*i*%}',additionalM3HTML ? additionalM3HTML : '','</div>']);};};var showHTML = dispHtml.join('');itemNumber = data.data[0].listNum || itemNumber; showData(showHTML);} else {var $dom_itemsArea = Ala.find('.op_definitive_answer_po_itemsArea'),itemsAreaHeight = $dom_itemsArea.innerHeight();$dom_itemsArea.html('<div class="op_definitive_answer_po_nodata"><p><i class="c-icon c-icon-warning c-gap-icon-right-small"></i>抱歉，暂无该类型的结果，请重新筛选！</p></div>');$('.op_definitive_answer_po_nodata', $dom_itemsArea).height{%*i*%}(itemsAreaHeight).find('p').css({'padding-top':parseInt(itemsAreaHeight / 2.3)}); $dom_pageArea.hide(); }function getJumpLink(dispData){if (dispData.jumpquery) {var jumplink = 'http://www.baidu.com/s?wd=' + encodeURIComponent(dispData.jumpquery) + endParams;} else if (dispData.jumplink) {var jumplink = dispData.jumplink;} else {var jumplink = 'http://www.baidu.com/s?wd=' + encodeURIComponent(dispData.attrquery) + endParams;}return jumplink;}}function showData(data){ var $dom_dataArea = Ala.find({%*i*%}'.op_definitive_answer_po_itemsArea');$dom_dataArea.html(data);initPageComp(); initFeedback(); }function initPageComp(){ if ($dom_pageArea.length) {if (itemNumber > nowNum) {$dom_pageArea.css({display: 'block'}); endPage = Math.ceil(itemNumber / nowNum);initPageCompHTML(nowPage, endPage); var $dom_pageNum = $('.op_definitive_answer_po_page_number', $dom_pageArea),$dom_pagePre = $('.op_definitive_answer_po_page_pre', $dom_pageArea),$dom_pageNext = $('.op_definitive_answer_po_page_next', $dom_page{%*i*%}Area);$dom_pageNum.on('click', function(){nowPage = Number($(this).html());pn = (nowPage - 1) * nowNum;asyncGetData(pn,rownum,tagKey);});$dom_pagePre.on('click', function(){nowPage -= 1;pn = (nowPage - 1) * nowNum;asyncGetData(pn,rownum,tagKey);});$dom_pageNext.on('click', function(){nowPage += 1;pn = (nowPage - 1) * nowNum;asyncGetData(pn,rownum,tagKey);});} else {$dom_pageArea.css({display: 'none'}); };};}function initPageCompHTML(nowPage,endPage){ nowPage = Number(nowPage);endPage = Number(en{%*i*%}dPage);var numberPageArr = [];if (2 <= endPage && endPage <= 7) {for (var i = 1; i <= endPage; i++) {numberPageArr.push(i);};} else if (endPage >= 8){if (nowPage <= 4) {numberPageArr = [1,2,3,4,5,'M',endPage];} else if (nowPage >= endPage - 3){numberPageArr = [1,'M',endPage-4,endPage-3,endPage-2,endPage-1,endPage];} else {numberPageArr = [1,'M',nowPage-1,nowPage,nowPage+1,'M',endPage];};};var pageCompHTML = [];if (nowPage != 1) {pageCompHTML = pageCompHTML.concat(['<span class="op_definitive_ans{%*i*%}wer_po_page_pre OP_LOG_BTN">上一页</span>']);};for (var i = 0; i < numberPageArr.length; i++) {if (numberPageArr[i] == "M") {pageCompHTML = pageCompHTML.concat(['<span class="op_definitive_answer_po_page_more">…</span>']);} else if (numberPageArr[i] == nowPage){pageCompHTML = pageCompHTML.concat(['<span class="op_definitive_answer_po_page_number_now">', numberPageArr[i], '</span>']);} else {pageCompHTML = pageCompHTML.concat(['<span class="op_definitive_answer_po_page_number OP_LOG_BTN">', numberPa{%*i*%}geArr[i], '</span>']);};};if (nowPage != endPage) {pageCompHTML = pageCompHTML.concat(['<span class="op_definitive_answer_po_page_next OP_LOG_BTN">下一页</span>']);};$('p', $dom_pageArea).html(pageCompHTML.join(''));}function initFeedback(){ Ala.find('.op_definitive_answer_po_tools_fb_area').html('<a class="op_definitive_answer_po_tools_fb OP_LOG_BTN" href="javascript:;" data-click="{info:\'报错\'}">报错</a>');Ala.find('.op_definitive_answer_po_tools_fb').on('click', function(){var _this = this;if (ent{%*i*%}ityNumber == 'S' || templateView == 'M1') { $(_this).replaceWith('<span>感谢反馈</span>');} else { $dom_fbBtn = Ala.find('.op_definitive_answer_po_feedback');if ($(_this).html() != '取消报错') {$dom_fbBtn.show();$(_this).html('取消报错');$dom_fbBtn.on('mouseover', function(){if ($(this).html() != '已反馈') {$(this).parent('div').css({'background-color':'#fafafa'});};}).on('mouseout', function(){if ($(this).html() != '已反馈') {$(this).parent('div').css({'background-color':'#fff'});};}).on('click', function(){if ({%*i*%}$(this).html() != '已反馈') {$(this).css({color:'#ccc', cursor:'default'}).html('已反馈').parent('div').css({'background-color':'#fff'});$dom_fbBtn.stop().delay(500).hide(200);if ($dom_fbBtn.not(function(){return $(this).html() == '已反馈'}).length != 0) {$(_this).html('感谢，继续报错');} else {$(_this).replaceWith('<span>感谢反馈</span>');};};});} else {$dom_fbBtn.hide(120);$(_this).html('报错');};}});}this.dispose = function(){if(!ajaxFinished){ajaxFinished = true;}};});</script>{%/block%}