{%extends 'c_base.tpl'%} {%block name='content'%}<style type="text/css" data-merge>.op_zx_renwu_music{overflow:hidden;background-color:#fafafa;padding:15px 10px;margin-bottom:10px;margin-right:1px}.op_zx_renwu_music a,.op_zx_renwu_music a em{text-decoration:none}.op_zx_renwu_music a:hover,.op_zx_renwu_music a:hover em{text-decoration:underline}.op_zx_renwu_music table{border-collapse:collapse}.op_zx_renwu_music td{padding:0;vertical-align:top}.op_zx_renwu_music h2{font-size:1.1em;font-weight:bold;line-height:30px;margin:0 0 5px}.op_zx_renwu_mu{%*i*%}sic h2 a,.op_zx_renwu_music h2 a em{text-decoration:underline}.op_zx_renwu_music_list{width:100%;margin-bottom:5px}.op_zx_renwu_music_list th{height:28px;text-align:left;font-weight:normal;font-size:.9em;padding:0 0 10px 0;border-bottom:dotted 1px #d2d2d2;color:#666}.op_zx_renwu_music_list td{vertical-align:middle;height:32px;border-bottom:dotted 1px #d2d2d2}.op_zx_renwu_music_list_hot{width:100px;height:10px;overflow:hidden}.op_zx_renwu_music_list_hot div{height:10px;background-color:#e5e5e5}.o{%*i*%}p_zx_renwu_music_playbutton,.op_zx_renwu_music_playbutton span,.op_zx_renwu_music_list_play,.op_zx_renwu_music_list_down{background:url("http://www.baidu.com/aladdin/img/zhixin/sprites2-8.png") no-repeat}.op_zx_renwu_music_list_play{background-position:-231px 1px;padding:4px 8px}.op_zx_renwu_music_list_play:hover{background-position:-134px 1px;text-decoration:none!important}.op_zx_renwu_music_list_down{background-position:-248px 1px;padding:4px 8px}.op_zx_renwu_music_list_down:hover{background-p{%*i*%}osition:-160px 1px;text-decoration:none!important}.op_zx_renwu_music_list_name{font-size:1.1em}.op_zx_renwu_music_playbutton,.op_zx_renwu_music_playbutton span{line-height:26px;display:inline-block}.op_zx_renwu_music_playbutton:hover,.op_zx_renwu_music_playbutton:hover span{text-decoration:none!important}.op_zx_renwu_music_playbutton{background-position:0 -22px;cursor:pointer;margin-right:10px}.op_zx_renwu_music_playbutton span{margin-left:24px;padding-right:15px;background-position:right -22px;{%*i*%}color:#fff}.op_zx_renwu_music_number{margin:0 5px}.op_zx_renwu_music_header h2{float:left}.op_zx_renwu_music_listennumber{float:right;font-size:1em;line-height:30px}.op_zx_renwu_music_more{font-size:.9em}.op_zx_renwu_music_list_index{margin:0 10px}</style><div class="op_zx_renwu_music"> <div class="op_zx_renwu_music_header"> <h2><a target="_blank" href="{%$tplData.link%}">{%$tplData.word|highlight:0%}的音乐</a></h2> {%if $tplData.listennumber%} <p class="op_zx_renwu_music_listennumber">听众：<strong>{%$tplData.listennumber%}</strong></p> {%/if%} <div style="height:0px;width:0px;overflow:hidden;clear:both"></div> </div> <table class="op_zx_renwu_music_list"> <tr> <th colspan="3"> <a class="op_zx_renwu_music_playbutton" href="{%$tplData.playlink%}" target="_blank"><span>播放<strong>Ta</strong>的热门歌曲</span></a> {%$tempDataNotFirst=false%} {%foreach $tplData.number as $item%} {%if isset($item.count)&&$item.count>0%} {%if $tempDataNotFirst%}|{%/if%} <a href="{%$item.link%}" target="_blank" class="op_zx_renwu_music_number">{%$item.text%}({%$item.count%})</a> {%$tempDataNotFirst=true%} {%/if%} {%/foreach%} </th><th>热度</th><th>播放</th><th>下载</th> </tr> {%foreach $tplData.list as $item%} {%if $item@index>2%}{%break%}{%/if%} <tr> <td><span class="op_zx_renwu_music_list_index">{%$item@index+1%}</span></td> <td><a href="{%$item.namelink%}"  target="_blank" class="op_zx_renwu_music_list_name" title="{%$item.name%}">{%$item.name|limitlen:30%}</a></td> <td> {%if $item.albumlink%} <a href="{%$item.albumlink%}" target="_blank" class="op_zx_renwu_music_list_album" title="{%$item.album%}">{%$item.album|limitlen:30%}</a> {%/if%} </td> <td><div class="op_zx_renwu_music_list_hot"><div style="width:{%$item.hot%}%;"></div></div></td> <td width="50"><a href="{%$item.playlink%}" target="_blank" class="op_zx_renwu_music_list_play">&nbsp;</a></td> <td width="50"><a href="{%$item.downlink%}" target="_blank" class="op_zx_renwu_music_list_down">&nbsp;</a></td> </tr> {%/foreach%} </table> {%if $tplData.morelink%} <a target="_blank" href="{%$tplData.morelink%}" class="op_zx_renwu_music_more">更多{%$tplData.word|highlight:0%}的音乐&gt;&gt;</a> {%/if%}</div>{%/block%}