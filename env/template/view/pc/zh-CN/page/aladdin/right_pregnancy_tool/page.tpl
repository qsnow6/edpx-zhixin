{%extends 'right_base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.opr_right_pregnancy_tool_main{color:#333}.opr_right_pregnancy_tool_main a{color:#00C}.opr_right_pregnancy_tool_subtitle{font-size:14px;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 100%;position:relative;zoom:1}.opr_right_pregnancy_tool_subtitle_tip{padding-right:10px;margin-right:30px;background:#fff;font-weight:bold}.opr_right_pregnancy_tool_list{padding-top:4px}.opr_right_pregnancy_tool_item{line-height:18px;margin-top:5px}.opr_right_pregnancy_{%*i*%}tool_item span{line-height:18px;width:135px;display:inline-block}</style>{%if $tplData.dl%}{%$dl="&rsv_dl=`$tplData.dl[0].value`"%}{%/if%}<div class="opr_right_pregnancy_tool_main"> <div class="opr_right_pregnancy_tool_subtitle"> <span class="opr_right_pregnancy_tool_subtitle_tip">{%if $tplData.title%}{%$tplData.title%}{%/if%}</span> </div> <div class="opr_right_pregnancy_tool_list"> {%foreach $tplData.tool as $tool%}{%if $tool@index == 0 %}<div class="opr_right_pregnancy_tool_item">{%elseif $tool@index % 2 == 0 %}</div><div class="opr_right_pregnancy_tool_item">{%/if%}<span><a target="_blank" href="{%build_search_url params="wd=`$tool.query``$dl`"%}">{%$tool.text|escape:'html'%}</a></span>{%if $tool@last %}</div>{%/if%}{%/foreach%} </div></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}