{%extends 'base.tpl'%} {%block name='content'%}<style>.op_zx_movie_playnow,.op_zx_movie_info_playicon{background:url(http://www.baidu.com/aladdin/img/newvideo/newvideo-1.3.png) no-repeat}.op_zx_movie_morelink{font-size:14px;float:right;margin:1px 7px 3px 0}.op_zx_movie_postera{position:relative;width:130px;height:180px;overflow:hidden;display:block}.op_zx_movie_poster{width:130px;height:180px}.op_zx_movie_imgborder{position:absolute;top:0;left:0;border:1px solid #000;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block}.op_zx_mo{%*i*%}vie_postera .op_zx_movie_imgborder{width:128px;height:178px}.op_zx_movie_playnow{display:inline-block;width:130px;height:32px;margin-top:10px}.op_zx_movie_main{padding:15px;background:#f8f8f8;width:606px;position:relative;color:#666;overflow:hidden}.op_zx_movie_info h3{line-height:23px}.op_zx_movie_info div{position:absolute;top:13px;left:160px;width:450px}.op_zx_movie_info div p{line-height:23px;font-size:15px}.op_zx_movie_info h3{font-size:16px}.op_zx_movie_split{padding:0 4px;color:#cdcdcd}.o{%*i*%}p_zx_movie_info_play{position:absolute;top:200px;left:160px;width:450px;line-height:24px;margin-top:3px;padding:4px 4px 4px 0;font-size:15px}.op_zx_movie_info_play div{display:inline-block;float:left}.op_zx_movie_info_play div div{font-size:14px}.op_zx_movie_info_playicon{margin:2px 10px 0 0;background-position:0 -96px}.op_zx_movie_info_playicon div{height:20px;line-height:20px;padding:0 5px 0 26px;padding-top:1px\9;border:1px solid #cdcdcd;color:#666;background:no-repeat 5px 2px;background:no-r{%*i*%}epeat 5px 1px/9}.op_zx_movie_info_play a{text-decoration:none;cursor:pointer}.op_zx_movie_clearfix:after{content:"\0020";display:block;height:0;clear:both;visibility:hidden}.op_zx_movie_clearfix{zoom:1}</style><div class="op_zx_movie_main"><div class="op_zx_movie_info"> <a target="_blank" href="{%$tplData.url%}" class="op_zx_movie_postera"><img class="op_zx_movie_poster" src="{%$tplData.poster%}"><span class="op_zx_movie_imgborder"></span></a> {%if $tplData.videoPlay && $tplData.videoPlay[0].link != ''%} <a target="_blank" href="{%$tplData.videoPlay[0].link%}" class="op_zx_movie_playnow"></a> {%/if%} <div class="op_zx_movie_clearfix"> <h3><a target="_blank" href="{%$tplData.url%}">{%$tplData.title|limitlen:40|highlight:0%}</a></h3> {%if $tplData.releaseTime != '' || $tplData.rate[0].num != ''%} <p style="margin:2px 0"> {%if $tplData.releaseTime != ''%}{%$tplData.releaseTime%}{%/if%} {%if $tplData.rate[0].num != ''%}{%if $tplData.releaseTime != ''%}<span class="op_zx_movie_split">|</span>{%/if%}<span>{%$tplData.rate[0].tip%}</span><span style="color:#e82100">{%$tplData.rate[0].num%}</span>{%/if%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.area != ''%} <p> <span>地&nbsp;区：</span> <span style="color:#333">{%$tplData.area%}</span> </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.type|count > 0%} <p> <span>类&nbsp;型：</span> {%foreach $tplData.type as $item%} {%if $item@index > 2%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link != ''%} <span><a target="_blank" href="{%$item.link%}">{%$item.name%}</a></span> {%else%} <span style="color:#333">{%$item.name%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.director|count > 0%} <p> <span>导&nbsp;演：</span> {%foreach $tplData.director as $item%} {%$directorLength = $directorLength + mb_strlen($item.name,'utf-8')%} {%if ($directorLength > 20 && $item@index > 0) || $item@index > 1%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.actor|count > 0%} <p> <span>主&nbsp;演：</span> {%$actorLength = 0%} {%foreach $tplData.actor as $item%} {%$actorLength = $actorLength + mb_strlen($item.name,'utf-8')%} {%if ($actorLength > 20 && $item@index > 0)|| $item@index > 4%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.summary && $tplData.summary[0].content != ''%} <p> <span>简&nbsp;介：</span> <span style="color:#333;"> {%$tmpData.aliasLen = 0%} {%if $tplData.alias%} {%$tmpData.aliasLen = (strlen($tplData.alias) + mb_strlen($tplData.alias,'utf-8'))/2 + 8%} 别名（<em>{%$tplData.alias%}</em>） {%/if%} {%if $tempData.abstract%} {%$tplData.summary[0].content|limitlen:(150-$tmpData.aliasLen)%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(150-$tmpData.aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-size:14px;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%else%} {%$tplData.summary[0].content|limitlen:(92-$tmpData.aliasLen)%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(92-$tmpData.aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-size:14px;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%/if%} </span> </p> {%/if%} </div> </div>{%if $tplData.videoPlay%}<div class="op_zx_movie_info_play"> {%foreach $tplData.videoPlay as $item%} {%if $item@index > 3%}{%break%}{%/if%} {%if $item@first%} <div>来自：</div> {%else if $item@index == 1%} <div>更多：</div> {%/if%} <a target="_blank" href="{%$item.link%}"><div class="op_zx_movie_info_playicon"><div style="background-image:url({%$item.icon%});{%if $item@index==0%}color:#333;{%/if%}">{%$item.name%}</div></div></a> {%/foreach%}</div>{%/if%}</div>{%/block%}