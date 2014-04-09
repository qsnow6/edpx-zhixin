{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%*公用CSS部分*%}<style type="text/css">.op_zx_renwu{width:635px;overflow:hidden}.op_zx_renwu a,.op_zx_renwu a em{text-decoration:none}.op_zx_renwu a:hover,.op_zx_renwu a:hover em{text-decoration:underline}.op_zx_renwu table{border-collapse:collapse}.op_zx_renwu td{padding:0;vertical-align:top}.op_zx_renwu h2{font-size:1.07em;font-weight:bold;line-height:30px;margin:0 0 5px}.op_zx_renwu h2 a,.op_zx_renwu h2 a em{text-decoration:underline}.op_zx_renwu_baike,.op_zx_renwu_news,.op_zx_renwu_weibo,.op_zx_renwu_photo,{%*i*%}.op_zx_renwu_tieba,.op_zx_renwu_video,.op_zx_renwu_music{background-color:#fafafa;padding:1em 10px;margin-bottom:10px}.op-zx-copyright{color:#666;margin-top:5px;font-size:.93em}.op-zx-copyright i{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") -40px 0 no-repeat;padding-left:20px}</style>{%*点击统计*%}{%function name=fe_fn_zx_clicklog mod=""%} {%$tempData=$mod%} data-click='{"rsv_zhixin_tq":"zx_renwu_{%$tempData%}_{%$tplData.index%}"}'{%/function%}{%*百科模块*%}{%function name=fe_fn_zx_mod_baike%}{%if $tplData.baike%}<style type="text/css">.op_zx_renwu_baike_photo{float:left}.op_zx_renwu_baike_photo a,.op_zx_renwu_baike_photo a img{width:145px;height:160px;display:block;overflow:hidden;text-decoration:none!important}.op_zx_renwu_baike_photo_bluebg{background-color:#167beb;height:24px;display:block;position:relative;top:-24px;opacity:.7;filter:alpha(opacity=70)}.op_zx_renwu_baike_photo_text{font-size:1em;display:block;position:relative;top:-45px;text-align:center;color:#fff}.op_zx_renwu_baike_content{float:ri{%*i*%}ght;width:450px}.op_zx_renwu_baike_content_subject{font-size:1.07em}.op_zx_renwu_baike_content p{font-size:.93em;color:#333;line-height:22px}.op_zx_renwu_baike_content_parts{line-height:20px;margin-top:5px}.op_zx_renwu_baike_content_tieba{font-size:1em;margin-right:5px}.op_zx_renwu_baike_content_tieba_icon{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites-8.png") -22px 1px no-repeat;display:inline-block;width:17px;height:17px}.op_zx_renwu_baike_content_tieba_count{color:#666;font-s{%*i*%}ize:1em}.op_zx_renwu_baike_content_tieba_count strong{color:#000;font-size:1.07em}.op_zx_renwu_baike_content_footer{padding:5px 0;border-top:dotted #d2d2d2 1px;margin-top:10px}.op_zx_renwu_baike_content_otherlink{font-size:1em;margin-right:10px}.op_zx_renwu_baike_content_otherlink img{width:1.07em;height:1.07em;vertical-align:middle;position:relative;top:-1px;margin-right:3px}</style><div class="op_zx_renwu_baike" {%fe_fn_zx_clicklog mod="baike"%}> <div class="op_zx_renwu_baike_photo"> {%if $tplData.baike.photo%} <a target="_blank" href="{%$tplData.baike.photo[0].link%}"> <img src="{%$tplData.baike.photo[0].src%}" /> {%if $tplData.baike.photo[0].number%} <span class="op_zx_renwu_baike_photo_bluebg"></span> <span class="op_zx_renwu_baike_photo_text">图片：{%$tplData.baike.photo[0].number%}张</span> {%/if%} </a> {%/if%} </div> <div class="op_zx_renwu_baike_content"> <h2><a class="op_zx_renwu_baike_content_subject" target="_blank" href="{%$tplData.baike.link%}">{%$tplData.word|highlight:0%}_百度百科</a></h2> {%if $tplData.baike.born || $tplData.baike.job%} <p> {%if $tplData.baike.born%} <span>出生：{%preg_replace("/\[url\s(.*?)\](.*?)\[\/url\]/", "<a href=\"$1\" target=\"_blank\">$2</a>", $tplData.baike.born)%} </span> {%/if%} {%if $tplData.baike.job%} <span>{%if $tplData.baike.born%}&nbsp;&nbsp;&nbsp;&nbsp;{%/if%}职业：{%preg_replace("/\[url\s(.*?)\](.*?)\[\/url\]/", "<a href=\"$1\" target=\"_blank\">$2</a>", $tplData.baike.job)%} </span> {%/if%} </p> {%/if%} {%if $tplData.baike.text%} <p>{%$tplData.baike.text|limitlen:170|highlight:0%}<a target="_blank" href="{%$tplData.baike.link%}">&nbsp;查看百度百科&gt;&gt;</a></p> {%/if%} {%if $tplData.baike.part%} <p class="op_zx_renwu_baike_content_parts"> {%foreach $tplData.baike.part as $item%} <a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:14%}</a> {%if $item@index == 4%}{%break%}{%/if%} {%if !$item@last%}&nbsp;-&nbsp; {%/if%} {%/foreach%} </p> {%/if%} {%*由于需求反复，以下模块防止需求上再次要求展现，临时从逻辑上干掉*%} {%if false%} {%if $tplData.baike.tieba || $tplData.baike.iconlink%} <div class="op_zx_renwu_baike_content_footer"> {%if $tplData.baike.tieba%} <span class="op_zx_renwu_baike_content_tieba_icon">&nbsp;</span> <a href="{%$tplData.baike.tieba[0].link%}" class="op_zx_renwu_baike_content_tieba" target="_blank">{%$tplData.baike.tieba[0].name|highlight:0%}</a> {%if $tplData.baike.tieba[0].count%} <span class="op_zx_renwu_baike_content_tieba_count">（月活跃粉丝：<strong>{%$tplData.baike.tieba[0].count%}</strong>人）</span> {%/if%} {%/if%} {%foreach $tplData.baike.iconlink as $item%} <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_baike_content_otherlink"><img src="{%$item.src%}" />{%$item.name%}</a> {%/foreach%} </div> {%/if%} {%/if%} </div> <div style="clear:both"></div></div>{%/if%}{%/function%} {%*视频模块*%}{%function name=fe_fn_zx_mod_video%} {%if $tplData.video%}{%assign var="duration" value=$tplData.video.list[0]['duration']%}<style type="text/css">.op_zx_renwu_video_tags{font-size:1em;margin-bottom:10px}.op_zx_renwu_video_tags a{margin:0 5px}.op_zx_renwu_video_list_item{float:left;width:140px;padding-right:12px;text-align:center}.op_zx_renwu_video_old .op_zx_renwu_video_list_item{width:130px;padding-left:18px;padding-right:0}.op_zx_renwu_video_list_item_photo{display:inline-block;width:140px;height:105px;position:relative}.op_zx_renwu_video_old .op_zx_renwu_video_list_item_photo{width:120px;height:160px;padding:4px;{%*i*%}border:#dcdcdc 1px solid;background-color:#fff}.op_zx_renwu_video_list_item_photo img{width:140px;height:105px;display:inline-block}.op_zx_renwu_video_old .op_zx_renwu_video_list_item_photo img{width:120px;height:160px}.op_zx_renwu_video_list_item_name{font-size:.93em}.op_zx_renwu_video_new .op_zx_renwu_video_list_item_name{display:block;max-height:36px;line-height:18px;width:140px;overflow:hidden;text-overflow:ellipsis;_height:36px}.op_zx_renwu_video_old .op_zx_renwu_video_list_item_name{line-h{%*i*%}eight:30px}.op_zx_renwu_video_list_info{display:block;position:absolute;left:0;bottom:0;width:100%;height:20px;background-color:black;opacity:.7;filter:alpha(opacity=70)}.op_zx_renwu_video_list_duration{display:block;position:absolute;left:0;bottom:0;width:98%;height:20px;font-size:.93em;color:white;line-height:20px;text-align:right;background:url(http://www.baidu.com/aladdin/img/zhixin/icon-1.1.gif) -59px 2px no-repeat}.op_zx_renwu_video_list_item_number{font-size:.93em;width:90px;margin:0 auto{%*i*%}}.op_zx_renwu_video_list_item_number_score_orange,.op_zx_renwu_video_list_item_number_score_gray{background:url(http://www.baidu.com/aladdin/img/zdcar/op_zdcar_star_level-1.2.png) no-repeat 0 -0.93em;height:.93em}.op_zx_renwu_video_list_item_number_score_gray{width:75px;text-align:left;*margin-left:-20px}.op_zx_renwu_video_list_item_number_score_orange{background-position:0 -40px}.op_zx_renwu_video_list_item_number_score_gray span{position:absolute;margin:-3px 0 0 80px;color:#666}</style><div cl{%*i*%}ass="op_zx_renwu_video" {%fe_fn_zx_clicklog mod="video"%}> <h2><a target="_blank" href="{%$tplData.video.link%}">{%$tplData.word|highlight:0%}的视频</a></h2> <div class="op_zx_renwu_video_tags"> {%foreach $tplData.video.tag as $item%} <a href="{%$item.link%}" target="_blank">{%$item.name%}{%if $item.number%}({%$item.number%}){%/if%}</a> {%if !$item@last%}|{%/if%} {%/foreach%} </div> <div class="op_zx_renwu_video_list{%if $duration==""%} op_zx_renwu_video_old{%else%} op_zx_renwu_video_new{%/if%}"> {%foreach $tplData.video.list as $item%} {%if $item@index == 4%}{%break%}{%/if%} <div class="op_zx_renwu_video_list_item"> <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_video_list_item_photo"> <img src="{%if $duration%}{%$item.shortsrc%}{%else%}{%$item.src%}{%/if%}" />{%if $duration%} <span class="op_zx_renwu_video_list_info"></span> <span class="op_zx_renwu_video_list_duration">{%$item.duration%}</span>{%/if%} </a> <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_video_list_item_name" title="{%$item.text%}">{%if $duration%}{%if $item.text|string_display_len<32%}{%$item.text|limitlen:20|highlight:0%}{%else%}{%$item.text|limitlen:44|highlight:0%}{%/if%}{%else%}{%$item.text|limitlen:16%}{%/if%}</a> {%if !$duration%} <div class="op_zx_renwu_video_list_item_number"> {%if $tplData.video.sourcetype == "movie"%} <div class="op_zx_renwu_video_list_item_number_score_gray"> <span>{%$item.number%}</span> <div class="op_zx_renwu_video_list_item_number_score_orange" style="width:{%$item.number * 10%}%;"></div> </div> {%else%} {%$item.number|limitlen:16%} {%/if%} </div> {%/if%} </div> {%/foreach%} <div style="clear:both"></div> </div></div>{%/if%}{%/function%} {%*新闻模块*%}{%function name=fe_fn_zx_mod_news%} {%if $tplData.news%}<style type="text/css">.op_zx_renwu_news_content,.op_zx_renwu_news_content a{font-size:1em}.op_zx_renwu_news_content_right{padding:0 20px!important;line-height:20px}.op_zx_renwu_news_content_from{color:green}.op_zx_renwu_news_content_time{color:#666}</style><div class="op_zx_renwu_news" {%fe_fn_zx_clicklog mod="news"%}> <h2><a target="_blank" href="{%$tplData.news.link%}">{%$tplData.word|highlight:0%}的最新相关消息</a></h2> <table class="op_zx_renwu_news_content"> <tr> {%if $tplData.news.photo%} <td class="op_zx_renwu_news_content_left"> <a href="{%$tplData.news.photo[0].link%}" target="_blank"><img src="{%$tplData.news.photo[0].src%}" /></a> </td> {%/if%} <td class="op_zx_renwu_news_content_right"> {%foreach $tplData.news.list as $item%} <p> <a class="op_zx_renwu_news_content_subject" href="{%$item.link%}" target="_blank">{%$item.subject|limitlen:50|highlight:0%}</a> <span class="op_zx_renwu_news_content_from">{%$item.from%}</span> <span class="op_zx_renwu_news_content_time"> {%$temp = time()-$item.time%} {%if $temp < 3600%}1小时内{%elseif $temp < 86400%}{%(int)($temp/3600)%}小时前{%else%}{%(int)($temp/86400)%}天前{%/if%} </span> </p> {%if $item.text%} <p>{%$item.text|limitlen:160|highlight:0%}</p> {%/if%} {%/foreach%} </td> </tr> </table></div>{%/if%}{%/function%} {%*微博模块*%}{%function name=fe_fn_zx_mod_weibo%} {%if $tplData.weibo%}<style type="text/css">.op_zx_renwu_weibo_content_left{float:left}.op_zx_renwu_weibo_content_left img{width:48px;height:48px;border:#e3e3e3 solid 1px}.op_zx_renwu_weibo_content_left a{display:inline-block;width:50px;height:50px}.op_zx_renwu_weibo_content_right{float:left;margin-left:10px;width:550px}.op_zx_renwu_weibo_content_right p{font-size:1em;line-height:22px}.op_zx_renwu_weibo_content_right_name{font-size:1.07em;color:#c00}.op_zx_renwu_weibo_content_right_v img{vertical-align:middle}.op_zx{%*i*%}_renwu_weibo_content_right_mood{color:#808080;font-size:.93em}.op_zx_renwu_weibo_content_right_res img{position:relative;top:3px;margin-left:3px}.op_zx_renwu_weibo_content_right_from,.op_zx_renwu_weibo_content_right_date{color:#666}</style><div class="op_zx_renwu_weibo" {%fe_fn_zx_clicklog mod="weibo"%}> <h2><a target="_blank" href="{%$tplData.weibo.link%}">{%$tplData.word|highlight:0%}的微博</a></h2> <div class="op_zx_renwu_weibo_content"> <div class="op_zx_renwu_weibo_content_left"> <a href="{%$tplData.weibo.link%}" target="_blank"><img src="{%$tplData.weibo.photo%}" /></a> </div> <div class="op_zx_renwu_weibo_content_right"> <p> <a href="{%$tplData.weibo.link%}" target="_blank" class="op_zx_renwu_weibo_content_right_name">{%$tplData.weibo.name%}</a> {%if $tplData.weibo.v%} <a href="{%$tplData.weibo.v[0].link%}" target="_blank" class="op_zx_renwu_weibo_content_right_v"> <img src="{%$tplData.weibo.v[0].src%}" /> </a> {%/if%} {%if $tplData.weibo.mood%} <span class="op_zx_renwu_weibo_content_right_mood" title="{%$tplData.weibo.mood%}">{%$tplData.weibo.mood|limitlen:60%}</span> {%/if%} </p> <p> <span class="op_zx_renwu_weibo_content_right_post"> {%preg_replace("/\[url\s(.*?)\](.*?)\[\/url\]/", "<a href=\"$1\" target=\"_blank\">$2</a>", $tplData.weibo.post|limit_ubburl:58)%} </span> {%if $tplData.weibo.res%} <a href="{%$tplData.weibo.res[0].link%}" target="_blank" class="op_zx_renwu_weibo_content_right_res"> [{%$tplData.weibo.res[0].text%}]<img src="{%$tplData.weibo.res[0].icon%}" /> </a> {%/if%} </p> <p> <span class="op_zx_renwu_weibo_content_right_date">{%$tplData.weibo.date%}</span> - <span class="op_zx_renwu_weibo_content_right_from">{%$tplData.weibo.from%}</span> - <a href="{%$tplData.weibo.postlink%}" target="_blank" class="op_zx_renwu_weibo_content_right_view">查看原文&gt;&gt;</a> </p> </div> <div style="clear:both"></div> </div></div>{%/if%}{%/function%} {%*图片模块*%}{%function name=fe_fn_zx_mod_photo%} {%if $tplData.photo%}<style type="text/css">.op_zx_renwu_photo_list{overflow:hidden;height:92px;width:600px}.op_zx_renwu_photo_list a{float:left;display:block;height:90px;overflow:hidden;border:#ccc solid 1px}.op_zx_renwu_photo_list img{display:block;height:90px}.op_zx_renwu_photo_more{font-size:1em;line-height:30px}</style><div class="op_zx_renwu_photo" {%fe_fn_zx_clicklog mod="photo"%}> <h2><a target="_blank" href="{%$tplData.photo.link%}">{%$tplData.word|highlight:0%}的图片</a></h2> <textarea class="op_zx_renwu_photo_data" style="display:none">{%json_encode($tplData.photo.list)%}</textarea> <div class="op_zx_renwu_photo_list"> <div style="clear:both"></div> </div> {%if $tplData.photo.number%} <a class="op_zx_renwu_photo_more" target="_blank" href="{%$tplData.photo.link%}">查看{%$tplData.photo.number%}张图片&gt;&gt;</a> {%/if%}</div>{%/if%}{%/function%} {%*贴吧模块*%}{%function name=fe_fn_zx_mod_tieba%} {%if $tplData.tieba%}<style type="text/css">.op_zx_renwu_tieba_header h2{float:left}.op_zx_renwu_tieba_header_right{float:right;color:#666;font-size:1em;line-height:30px}.op_zx_renwu_tieba_header_right strong{color:#000;font-size:1.07em}.op_zx_renwu_tieba_tags{font-size:.93em;border-bottom:dotted 1px #d2d2d2;margin-bottom:10px;padding-bottom:5px}.op_zx_renwu_tieba_list{width:96%;color:#666;font-size:1em}.op_zx_renwu_tieba_list_subject{font-size:1em}.op_zx_renwu_tieba_list_top,.op_zx_renwu_tieba_list_fine{background:{%*i*%}url("http://www.baidu.com/aladdin/img/zhixin/icon-1.1.gif") 0 3px no-repeat;padding:3px 9px}.op_zx_renwu_tieba_list_top{background-position:-24px 3px;padding:3px 1em}.op_zx_renwu_tieba_list td{height:24px}.op_zx_renwu_tieba_more{font-size:.93em}</style><div class="op_zx_renwu_tieba" {%fe_fn_zx_clicklog mod="tieba"%}> <div class="op_zx_renwu_tieba_header"> <h2><a target="_blank" href="{%$tplData.tieba.link%}">{%$tplData.word|highlight:0%}吧_百度贴吧</a></h2> {%if $tplData.tieba.peoplenumber || $tplData.tieba.postnumber%} <p class="op_zx_renwu_tieba_header_right"> {%if $tplData.tieba.peoplenumber%} 月活跃粉丝：<strong>{%$tplData.tieba.peoplenumber%}</strong>人 {%/if%} {%if $tplData.tieba.postnumber%} &nbsp;&nbsp;&nbsp;累计发贴：<strong>{%$tplData.tieba.postnumber%}</strong> {%/if%} </p> {%/if%} <div style="clear:both"></div> </div> {%if $tplData.tieba.tag%} <div class="op_zx_renwu_tieba_tags"> {%foreach $tplData.tieba.tag as $item%} <a href="{%$item.link%}" target="_blank">{%$item.name%}({%$item.number%})</a> {%if !$item@last%}&nbsp;&nbsp;|&nbsp;&nbsp;{%/if%} {%/foreach%} </div> {%/if%} <table class="op_zx_renwu_tieba_list"> {%foreach $tplData.tieba.post as $item%} <tr><td> <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_tieba_list_subject" title="{%$item.subject%}">{%$item.subject|limitlen:50|highlight:0%}</a> {%if $item.fine == "true"%} <span class="op_zx_renwu_tieba_list_fine">&nbsp;</span> {%/if%} {%if $item.top == "true"%} <span class="op_zx_renwu_tieba_list_top">&nbsp;</span> {%/if%} </td><td>点击：{%$item.click%}</td><td>回复：{%$item.reply%}</td></tr> {%/foreach%} </table> {%if $tplData.tieba.morelink%} <a target="_blank" href="{%$tplData.tieba.morelink%}" class="op_zx_renwu_tieba_more">更多{%$tplData.word|highlight:0%}吧的内容&gt;&gt;</a> {%/if%}</div>{%/if%}{%/function%} {%*音乐模块*%}{%function name=fe_fn_zx_mod_music%} {%if $tplData.music%}<style type="text/css">.op_zx_renwu_music_list{width:100%;margin-bottom:5px}.op_zx_renwu_music_list th{height:28px;text-align:left;font-weight:normal;font-size:.93em;padding:0 0 10px 0;border-bottom:dotted 1px #d2d2d2;color:#666}.op_zx_renwu_music_list td{vertical-align:middle;height:32px;border-bottom:dotted 1px #d2d2d2}.op_zx_renwu_music_list_hot{width:150px;height:10px;overflow:hidden}.op_zx_renwu_music_list_hot div{height:10px;background-color:#e5e5e5}.op_zx_renwu_music_playbutton,.op_zx_ren{%*i*%}wu_music_playbutton span,.op_zx_renwu_music_list_play,.op_zx_renwu_music_list_down{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") no-repeat}.op_zx_renwu_music_list_play{background-position:-231px 1px;padding:2px 8px}.op_zx_renwu_music_list_play:hover{background-position:-134px 1px;text-decoration:none!important}.op_zx_renwu_music_list_name{font-size:1.07em}.op_zx_renwu_music_playbutton,.op_zx_renwu_music_playbutton span{line-height:26px;display:inline-block}.op_zx_renwu{%*i*%}_music_playbutton:hover,.op_zx_renwu_music_playbutton:hover span{text-decoration:none!important}.op_zx_renwu_music_playbutton{background-position:0 -22px;cursor:pointer;margin-right:10px}.op_zx_renwu_music_playbutton span{margin-left:24px;padding-right:1em;background-position:right -22px;color:#fff}.op_zx_renwu_music_number{margin:0 5px}.op_zx_renwu_music_header h2{float:left}.op_zx_renwu_music_listennumber{float:right;font-size:1em;line-height:30px}.op_zx_renwu_music_more{font-size:.93em}.op_zx{%*i*%}_renwu_music_list_index{margin:0 10px}</style><div class="op_zx_renwu_music" {%fe_fn_zx_clicklog mod="music"%}> <div class="op_zx_renwu_music_header"> <h2><a target="_blank" href="{%$tplData.music.link%}">{%$tplData.word|highlight:0%}的音乐</a></h2> {%if $tplData.music.listennumber%} <p class="op_zx_renwu_music_listennumber">听众：<strong>{%$tplData.music.listennumber%}</strong></p> {%/if%} <div style="clear:both"></div> </div> <table class="op_zx_renwu_music_list"> <tr> <th colspan="3"> <a class="op_zx_renwu_music_playbutton" href="{%$tplData.music.playlink%}" target="_blank"><span>播放<strong>Ta</strong>的热门歌曲</span></a> {%foreach $tplData.music.number as $item%} <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_music_number">{%$item.text%}({%$item.count%})</a> {%if !$item@last%}|{%/if%} {%/foreach%} </th><th>热度</th><th>播放</th> </tr> {%foreach $tplData.music.list as $item%} <tr> <td><span class="op_zx_renwu_music_list_index">{%$item@index+1%}</span></td> <td><a href="{%$item.namelink%}"  target="_blank" class="op_zx_renwu_music_list_name" title="{%$item.name%}">{%$item.name|limitlen:30%}</a></td> <td> {%if $item.albumlink%} <a href="{%$item.albumlink%}" target="_blank" class="op_zx_renwu_music_list_album" title="{%$item.album%}">{%$item.album|limitlen:30%}</a> {%/if%} </td> <td><div class="op_zx_renwu_music_list_hot"><div style="width:{%$item.hot%}%;"></div></div></td> <td width="50"><a href="{%$item.playlink%}" target="_blank" class="op_zx_renwu_music_list_play">&nbsp;</a></td> </tr> {%/foreach%} </table> {%if $tplData.music.morelink%} <a target="_blank" href="{%$tplData.music.morelink%}" class="op_zx_renwu_music_more">更多{%$tplData.word|highlight:0%}的音乐&gt;&gt;</a> {%/if%}</div>{%/if%}{%/function%} {%*动态调用模块*%}<div class="op_zx_renwu"> {%$temp_mods=['baike','tieba','weibo','news','photo','music','video']%} {%$temp_indexArray=explode(',',$tplData.index)%} {%foreach $temp_indexArray as $item%} {%if in_array($item, $temp_mods, true)%} {%call name="fe_fn_zx_mod_{%$item%}"%} {%/if%} {%/foreach%} <div class="op-zx-copyright"><i>&nbsp;</i>以上信息由百度根据您的搜索词自动产生</div></div><script >
    A.init(function(){
       var __this = this;
       
       {%*按需加载图片模块JS*%}
       {%if in_array("photo", $temp_indexArray, true)%}
           (function(){
                var parent = __this.qq("op_zx_renwu_photo_list");
                if(!parent) return;
                var photodata  = new Function("return " + __this.qq("op_zx_renwu_photo_data").value)(),
                    cleardom   = parent.getElementsByTagName("div")[0],
                    photolinks = [];
                    width      = 0;
                for(var i = 0, p, a, img, item; item = photodata[i]; i++){
                    if(item.height < 90) continue;
                    p = item.width/item.height;
                    item.width = p * 90;
                    if(width + item.width + 7 > 680){
                        break;
                    }
                    width += item.width + 7;
                    img = document.createElement("img");
                    img.src= item.src;
                    a = document.createElement("a");
                    a.appendChild(img);
                    a.href = item.link;
                    a.target ="_blank";
                    a.style.width = img.style.width = item.width + "px";
                    item.a = a;
                    if(i){
                        a.style.marginLeft = "5px";   
                    }
                    photolinks.push(item);
                    parent.insertBefore(a, cleardom);
                }
                if(width > 600){
                     var cut = (width - 600)/photolinks.length;
                     for(var i = 0, item; item = photolinks[i]; i++){
                        item.a.style.width = item.width - cut + "px";
                     }
                 }
            })();
        {%/if%}
    });
</script><script>(function(win,doc){if(!win.Hunter || !Hunter.record) {win.Hunter = {tid: "655"};(doc.getElementsByTagName('head')[0]||body).appendChild(doc.createElement('script')).src='http://img.baidu.com/hunter/ham.js?st='+~(new Date()/864e5)}})(window,document);</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}