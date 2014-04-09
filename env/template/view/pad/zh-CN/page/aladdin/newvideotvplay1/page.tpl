{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%function name=fe_fn_new_video_tvplay_video%}<li class="op_new_video_tvplay_info  op_new_video_tvplay_clearfix" style="padding-bottom: 10px;"  data-click="{'rsv_zhixin_tq':'newvideotvplay1_video_{%$tplData.index%}'}"><a target="_blank" href="{%$tplData.url%}" class="op_new_video_tvplay_postera"><img class="op_new_video_tvplay_poster" src="{%$tplData.poster%}"/><span class="op_new_video_tvplay_imgborder"></span></a><ul class="op_new_video_tvplay_clearfix"><li class="op_new_video_tvplay_info_title"><h3><a target="_blank" href="{%$tplData.url%}">{%$tplData.title|limitlen:40|highlight:0%}</a></h3></li> <li class="op_new_video_tvplay_jishu"><span style="color:#333">{%if $tplData.finished==1%}已完结{%if $tplData.epCount%}/共{%$tplData.epCount%}集{%/if%}{%else%}更新至<span style="color:#cc0000"><em>{%$tplData.latestEp%}</em>集</span>{%if $tplData.epCount%}/共{%$tplData.epCount%}集{%/if%}{%/if%}</span></li> {%$limitlenCount = 0%} {%if $tplData.area%}<li><span>地&nbsp;区：</span><span style="color:#333">{%$tplData.area%}</span></li> {%else%} {%$limitlenCount=$limitlenCount+1%} {%/if%} {%if $tplData.type|count > 0%}<li><span>类&nbsp;型：</span>{%foreach $tplData.type as $item%}{%if $item@index > 2%}{%break%}{%/if%}{%if $item@index gte 1 %}<span class="op_new_video_tvplay_split">|</span>{%/if%}{%if $item.link !=''%}<span><a target="_blank" href="{%$item.link%}">{%$item.name%}</a></span>{%else%}<span style="color:#333">{%$item.name%}</span>{%/if%}{%/foreach%}</li> {%else%} {%$limitlenCount=$limitlenCount+1%} {%/if%} {%if $tplData.director|count > 0%}<li><span>导&nbsp;演：</span> {%foreach $tplData.director as $item%} {%$directorLength = $directorLength + mb_strlen($item.name,'utf-8')%} {%if ($directorLength > 20 && $item@index > 0) || $item@index > 1%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_newvideo_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%}</li> {%else%} {%$limitlenCount=$limitlenCount+1%} {%/if%} {%if $tplData.actor|count > 0%}<li><span>主&nbsp;演：</span> {%$actorLength = 0%} {%foreach $tplData.actor as $item%} {%$actorLength = $actorLength + mb_strlen($item.name,'utf-8')%} {%if ($actorLength > 20 && $item@index > 0)|| $item@index > 4%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_newvideo_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%}</li> {%else%} {%$limitlenCount=$limitlenCount+1%} {%/if%} {%if $tplData.summary[0] && $tplData.summary[0].content != ''%}<li><span>简&nbsp;介：</span><span style="color:#333;"> {%$tmpData.aliasLen = 0%} {%if $tplData.alias%} {%$tmpData.aliasLen = (strlen($tplData.alias) + mb_strlen($tplData.alias,'utf-8'))/2 + 8%} 别名（<em>{%$tplData.alias%}</em>） {%/if%} {%if $limitlenCount > 0%} {%$tplData.summary[0].content|limitlen:(160-$tmpData.aliasLen)%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(160-$tmpData.aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-size:0.92em;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%else%} {%$tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen)%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-size:0.92em;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%/if%}</span></li> {%/if%}</ul></li>{%*选集*%}{%if $tplData.tab != '' && $tplData.tab|count>0 && $tplData.vlink != '' && $tplData.vlink|count>0%}<li class="op_new_video_tvplay_eppicker op_new_video_tvplay_clearfix" data-click="{'rsv_zhixin_tq':'newvideotvplay1_video_{%$tplData.index%}'}"><div style="height:0;clear:both;background-color:#f8f8f8;"></div><div class="op_newvideotvplaytabs"><div class="op_newvideotvplayvideo_menu"> {%foreach $tplData.tab as $item %} {%if $item@index==0%} <span class="op_newvideotvplayvideo_tab op_newvideotvplayvideo_tab1 OP_LOG_OTHERS op_newvideotvplayvideo_tab_act" > <span class="op_newvideotvplay_video_tab_span"> <b class="" style="background:url({%$item.icon|escape:'html' %}) no-repeat left center;">{%$item.title|escape:'html'%}</b> </span> </span> {%elseif $item@index==1%} <span class="op_newvideotvplayvideo_tab OP_LOG_OTHERS op_newvideotvplayvideo_tab_next" > <span class="op_newvideotvplay_video_tab_span"> <b class="" style="background:url({%$item.icon|escape:'html' %}) no-repeat left center;">{%$item.title|escape:'html'%}</b> </span> </span> {%else %} <span class="op_newvideotvplayvideo_tab OP_LOG_OTHERS"  > <span class="op_newvideotvplay_video_tab_span"> <b class="" style="background:url({%$item.icon|escape:'html' %}) no-repeat left center;">{%$item.title|escape:'html'%}</b> </span> </span> {%/if%}{%/foreach%}</div> {%foreach $tplData.vlink as $episode%} {%foreach $tplData.tab as $site%} {%if $episode.key == $site.key%} {%$tempData.{%$site.key%}[] = $episode%} {%break%} {%/if%} {%/foreach%} {%/foreach%}<div class="op_newvideotvplaytab_conts">{%foreach $tplData.tab as $item%}<div class="op_newvideotvplaytab_cont {%if $item@index==0%}op_newvideotvplaytab_cur_cont{%/if%}"> {%$tempDataVideoCnt = $item.cnt%}{%if $tempDataVideoCnt>0 && $tempDataVideoCnt < 21%}<ul>{%$tempDatatmpCnt=0 %} {%foreach $tempData.{%$item.key%} as $itemvlink%}{%if $tempDatatmpCnt < 20 %}{%$tempDatatmpCnt = $tempDatatmpCnt + 1 %}<li>{%if $itemvlink.linkurl %}<a href="{%$itemvlink.linkurl%}" target="_blank">{%$itemvlink.linkcontent%}集</a>{%if $itemvlink.latest=='true' %}<b></b>{%/if%}{%else%}<span>{%$itemvlink.linkcontent%}集</span>{%if $itemvlink.latest=='true' %}<b></b>{%/if%}{%/if%}</li>{%/if%}{%/foreach%}</ul>{%elseif $tempDataVideoCnt>=21 && $tempDataVideoCnt<101 %}<div class="op_new_video_tvplay_video_juhe_conts"><div class="op_new_video_tvplay_video_juhe_cont op_new_video_tvplay_video_juhe_curcont">{%$tempDataUlCnt=$tempDataVideoCnt/20 %}{%for $tmp=0 to $tempDataUlCnt-1 %}<ul class="op_new_video_tvplay_video_ul {%if $tmp>0%}op_new_video_tvplay_video_hideul{%/if%}">{%$tempDatatmpCnt = 0%}{%foreach $tempData.{%$item.key%} as $itemvideoepisode %}{%$tempDatatmpCnt = $tempDatatmpCnt + 1%}{%if $tempDatatmpCnt > 20*$tmp  && $tempDatatmpCnt <= 20*($tmp+1) %}<li>{%if $itemvideoepisode.linkurl %}<a href="{%$itemvideoepisode.linkurl%}" target="_blank">{%$itemvideoepisode.linkcontent%}集</a>{%if $itemvideoepisode.latest=='true' %}<b></b>{%/if%}{%else %}<span>{%$itemvideoepisode.linkcontent%}集</span>{%if $itemvideoepisode.latest=='true' %}<b></b>{%/if%}{%/if%}</li>{%/if%}{%/foreach%}</ul>{%/for%}</div></div><div class="op_new_video_tvplay_video_more"><div class="op_new_video_tvplay_video_more_down OP_LOG_OTHERS"><span class="op_new_video_tvplay_video_more_downimg"></span><span class="op_new_video_tvplay_video_more_downcont">显示全部《{%$tplData.tab[0].moretip|highlight:0%}》视频</span></div><div class="op_new_video_tvplay_video_more_up OP_LOG_OTHERS"><span class="op_new_video_tvplay_video_more_upimg"></span><span class="op_new_video_tvplay_video_more_upcont">收起</span></div></div> {%$key=$extData.fetchkey|regex_replace:"/\d+_/":""%} {%if empty($key)%}{%$key=$tplData.key%}{%/if%} {%if $item@index==0&&($key=='非缘勿扰'||$key=='杜拉拉之似水年华'||$key=='非缘勿扰电视剧全集'||$key=='一吻定情'||$key=='天天有喜电视剧全集')%} <div class="op_new_video_tvplay_video_more op_new_video_tvplay_video_iqiyi"><a href="http://ota.iqiyi.com/adf/078787ac2d1d448e9b217b5e1f3fcab0" target="_blank">2013“快乐男声”同步直播，进入爱奇艺极速观看！</a></div> {%/if%}{%elseif $tempDataVideoCnt>=101 %}{%$juheCnt=($tempDataVideoCnt+100-1)/100 %}{%$juheCnt=$juheCnt|string_format:"%d"%}<div class="op_new_video_tvplay_video_juhe_conts">{%for $tempDataJuheCnt=1 to $juheCnt %}<div class="op_new_video_tvplay_video_juhe_cont {%if $tempDataJuheCnt==1%}op_new_video_tvplay_video_juhe_curcont{%/if%}" name="op_new_video_tvplay_video_juhe_cont{%$tempDataJuheCnt|escape:'html'%}">{%if $tempDataJuheCnt !=$juheCnt%}{%$tempDataUlCnt=5%}{%else%}{%$tempDataUlCnt=($tempDataVideoCnt-($juheCnt-1)*100)/20+1%}{%$tempDataUlCnt=$tempDataUlCnt|string_format:"%d"%}{%/if%}{%for $tmp=0 to $tempDataUlCnt-1 %}<ul class="op_new_video_tvplay_video_ul {%if $tmp>0%}op_new_video_tvplay_video_hideul{%/if%}" >{%$tempDatatmpCnt=0%} {%for $tempDatatmpCnt=($tempDataJuheCnt-1)*100+20*$tmp to ($tempDataJuheCnt-1)*100+20*($tmp+1)-1%} {%if $tempDatatmpCnt > $tempDataVideoCnt%}{%break%}{%/if%} <li> {%if $tempData.{%$item.key%}.{%$tempDatatmpCnt%}.linkurl %} <a href="{%$tempData.{%$item.key%}.{%$tempDatatmpCnt%}.linkurl%}" target="_blank">{%$tempData.{%$item.key%}.{%$tempDatatmpCnt%}.linkcontent%}集</a> {%if $itemvideoepisode.latest=='true' %} <b></b> {%/if%} {%else%} <span>{%$tempData.{%$item.key%}.{%$tempDatatmpCnt%}.linkcontent%}</span> {%if $itemvideoepisode.latest=='true' %} <b></b> {%/if%} {%/if%} </li> {%/for%}</ul>{%/for%}</div>{%/for%}</div><div class="op_new_video_tvplay_video_juhe_menu">{%if $tplData.finished==1%}{%for $tempDataJuheCnt=1 to $juheCnt %}{%if $tempDataJuheCnt==1%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_cur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%($tempDataJuheCnt-1)*100+1%}~{%$tempDataJuheCnt*100|escape:'html'%}集</span>{%else%}{%if $tempDataJuheCnt==$juheCnt%}{%if ($tempDataJuheCnt-1)*100+1==$tempDataVideoCnt%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%$tempDataVideoCnt|escape:'html'%}集</span>{%else%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%($tempDataJuheCnt-1)*100+1%}~{%$tempDataVideoCnt|escape:'html'%}集</span>{%/if%}{%else%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%($tempDataJuheCnt-1)*100+1%}~{%$tempDataJuheCnt*100|escape:'html'%}集</span>{%/if%}{%/if%}{%/for%}{%else%}{%for $tempDataJuheCnt=1 to $juheCnt %}{%if $tempDataJuheCnt==1%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_cur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%$tempDataVideoCnt|escape:'html'%}~第{%$tempDataVideoCnt-100+1%}集</span>{%else%}{%if $tempDataJuheCnt!=$juheCnt%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第{%$tempDataVideoCnt-100*($tempDataJuheCnt-1)%}~{%$tempDataVideoCnt-100*$tempDataJuheCnt+1%}集</span>{%else%}{%if $tempDataVideoCnt-($juheCnt-1)*100==1%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第1集</span>{%else%}<span class="op_new_video_tvplay_video_juhe_link op_new_video_tvplay_video_juhe_nocur_link OP_LOG_OTHERS" name="op_new_video_tvplay_video_juhe_link{%$tempDataJuheCnt-1|escape:'html'%}">第1~{%$tempDataVideoCnt-($juheCnt-1)*100%}集</span>{%/if%}{%/if%}{%/if%}{%/for%}{%/if%}</div><div class="op_new_video_tvplay_video_more"><div class="op_new_video_tvplay_video_more_down OP_LOG_OTHERS"><span class="op_new_video_tvplay_video_more_downimg"></span><span class="op_new_video_tvplay_video_more_downcont">显示全部《{%$tplData.tab[0].moretip|highlight:0%}》视频</span></div><div class="op_new_video_tvplay_video_more_up OP_LOG_OTHERS"><span class="op_new_video_tvplay_video_more_upimg"></span><span class="op_new_video_tvplay_video_more_upcont">收起</span></div></div> {%$key=$extData.fetchkey|regex_replace:"/\d+_/":""%} {%if empty($key)%}{%$key=$tplData.key%}{%/if%} {%if $item@index==0&&($key=='非缘勿扰'||$key=='杜拉拉之似水年华'||$key=='非缘勿扰电视剧全集'||$key=='一吻定情'||$key=='天天有喜电视剧全集')%} <div class="op_new_video_tvplay_video_more op_new_video_tvplay_video_iqiyi"><a href="http://ota.iqiyi.com/adf/078787ac2d1d448e9b217b5e1f3fcab0" target="_blank">2013“快乐男声”同步直播，进入爱奇艺极速观看！</a></div> {%/if%}{%/if%}</div>{%/foreach%}</div></div></li>{%/if%}{%/function%}{%* 贴吧 *%}{%function name=fe_fn_new_video_tvplay_tieba%}{%if $tplData.tieba[0].title != '' && $tplData.tieba != ''%} <li class="op_new_video_tvplay_tiebasec" data-click="{'rsv_zhixin_tq':'newvideotvplay1_tieba_{%$tplData.index%}'}"><h2><a target="_blank" href="{%$tplData.tieba[0].link%}">{%$tplData.tieba[0].title|highlight:0%}</a></h2> {%if $tplData.tieba[0].reply && $tplData.tieba[0].reply != '0'%} <span class="op_new_video_tvplay_tieba_info">累计发贴：<strong>{%number_format($tplData.tieba[0].reply)%}</strong></span> {%/if%} {%if $tplData.tieba[0].fans && $tplData.tieba[0].fans != '0'%} <span class="op_new_video_tvplay_tieba_info">月活跃用户：<strong>{%number_format($tplData.tieba[0].fans)%}</strong>人</span> {%/if%} <div style="clear:both;"></div> <table class="op_new_video_tvplay_tiebasec_cont">{%foreach $tplData.thread as $item%} <tr> <td> <a target="_blank" href="{%$item.url%}"> {%$limit = 48%} {%if  $item.ispic == 1%}{%$limit = $limit-5%}{%/if%} {%if  $item.isgood == 1%}{%$limit = $limit-3%}{%/if%} {%$item.title|limitlen:$limit%} </a> {%if $item.isgood==1 %} <span class="op_new_video_tvplay_good"></span> {%/if%} {%if $item.ispic==1 %} <span class="op_new_video_tvplay_pic"></span> {%/if%} </td> <td> {%if $item.replaynum!=''%}<span class="op_new_video_tvplay_tiebasec_item_rate">回复：{%$item.replaynum%}</span>{%/if%} </td> <td> {%if $item.clicknum!=''%}<span class="op_new_video_tvplay_tiebasec_item_rate">点击：{%$item.clicknum%}</span>{%/if%} </td> </tr>{%/foreach%} </table> {%if $tplData.tieba[0].moretip!=''%}<a href="{%$tplData.tieba[0].link%}" target="_blank" >{%$tplData.tieba[0].moretip|highlight:0%}</a>{%/if%}</li>{%/if%}{%/function%}{%* 百科 *%}{%function name=fe_fn_new_video_tvplay_baike%}{%if $tplData.baike[0]!=''%}<li class="op_new_video_tvplay_baike" data-click="{'rsv_zhixin_tq':'newvideotvplay1_baike_{%$tplData.index%}'}"><h2><a target="_blank" href="{%$tplData.baike[0].link%}">{%$tplData.baike[0].title|highlight:0%}</a></h2><a target="_blank" class="op_new_video_tvplay_morelink" href="{%$tplData.baike[0].link%}">{%$tplData.baike[0].moretip%}</a><div style="clear:both;"></div> <dl class="op_new_video_tvplay_baike_content"><dd>{%$tplData.baike[0].absctract|limitlen:180%}</dd></dl> {%if $tplData.baikelink|count>2%}<div class="op_new_video_tvplay_baike_other_ep op_new_video_tvplay_clearfix"> {%foreach $tplData.baikelink as $item%} {%if $item@index > 5%}{%break%}{%/if%} {%if $item@index == 5%} <span><a target="_blank" href="{%$tplData.baike[0].link%}">查看更多&gt;&gt;</a></span> {%else if $item@index == $tplData.baikelink|count - 1%} <span><a target="_blank" href="{%$item.link%}">{%$item.name|limitlen:10%}</a></span><span class="op_new_video_tvplay_baike_other_ep_split">-</span><span><a target="_blank" href="{%$tplData.baike[0].link%}">查看更多&gt;&gt;</a></span> {%else%} <span><a target="_blank" href="{%$item.link%}">{%$item.name|limitlen:10%}</a></span><span class="op_new_video_tvplay_baike_other_ep_split">-</span> {%/if%} {%/foreach%}</div> {%/if%}</li>{%/if%}{%/function%}<style>.op_new_video_tvplay_baike,.op_new_video_tvplay_tieba,.op_new_video_tvplay_playbg,.op_new_video_tvplay_play,.op_new_video_tvplay_hd,.op_new_video_tvplay_commentitle,.op_new_video_tvplay_commentnum,.op_new_video_tvplay_bottom,.op_new_video_tvplay_timeline1,.op_new_video_tvplay_timeline2,.op_new_video_tvplay_timeline3,.op_new_video_tvplay_point{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new1.png) no-repeat}.op_new_video_tvplay_pic,.op_new_video_tvplay_good{width{%*i*%}:19px;display:inline-block;height:17px;position:relative;top:2px;margin-left:5px;background:url("http://www.baidu.com/aladdin/img/tieba2/tieba2.gif") no-repeat}.op_new_video_tvplay_pic{background-position:0 -83px;width:31px}.op_new_video_tvplay_left{width:635px;position:relative}.op_new_video_tvplay_left h2{font-size:1.07em;float:left;margin:0 0 8px}.op_new_video_tvplay_morelink{font-size:.92em;float:right;margin:1px 7px 3px 0}.op_new_video_tvplay_postera{position:relative;width:130px;height:180{%*i*%}px;overflow:hidden;display:block}.op_new_video_tvplay_poster{width:130px;height:180px}.op_new_video_tvplay_imgborder{position:absolute;top:0;left:0;border:1px solid #000;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block}.op_new_video_tvplay_postera .op_new_video_tvplay_imgborder{width:128px;height:178px}.op_new_video_tvplay_jishu{padding-left:40px;background:url(http://list.video.baidu.com/static/image/tvplay_icon.png) left -275px no-repeat}.op_new_video_tvplay_info ul{position:a{%*i*%}bsolute;top:13px;left:159px;width:450px}.op_new_video_tvplay_info ul li{line-height:22px}.op_new_video_tvplay_info{color:#666;width:606px;height:180px;_width:609px;padding-bottom:10px}.op_new_video_tvplay_info ul .op_new_video_tvplay_info_title{line-height:31px}.op_new_video_tvplay_info ul .op_new_video_tvplay_info_title a{font-size:.92em}.op_new_video_tvplay_tieba{background-position:-41px -63px;padding-left:17px;background-position:-41px -64px\9}.op_new_video_tvplay_split{padding:0 4px;color:#{%*i*%}cdcdcd}.op_new_video_tvplay_video,.op_new_video_tvplay_tiebasec,.op_new_video_tvplay_baike{padding:15px 15px 13px 15px;background:#f8f8f8}.op_new_video_tvplay_info{padding:15px 14px 15px 15px;_padding:15px 11px 15px 15px;background:#f8f8f8}.op_new_video_tvplay_video,.op_new_video_tvplay_tiebasec,.op_new_video_tvplay_baike{margin-top:8px}.op_new_video_tvplay_video_prv li{width:145px;margin-right:6px;float:left}.op_new_video_tvplay_video_prv li a{position:relative;color:#333;display:block;text-ali{%*i*%}gn:center;text-decoration:none}.op_new_video_tvplay_video_prv li a:hover{text-decoration:underline}.op_new_video_tvplay_videoimg{width:145px;height:100px}.op_new_video_tvplay_videoimga{width:145px;height:100px;margin-bottom:5px}.op_new_video_tvplay_videoimga .op_new_video_tvplay_imgborder{width:143px;height:98px}.op_new_video_tvplay_play,.op_new_video_tvplay_hd,.op_new_video_tvplay_videoduration,.op_new_video_tvplay_videodurationfont{position:absolute;display:block}.op_new_video_tvplay_play{top:{%*i*%}79px;left:3px;height:20px;width:20px;z-index:2}.op_new_video_tvplay_play{background-position:-20px 0;z-index:2}.op_new_video_tvplay_hd{right:0;top:0;width:34px;height:34px;background-position:-5px -60px}.op_new_video_tvplay_play_latest{position:absolute;left:0;top:0;display:block;width:27px;height:27px;background:url(http://list.video.baidu.com/static/image/tvplay_icon.png) 0 0 no-repeat}.op_new_video_tvplay_videoduration{left:1px;top:79px;height:21px;width:143px;background:#000;opacity:.5;filte{%*i*%}r:alpha(opacity=50);z-index:1}.op_new_video_tvplay_videodurationfont{right:0;top:79px;height:21px;padding:0 3px;line-height:21px;color:#fff;font-size:.92em;z-index:2}.op_new_video_tvplay_bottom{margin-top:10px;padding-left:15px;background-position:-5px -95px}.op_new_video_tvplay_clearfix:after{content:"\0020";display:block;height:0;clear:both;visibility:hidden}.op_new_video_tvplay_clearfix{zoom:1}.op_new_video_tvplay_clearfix{*zoom:1}.op_new_video_tvplay_clearfix:after{display:block;content:'\20{%*i*%}';clear:both;height:0;overflow:hidden;font-size:0}.op_new_video_tvplay_sitetab{border-bottom:1px solid #dedede;background:#f8f8f8;padding-left:22px}.op_new_video_tvplay_sitetab_item{float:left;position:relative;top:0;padding:0 10px 0 6px;cursor:pointer;height:24px;border:1px solid #f8f8f8;border-bottom-width:0;color:#959595;background:url(http://list.video.baidu.com/static/image/tvplay_icon.png) right -189px no-repeat}.op_new_video_tvplay_last{background:0}.op_new_video_tvplay_sitetab_item span{{%*i*%}display:block;height:24px;position:relative;line-height:26px;padding-left:20px;float:left}.op_new_video_tvplay_sitetab_item span img{width:16px;height:16px;display:block;position:absolute;top:5px;left:0}.op_new_video_tvplay_sitetab .op_new_video_tvplay_sitetab_item_current{left:-3px;border:1px solid #dedede;border-bottom-color:#f8f8f8;top:1px;font-weight:bold;color:#333;background:#f8f8f8}.op_new_video_tvplay_sitetab .op_new_video_tvplay_sitetab_item_current span{top:-1px}.op_new_video_tvplay_pi{%*i*%}ckercnt{overflow:hidden;background:#f8f8f8}.op_new_video_tvplay_pickercnt .op_new_video_tvplay_pickerpanel{display:none;width:615px;padding:10px 0 14px 16px}.op_new_video_tvplay_pickercnt .op_new_video_tvplay_sitetab_item_current{display:block}.op_new_video_tvplay_opener,.op_new_video_tvplay_folder{border-color:#fcfcfc;background:url(http://list.video.baidu.com/static/image/tvplay_icon.png) 40px -91px no-repeat;cursor:pointer}.op_new_video_tvplay_hide_more{display:none}.op_new_video_tvplay_folde{%*i*%}r{display:none;background-position:40px -72px;float:right;margin-bottom:0}.op_new_video_tvplay_folder_cont{clear:both;text-align:right}.op_new_video_tvplay_open_more{background:#f2f2f2}.op_new_video_tvplay_tiebasec_cont{margin-bottom:4px;width:100%}.op_new_video_tvplay_tiebasec_cont td{padding:0 15px 0 2px;line-height:25px;font-size:1em;position:relative;text-align:left}.op_new_video_tvplay_tiebasec_item_rate{font-size:.92em;color:#666;width:100px;height:25px;overflow:hidden}.op_new_video_tvplay{%*i*%}_tieba_info{float:right;color:#666;margin-left:10px;margin-right:5px}.op_new_video_tvplay_tieba_info strong{color:#333}.op_new_video_tvplay_baike_content dt{font-size:1.07em;margin:0;margin-bottom:8px}.op_new_video_tvplay_baike_content dd{line-height:22px;margin:0}dl.op_new_video_tvplay_baike_content{margin:0}.op_new_video_tvplay_baike_other_ep{font-size:1em;margin-top:5px;font-family:arial}.op_new_video_tvplay_baike_other_ep span{float:left;color:#03c}.op_new_video_tvplay_baike_other_ep span a{{%*i*%}font-size:1em}.op_new_video_tvplay_baike_other_ep .op_new_video_tvplay_baike_other_ep_split{padding:0 4px}.op_new_video_tvplay_baike_other_ep span .op_new_video_tvplay_split_last{background:0}.op_new_video_tvplay_baike_more{font-size:.92em}.op_new_video_tvplay_eppicker{background-color:#f8f8f8;width:100%;*margin-top:-3px}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab,.op_newvideotvplaytab_cont ul li b{background:url("http://www.baidu.com/aladdin/img/newvideotvplay/tab_bg.gif") no-r{%*i*%}epeat}.op_newvideotvplaytabs{width:100%;position:relative;font-size:1em;margin-top:0}.op_newvideotvplaytabs .op_newvideotvplayvideo_menu{padding-left:25px;background:url("http://www.baidu.com/aladdin/img/newvideotvplay/tab_bg.gif") repeat-x 0 -30px}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab{background-position:0 -65px;display:inline-block;height:26px;line-height:26px;padding:0 11px;color:#959595}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab1{background-position:-{%*i*%}2px -65px}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab_act{background-position:0 -107px;border-right:1px solid #e6e6e6}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab_next{background-position:0 -30px;background-color:#f8f8f8}.op_newvideotvplayvideo_menu span.op_newvideotvplay_video_tab_span{display:inline-block;height:26px;line-height:26px;text-decoration:none;color:#959595;cursor:pointer}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab_act .op_newvideotv{%*i*%}play_video_tab_span{color:#333}.op_newvideotvplayvideo_menu b{display:inline-block;height:26px;line-height:26px;padding-left:23px;font-weight:normal}.op_newvideotvplayvideo_menu span.op_newvideotvplayvideo_tab_act b{font-weight:bold}.op_newvideotvplaytab_conts{background-color:#f8f8f8;padding-bottom:0}.op_newvideotvplaytab_conts .op_newvideotvplaytab_cont{display:none}.op_newvideotvplaytab_conts .op_newvideotvplaytab_cur_cont{display:block}.op_newvideotvplaytab_cont ul{margin:0;padding:7px 0 0 1{%*i*%}5px;list-style:none;display:block}.op_newvideotvplaytab_cont ul li{margin:0;list-style:none;float:left;width:62px;line-height:23px}.op_newvideotvplaytab_cont ul li a,.op_newvideotvplaytab_cont ul li span{float:left}.op_newvideotvplaytab_cont ul li b{display:block;width:15px;height:17px;float:left;background-position:-50px 0;position:relative;top:-3px;left:0}.op_newvideotvplaytab_cont .op_newvideotvplayvideo_more{clear:both;margin:0 0 0 15px;padding:7px 0 0 0;font-family:arial;font-size:1em}.op_n{%*i*%}ewvideotvplaytab_cont .op_newvideotvplayvideo_more{padding:5px 0 0 0}.op_newvideotvplaytab_conts:after,.op_newvideotvplaytab_cont ul:after{content:"\0020";display:block;height:0;clear:both;visibility:hidden}.op_newvideotvplaytab_cont .op_new_video_tvplay_video_hideul{display:none}.op_new_video_tvplay_video_more{height:38px;margin:0;padding:0 0 0 15px;color:#00c;font-size:1em;font-weight:bold;position:relative;cursor:pointer;text-decoration:underline;clear:both}.op_new_video_tvplay_video_more .op{%*i*%}_new_video_tvplay_video_more_up{display:none;clear:both;padding:10px 0 0 0}.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_down{padding:10px 0 0 0;clear:both}.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_upimg,.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_downimg{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) no-repeat;display:block;float:left;width:14px;height:13px;margin-top:3px}.op_new_video_tvplay_video_mor{%*i*%}e .op_new_video_tvplay_video_more_upimg{background-position:-18px -24px}.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_downimg{background-position:0 -24px}.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_upcont,.op_new_video_tvplay_video_more .op_new_video_tvplay_video_more_downcont{position:relative;top:-3px;margin-left:5px}.op_new_video_tvplay_video_iqiyi{height:32px;font-weight:normal}.op_new_video_tvplay_video_iqiyi a{padding-left:23px;background:url('http://l{%*i*%}ist.video.baidu.com/logo/iqiyi.gif') no-repeat}.op_new_video_tvplay_video_juhe_conts{padding:0}.op_new_video_tvplay_video_juhe_conts .op_new_video_tvplay_video_juhe_cont{display:none}.op_new_video_tvplay_video_juhe_conts .op_new_video_tvplay_video_juhe_curcont{display:block;color:#666}.op_new_video_tvplay_video_juhe_menu{background-color:#fcfcfc;padding:0 0 12px 15px;margin-top:10px;display:none;clear:both;border-top:1px solid #efefef;border-bottom:1px solid #efefef}.op_new_video_tvplay_video_ju{%*i*%}he_menu .op_new_video_tvplay_video_juhe_link{display:inline-block;margin:10px 29px 0 0;color:#00c;text-decoration:underline;cursor:pointer}.op_new_video_tvplay_video_juhe_menu .op_new_video_tvplay_video_juhe_cur_link{color:#333;text-decoration:none;cursor:text}.op_new_video_tvplay_video_juhe_conts .op_new_video_tvplay_video_ul{zoom:1}</style><div class="click-parent-reward" urdata="{pid:'video',type:'tvplay'}"> <div class="op_new_video_tvplay_left"> <ul>{%*模块动态排序显示*%}{%if !$tplData.index%}{%$tplData.index ='video,baike,tieba'%}{%/if%}{%$temp_left_info[] = 'video'%}{%if $tplData.tieba[0].title != '' %}{%$temp_left_info[] = 'tieba'%}{%/if%}{%if $tplData.baike[0]!=''%}{%$temp_left_info[] = 'baike'%}{%/if%} {%$temp_left_mods=['video','baike','tieba']%}{%foreach explode(',',$tplData.index) as $item%} {%if $item != '' && in_array($item, $temp_left_mods, true)%} {%call name="fe_fn_new_video_tvplay_{%$item%}"%} {%/if%} {%/foreach%} </ul> <div class="op_new_video_tvplay_bottom">以上信息由百度整合提供</div> {%if $tplData.tiebaResult && $tplData.tiebaResult[0].title != ''%} <br> <div> <h3 class="t"><a target="_blank" href="{%$tplData.tiebaResult[0].link%}" >{%$tplData.tiebaResult[0].title|limitlen:50|highlight:0%}</a></h3> <div> <font size="-1"> {%$tplData.tiebaResult[0].abstract|highlight:0%} <br><font color="#008000">{%$tplData.tiebaResult[0].showurl%}</font> <br> </font> </div> </div> {%/if%} </div></div><script data-compress="on">A.setup({"index":"{%if $tplData.index !=''%}{%$tplData.index%}{%else%}video{%/if%}"});</script><script>A.init(function(){var T = A.baidu, _this = this;T.each(_this.q("op_newvideotvplayvideo_tab"),function(obj,index){T.on(obj,"click",function(oEvent){T.each(_this.q("op_newvideotvplayvideo_tab"),function(objtemp,indextemp){T.removeClass(objtemp,"op_newvideotvplayvideo_tab_act");T.removeClass(objtemp,"op_newvideotvplayvideo_tab_next");});T.each(_this.q("op_newvideotvplaytab_cont"),function(objtemp,indextemp){T.removeClass(objtemp,"op_newvideotvplaytab_cur_cont");if(index==indext{%*i*%}emp){T.addClass(objtemp,"op_newvideotvplaytab_cur_cont");}});T.addClass(obj,"op_newvideotvplayvideo_tab_act");if(T.dom.next(obj)){T.addClass(T.dom.next(obj),"op_newvideotvplayvideo_tab_next");}T.each(_this.q("op_new_video_tvplay_video_more_up"),function(obj,index){obj.click();});});});T.each(_this.q("op_new_video_tvplay_video_more_down"),function(obj,index){T.on(obj,"click",function(oEvent){T.each(_this.q("op_new_video_tvplay_video_juhe_curcont"),function(juheObj,index2){if(index==index2){T.each{%*i*%}(T.dom.children(juheObj),function(ulobj,index3){if(ulobj.tagName=="UL"){ulobj.style.display="block";}});}});T.each(_this.q("op_new_video_tvplay_video_juhe_menu"),function(menuobj,index2){if(index==index2){menuobj.style.display="block";}});T.each(_this.q("op_new_video_tvplay_video_more_down"),function(downobj,index2){if(index==index2){downobj.style.display="none";}});T.each(_this.q("op_new_video_tvplay_video_more_up"),function(upobj,index2){if(index==index2){upobj.style.display="block";}});});});{%*i*%}T.each(_this.q("op_new_video_tvplay_video_more_up"),function(obj,index){T.on(obj,"click",function(oEvent){T.each(_this.q("op_new_video_tvplay_video_juhe_curcont"),function(juheObj,index2){if(index==index2){T.each(T.dom.children(juheObj),function(ulobj,index3){if(ulobj.tagName=="UL" && index3!=0){ulobj.style.display="none";}});}});T.each(_this.q("op_new_video_tvplay_video_juhe_menu"),function(menuobj,index2){if(index==index2){menuobj.style.display="none";}});T.each(_this.q("op_new_video_tvplay_vi{%*i*%}deo_more_down"),function(downobj,index2){if(index==index2){downobj.style.display="block";}});T.each(_this.q("op_new_video_tvplay_video_more_up"),function(upobj,index2){if(index==index2){upobj.style.display="none";}});});});T.each(_this.q("op_new_video_tvplay_video_juhe_link"),function(obj,index){T.on(obj,"click",function(oEvent){if(!T.dom.hasClass(obj,"op_new_video_tvplay_video_juhe_cur_link")){var objName=obj.getAttribute("name");var nameIndex=objName.substring(objName.length-1);var menudiv=obj{%*i*%}.parentNode;var juheContsDiv=menudiv.previousSibling;while(juheContsDiv.nodeType!=1){juheContsDiv=juheContsDiv.previousSibling;}T.each(T.dom.children(menudiv),function(objtemp,index2){if(T.dom.hasClass(objtemp,"op_new_video_tvplay_video_juhe_cur_link")){T.dom.removeClass(objtemp,"op_new_video_tvplay_video_juhe_cur_link");}});T.dom.addClass(obj,"op_new_video_tvplay_video_juhe_cur_link");T.each(T.dom.children(juheContsDiv),function(obj2,index2){if(T.dom.hasClass(obj2,"op_new_video_tvplay_video_juh{%*i*%}e_cont")){T.dom.removeClass(obj2,"op_new_video_tvplay_video_juhe_curcont");if(index2==nameIndex){T.dom.addClass(obj2,"op_new_video_tvplay_video_juhe_curcont");T.each(T.dom.children(obj2),function(obj3,index3){if(T.dom.hasClass(obj3,"op_new_video_tvplay_video_ul")){T.dom.removeClass(obj3,"op_new_video_tvplay_video_hideul");}});}}});}});});});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}