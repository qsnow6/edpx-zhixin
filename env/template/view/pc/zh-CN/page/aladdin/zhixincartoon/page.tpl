{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<font size="-1" class="click-parent-reward" urdata="{pid:'video',type:'comic'}"> <div class="op_zhixincartoon_left" > {%function name=fe_fn_zhixin_cartoon_web%} {%if $tplData.officalWeb%} <div class="op_zhixincartoon_web" data-click="{'rsv_zhixin_tq':'zhixincartoon_web_{%$tplData.index%}'}"> <h3><a{%if $tplData.officalWeb[0].icon%} style="padding-left:20px;background:url({%$tplData.officalWeb[0].icon%}) no-repeat;"{%/if%} target="_blank" href="{%$tplData.officalWeb[0].link%}">{%$tplData.officalWeb[0].title|limitlen:63|highlight:0%}</a></h3> <p>{%$tplData.officalWeb[0].abstract|limitlen:160|highlight:0%}</p><div class="op_zhixincartoon_showurl">{%$tplData.officalWeb[0].gwshowurl|escape%}</div> </div> {%/if%} {%/function%} {%function name=fe_fn_zhixin_cartoon_video%}<div class="op_zhixincartoon_video" data-click="{'rsv_zhixin_tq':'zhixincartoon_video_{%$tplData.index%}'}"><table><tbody><tr><td valign="top"><div class="op_zhixincartoon_video_photo"><a href="{%$tplData.url%}" target="_blank" ><img src="{%$tplData.poster%}" class="op_zhixincartoon_haibao_img"/><span class="op_zhixincartoon_imgborder"></span></a></div></td><td valign="top"><div class="op_zhixincartoon_video_content"><a class="op_zhixincartoon_video_turl" href="{%$tplData.url %}" target="_blank"  >{%$tplData.title|escape:'html'|limitlen:52|highlight:0 %}</a><div class="op_zhixincartoon_jishu"><span class="op_zhixincartoon_jishu_img"></span><span class="op_zhixincartoon_jishu_content">{%if $tplData.finished==0%} 更新至<font>{%$tplData.latestEp%}集</font>{%if $tplData.epCount%}{%if $tplData.epCount%}/共{%$tplData.epCount%}集{%/if%}{%/if%}{%elseif $tplData.finished==1%} 已完结{%if $tplData.epCount%}/<font>{%$tplData.epCount%}集全</font>{%/if%}{%/if%}</span></div> {%if $tplData.year%}<div class="op_zhixincartoon_year"><span class="op_zhixincartoon_th">年&nbsp;代：</span><span>{%$tplData.year%}</span></div> {%else%} {%$tempData.flag = '1'%} {%/if%}{%if $tplData.area  %}<div class="op_zhixincartoon_area"><span class="op_zhixincartoon_th">地&nbsp;区：</span><span>{%$tplData.area%}</span></div> {%else%} {%$tempData.flag = '1'%}{%/if%}{%if $tplData.author && $tplData.author|count >0 %} <div class="op_zhixincartoon_author"><span class="op_zhixincartoon_th">作&nbsp;者：</span>{%foreach $tplData.author as $item %}{%$auLength = $auLength + mb_strlen($item.name,'utf-8')%}{%if ($auLength > 19 && $item@index > 0) || $item@index > 1%}{%break%}{%/if%}{%if $item@index gte 1 %}<span class="op_zhixincartoon_seperate">|</span>{%/if%}{%if $item.link !=''%}<span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span>{%else%}<span style="color:#333" title="{%$item.name%}">{%$item.name|limitlen:40%}</span>{%/if%}{%/foreach%}</div> {%else%} {%$tempData.flag = '1'%}{%/if%}{%if $tplData.type && $tplData.type|@count >0 %}<div class="op_zhixincartoon_type"><span class="op_zhixincartoon_th">类&nbsp;型：</span>{%foreach $tplData.type as $type %}{%if $type@index >2 %}{%break%}{%/if%}{%if !$type@first%}<span class="op_zhixincartoon_seperate">|</span>{%/if%}{%if $type.link%}<a href="{%$type.link|escape:'html'%}" target="_blank">{%$type.name|escape:'html' %}</a>{%else%}<span>{%$type.name|escape:'html' %}</span>{%/if%}{%/foreach%}</div> {%else%} {%$tempData.flag = '1'%}{%/if%}<div class="op_zhixincartoon_summary"><span class="op_zhixincartoon_th">简&nbsp;介：</span> {%$tmpData.aliasLen = 0%} {%if $tplData.alias%} {%$tmpData.aliasLen = (strlen($tplData.alias) + mb_strlen($tplData.alias,'utf-8'))/2 + 8%} 别名（<em>{%$tplData.alias%}</em>） {%/if%}{%if $tempData.flag%} <span class="op_zhixincartoon_summery_cont">{%$tplData.summary[0].content|limitlen:(160-$tmpData.aliasLen)%}</span> {%if $tplData.summary[0].content|limitlen:(160-$tmpData.aliasLen) != $tplData.summary[0].content|trim%} <a class="op_zhixincartoon_summery_xq" href="{%$tplData.url%}" target="_blank">更多&gt;&gt;</a> {%/if%} {%else%}<span class="op_zhixincartoon_summery_cont">{%$tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen)%}</span>{%if $tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen) != $tplData.summary[0].content|trim%} <a class="op_zhixincartoon_summery_xq" href="{%$tplData.url%}" target="_blank">更多&gt;&gt;</a> {%/if%}{%/if%}</div></div></td></tr></tbody></table><div class="op_zhixincartoon_tabs"><div class="op_zhixincartoon_video_menu">{%foreach $tplData.tab as $itemtab %}{%if $itemtab.cnt>0%}{%if $itemtab@index==4%}{%break%}{%/if%}{%if $itemtab@index==0 %} <span class="op_zhixincartoon_video_tab OP_LOG_OTHERS op_zhixincartoon_video_tab_act" data-key="{%$itemtab.key|escape:'html'%}" data-flag="1"><span class="op_zhixin_cartoon_video_tab_span"><b style="background:url({%$itemtab.icon|escape:'html' %}) no-repeat left center;">{%$itemtab.title|escape:'html'%}</b></span></span>{%elseif $itemtab@index==1 %}<span class="op_zhixincartoon_video_tab OP_LOG_OTHERS op_zhixincartoon_video_tab_next" data-key="{%$itemtab.key|escape:'html'%}" data-flag="0"><span class="op_zhixin_cartoon_video_tab_span"><b style="background:url({%$itemtab.icon|escape:'html' %}) no-repeat left center;">{%$itemtab.title|escape:'html'%}</b></span></span>{%else %}<span class="op_zhixincartoon_video_tab OP_LOG_OTHERS" data-key="{%$itemtab.key|escape:'html'%}" data-flag="0"><span class="op_zhixin_cartoon_video_tab_span"><b style="background:url({%$itemtab.icon|escape:'html' %}) no-repeat left center;">{%$itemtab.title|escape:'html'%}</b></span></span>{%/if%}{%/if%}{%/foreach%}</div> <div class="op_zhixincartoon_video_loading" style="display:none;"><table style="height:100%;margin:auto;"><tr><td><div>&nbsp;</div></td></tr></table></div><div class="op_zhixincartoon_tab_conts">{%foreach $tplData.tab as $itemtab%}<div class="op_zhixincartoon_tab_cont {%if $itemtab@index==0%}op_zhixincartoon_tab_cur_cont{%/if%}"> {%if $itemtab.cnt > 20%} {%$juheCnt=($itemtab.cnt+100-1)/100 %} {%$juheCnt=$juheCnt|string_format:"%d"%} <div class="op_zxcartoon_video_juhe_conts"> {%for $tempDataJuheCnt=1 to $juheCnt %}<div class="op_zxcartoon_video_juhe_cont {%if $tempDataJuheCnt==1%}op_zxcartoon_video_juhe_curcont{%/if%}"> {%if $tempDataJuheCnt == 1 && $itemtab@first%} <ul> {%foreach $tplData.vlink as $itemvlink%} {%if $itemvlink@index > 19%} {%break%} {%/if%} <li> {%if $itemvlink.linkurl %} <a href="{%$itemvlink.linkurl|escape:'html'%}" target="_blank">{%$itemvlink.linkcontent|escape:'html'%}{%$tplData.vlinktext%}</a> {%if $itemvlink.latest == 'true' %} <b></b> {%/if%} {%else%} <span>{%$itemvlink.linkcontent|escape:'html'%}{%$tplData.vlinktext%}</span> {%if $item.latest == 'true' %} <b></b> {%/if%} {%/if%} </li> {%/foreach%} </ul> {%/if%} </div>{%/for%}</div> {%else%} <div class="op_zxcartoon_video_juhe_cont {%if $tempDataJuheCnt==1%}op_zxcartoon_video_juhe_curcont{%/if%}"> {%if $itemtab@first%} <ul> {%foreach $tplData.vlink as $itemvlink%} {%if $itemvlink@index > 19 || $itemvlink.key != $itemtab.key%} {%break%} {%/if%} <li> {%if $itemvlink.linkurl %} <a href="{%$itemvlink.linkurl|escape:'html'%}" target="_blank">{%$itemvlink.linkcontent|escape:'html'%}{%$tplData.vlinktext%}</a> {%if $itemvlink.latest == 'true' %} <b></b> {%/if%} {%else%} <span>{%$itemvlink.linkcontent|escape:'html'%}{%$tplData.vlinktext%}</span> {%if $item.latest == 'true' %} <b></b> {%/if%} {%/if%} </li> {%/foreach%} </ul> {%/if%} </div> {%/if%} {%if $itemtab.cnt > 100%} <div class="op_zxcartoon_video_juhe_menu"> {%if $tplData.finished==1%}{%for $tempDataJuheCnt=1 to $juheCnt %}{%if $tempDataJuheCnt==1%}<span class="op_zxcartoon_video_juhe_link op_zxcartoon_video_juhe_cur_link OP_LOG_OTHERS" data-flag="1">第{%($tempDataJuheCnt-1)*100+1%}~{%$tempDataJuheCnt*100|escape:'html'%}{%$tplData.vlinktext%}</span>{%else%} {%if $tempDataJuheCnt==$juheCnt%} {%if ($tempDataJuheCnt-1)*100+1==$itemtab.cnt%} <span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第{%$itemtab.cnt|escape:'html'%}{%$tplData.vlinktext%}</span> {%else%} <span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第{%($tempDataJuheCnt-1)*100+1%}~{%$itemtab.cnt|escape:'html'%}{%$tplData.vlinktext%}</span> {%/if%} {%else%} <span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第{%($tempDataJuheCnt-1)*100+1%}~{%$tempDataJuheCnt*100|escape:'html'%}{%$tplData.vlinktext%}</span>{%/if%}{%/if%}{%/for%}{%else%}{%for $tempDataJuheCnt=1 to $juheCnt %}{%if $tempDataJuheCnt==1%}<span class="op_zxcartoon_video_juhe_link op_zxcartoon_video_juhe_cur_link OP_LOG_OTHERS" data-flag="1">第{%$itemtab.cnt|escape:'html'%}~{%$itemtab.cnt-100+1%}{%$tplData.vlinktext%}</span>{%else%}{%if $tempDataJuheCnt!=$juheCnt%}<span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第{%$itemtab.cnt-100*($tempDataJuheCnt-1)%}~{%$itemtab.cnt-100*($tempDataJuheCnt)+1%}{%$tplData.vlinktext%}</span>{%else%}{%if $itemtab.cnt-($juheCnt-1)*100==1%}<span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第1{%$tplData.vlinktext%}</span>{%else%}<span class="op_zxcartoon_video_juhe_link OP_LOG_OTHERS" data-flag="0">第1~{%$itemtab.cnt-($juheCnt-1)*100%}{%$tplData.vlinktext%}</span>{%/if%}{%/if%}{%/if%}{%/for%}{%/if%}</div> {%/if%} {%if $itemtab.cnt > 20%} <div class="op_zxcartoon_video_more"> <div class="op_zxcartoon_video_more_down OP_LOG_OTHERS" data-flag="0"><span class="op_zxcartoon_video_more_downimg"></span><span class="op_zxcartoon_video_more_downcont">显示全部《{%$itemtab.moretip|highlight:0%}》视频</span></div> <div class="op_zxcartoon_video_more_up OP_LOG_OTHERS"><span class="op_zxcartoon_video_more_upimg"></span><span class="op_zxcartoon_video_more_upcont">收起 </span></div> </div> {%/if%}</div>{%/foreach%}</div><div class="op_zhixincartoon_tab_error_load" style="display:none;"></div></div></div> {%/function%} {%function name=fe_fn_zhixin_cartoon_baike%}{%if $tplData.baike %}<div class="op_zhixincartoon_bk" data-click="{'rsv_zhixin_tq':'zhixincartoon_baike_{%$tplData.index%}'}"><div class="op_zhixincartoon_bk_title"><a href="{%$tplData.baike[0].link%}" target="_blank">{%$tplData.baike[0].title|limitlen:60|escape:'html'|highlight:0%}</a></div><p class="op_zhixincartoon_bk_ab">{%$tplData.baike[0].absctract|limitlen:160|escape:'html'|highlight:0%}<p>{%if isset($tplData.baikelink) && $tplData.baikelink|count gt 2%}<div class="op_zhixincartoon_bk_links"> {%foreach $tplData.baikelink as $item%} {%if $item@index > 5%}{%break%}{%/if%} {%if $item@index == 5%} <a target="_blank" href="{%$tplData.baike[0].link%}" style="font-family:simsun;">查看全部&gt;&gt;</a> {%else if $item@index == $tplData.baikelink|count - 1%} <a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:12%}</a><span>&nbsp;-</span>&nbsp;<a target="_blank" href="{%$tplData.baike[0].link%}" style="font-family:simsun;">查看全部&gt;&gt;</a> {%else%} <a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:12%}</a><span>&nbsp;-</span> {%/if%} {%/foreach%}</div>{%/if%}</div>{%/if%}{%/function%} {%function name=fe_fn_zhixin_cartoon_cartoon%}{%if $tplData.imanhua %}<div class="op_zhixincartoon_ai" data-click="{'rsv_zhixin_tq':'zhixincartoon_cartoon_{%$tplData.index%}'}"><div class="op_zhixincartoon_ai_title"><a href="{%$tplData.imanhua[0].url%}" target="_blank">{%$tplData.imanhua[0].title|limitlen:72|escape:'html'|highlight:0 %}</a></div>{%if $tplData.cicon%}<div class="op_zhixincartoon_ai_imgs"><ul >{%foreach $tplData.cicon as $cimg %}{%if $cimg@index>5%}{%break%}{%/if%}<li><a href="{%$cimg.iconlink|escape:'html'%}" target="_blank"><img src="{%$cimg.iconaddress|escape:'html'%}" /><span class="op_zhixincartoon_imgborder"></span><span class="op_zhixincartoon_bottom"></span><b>{%$cimg.iconcontent|escape:'html'%}</b>{%if $cimg.iconnew=='true' %}<div class="op_zhixincartoon_ai_new">新!</div>{%/if%}</a></li>{%/foreach%}</ul><div style="clear:both;"></div></div>{%/if%}{%if $tplData.clink%} <div class="op_zhixincartoon_comic_loading" style="display:none;"><table style="height:100%;margin:auto;"><tr><td><div>&nbsp;</div></td></tr></table></div><div class="op_zhixincartoon_ai_links"{%if $tplData.clink|count<=6%} style="display:none;"{%/if%}>{%if $tplData.imanhua[0].cnt>0 && $tplData.imanhua[0].cnt<101 %}<div class="op_zxcartoon_ai_juhe_conts"> <div class="op_zxcartoon_ai_juhe_cont op_zxcartoon_ai_juhe_curcont"> <ul> {%foreach $tplData.clink as $clink%} {%if $clink@index>19 %}{%break%}{%/if%} <li> <a href="{%$tplData.imanhua[0].clinkurlpre|cat:$clink.linkurl %}" target="_blank">{%$clink.linkcontent|escape:'html'%}</a> </li> {%/foreach%} </ul><div style="clear:both;"></div> </div> </div> {%if $tplData.imanhua[0].cnt > 19%} <div class="op_zxcartoon_ai_juhe_more"> <div class="op_zxcartoon_ai_juhe_more_down OP_LOG_OTHERS" data-flag="0"><span class="op_zxcartoon_ai_juhe_more_downimg"></span><span class="op_zxcartoon_ai_juhe_more_downcont">显示全部《<em>{%$tplData.imanhua[0].moretip%}</em>》漫画</span></div> <div class="op_zxcartoon_ai_juhe_more_up OP_LOG_OTHERS"><span class="op_zxcartoon_ai_juhe_more_upimg"></span><span class="op_zxcartoon_ai_juhe_more_upcont">收起</span></div> </div> {%/if%}{%else%}{%$juheCnt=($tplData.imanhua[0].cnt+100-1)/100 %}{%$juheCnt=$juheCnt|string_format:"%d"%}<div class="op_zxcartoon_ai_juhe_conts">{%for $tempDataJuheCnt=1 to $juheCnt %}<div class="op_zxcartoon_ai_juhe_cont {%if $tempDataJuheCnt==1%}op_zxcartoon_ai_juhe_curcont{%/if%}">{%if $tempDataJuheCnt !=$juheCnt%}{%$tempDataUlCnt=5%}{%else%}{%$tempDataUlCnt=($tplData.imanhua[0].cnt-($juheCnt-1)*100)/20+1%} {%$tempDataUlCnt=$tempDataUlCnt|string_format:"%d"%}{%/if%} {%if $tempDataJuheCnt==1%} <ul> {%foreach $tplData.clink as $clink%} {%if $clink@index>19 %}{%break%}{%/if%} <li> <a href="{%$tplData.imanhua[0].clinkurlpre|cat:$clink.linkurl %}" target="_blank">{%$clink.linkcontent|escape:'html'%}</a> </li> {%/foreach%} </ul> {%/if%}</div>{%/for%}</div><div class="op_zxcartoon_ai_juhe_menu"> {%foreach $tplData.clinktext as $item%} <span class="op_zxcartoon_ai_juhe_link OP_LOG_OTHERS{%if $item@first%} op_zxcartoon_ai_juhe_cur_link{%else%} op_zxcartoon_ai_juhe_nocur_link{%/if%}"{%if $item@first%} data-flag="1"{%else%} data-flag="0"{%/if%}>{%$item.name%}</span> {%/foreach%}</div><div class="op_zxcartoon_ai_juhe_more"><div class="op_zxcartoon_ai_juhe_more_down OP_LOG_OTHERS" data-flag="0"><span class="op_zxcartoon_ai_juhe_more_downimg"></span><span class="op_zxcartoon_ai_juhe_more_downcont">显示全部《{%$tplData.imanhua[0].moretip|highlight:0%}》漫画</span></div><div class="op_zxcartoon_ai_juhe_more_up OP_LOG_OTHERS"><span class="op_zxcartoon_ai_juhe_more_upimg"></span><span class="op_zxcartoon_ai_juhe_more_upcont">收起</span></div></div>{%/if%}</div><div class="op_zhixincartoon_ai_error_load" style="display:none;"></div>{%/if%}</div>{%/if%} {%/function%} {%function name=fe_fn_zhixin_cartoon_tieba%}{%if $tplData.tieba %}<div class="op_zhixincartoon_tieba" data-click="{'rsv_zhixin_tq':'zhixincartoon_tieba_{%$tplData.index%}'}"><div class="op_zhixincartoon_ttitle"><a href="{%$tplData.tieba[0].link%}" target="_blank">{%$tplData.tieba[0].title|limitlen:40|escape:'html'|highlight:0 %}</a> {%if $tplData.tieba[0].reply && $tplData.tieba[0].reply != '0'%}<span class="op_zhixincartoon_t_cnt">累计发贴：<b>{%number_format($tplData.tieba[0].reply)%}</b></span> {%/if%}{%if $tplData.tieba[0].fans && $tplData.tieba[0].fans != '0'%}<span class="op_zhixincartoon_t_subcnt">月活跃用户：<b>{%number_format($tplData.tieba[0].fans)%}</b>人</span>{%/if%}<div style="clear:both;"></div></div><div class="op_zhixincartoon_t_links"><table><tbody>{%foreach $tplData.thread as $thread %}{%if $thread@index>2%}{%break%}{%/if%}<tr><td class="op_zhixincartoon_t_ltd"><a href="{%$thread.url%}" target="_blank" title="{%$thread.title|escape:'html'%}">{%$thread.title|limitlen:42|escape:'html'|highlight:0%}</a> {%if $thread.isgood==1 %}<span class="op_zhixincartoon_t_good"></span>{%/if%}{%if $thread.ispic==1 %}<span class="op_zhixincartoon_t_pic"></span>{%/if%}</td><td class="op_zhixincartoon_t_mtd"><span class="op_zhixincartoon_t_click">点击：{%if $thread.clicknum != ''%}{%$thread.clicknum|escape:'html'%}{%else%}0{%/if%}</span></td><td class="op_zhixincartoon_t_rtd"><span class="op_zhixincartoon_t_back">回复：{%if $thread.replaynum != ''%}{%$thread.replaynum|escape:'html'%}{%else%}0{%/if%}</span></td></tr>{%/foreach%}</tbody></table><div class="op_zhixincartoon_tie_more"><a href="{%$tplData.tieba[0].link%}" target="_blank">{%$tplData.tieba[0].moretip|escape:'html'|highlight:0 %}</a></div></div></div>{%/if%}{%/function%} {%if !$tplData.index%} {%if $tplData.officalWeb%} {%$tplData.index ='web'%} {%/if%} {%if $tplData.index%} {%$tplData.index = "{%$tplData.index%},video"%} {%else%} {%$tplData.index ='video'%} {%/if%} {%if $tplData.baike%} {%$tplData.index = "{%$tplData.index%},baike"%} {%/if%} {%if $tplData.imanhua%} {%$tplData.index = "{%$tplData.index%},cartoon"%} {%/if%} {%if $tplData.tieba%} {%$tplData.index = "{%$tplData.index%},tieba"%} {%/if%} {%/if%} {%*模块动态排序显示*%} {%$temp_left_mods=['web','video','baike','cartoon','tieba']%} {%foreach explode(',',$tplData.index) as $item%} {%if $item != '' && in_array($item, $temp_left_mods, true)%} {%call name="fe_fn_zhixin_cartoon_{%$item%}"%} {%/if%} {%/foreach%}<div class="op_zhixincartoon_zhenghe">以上信息由百度根据您的搜索词自动产生</div> </div></font><script >
    A.setup({"tabkey":"{%$tplData.tab[0].key%}","key":"{%$tplData.key%}","vtxt":"{%$tplData.vlinktext%}","clinkpre":"{%$tplData.imanhua[0].clinkurlpre%}","sid":"{%$extData.resourceid%}"});
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}