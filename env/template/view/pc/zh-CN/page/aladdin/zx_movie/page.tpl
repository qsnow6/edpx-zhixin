{%extends 'base_div.tpl'%} {%block name='content'%}<div class="op_zx_movie_main"><div class="op_zx_movie_info"> <a target="_blank" href="{%$tplData.url%}" class="op_zx_movie_postera"><img class="op_zx_movie_poster" src="{%$tplData.poster%}"><span class="op_zx_movie_imgborder"></span></a> {%if $tplData.videoPlay && $tplData.videoPlay[0].link != ''%} <a target="_blank" href="{%$tplData.videoPlay[0].link%}" class="op_zx_movie_playnow"></a> {%/if%} <div class="op_zx_movie_clearfix"> <h3><a target="_blank" href="{%$tplData.url%}">{%$tplData.title|limitlen:40|highlight:0%}</a></h3> {%if $tplData.releaseTime != '' || $tplData.rate[0].num != ''%} <p style="margin:2px 0"> {%if $tplData.releaseTime != ''%}{%$tplData.releaseTime%}{%/if%} {%if $tplData.rate[0].num != ''%}{%if $tplData.releaseTime != ''%}<span class="op_zx_movie_split">|</span>{%/if%}<span>{%$tplData.rate[0].tip%}</span><span style="color:#e82100">{%$tplData.rate[0].num%}</span>{%/if%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.area != ''%} <p> <span>地&nbsp;区：</span> <span style="color:#333">{%$tplData.area%}</span> </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.type|count > 0%} <p> <span>类&nbsp;型：</span> {%foreach $tplData.type as $item%} {%if $item@index > 2%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link != ''%} <span><a target="_blank" href="{%$item.link%}">{%$item.name%}</a></span> {%else%} <span style="color:#333">{%$item.name%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.director|count > 0%} <p> <span>导&nbsp;演：</span> {%foreach $tplData.director as $item%} {%$directorLength = $directorLength + mb_strlen($item.name,'utf-8')%} {%if ($directorLength > 20 && $item@index > 0) || $item@index > 1%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.actor|count > 0%} <p> <span>主&nbsp;演：</span> {%$actorLength = 0%} {%foreach $tplData.actor as $item%} {%$actorLength = $actorLength + mb_strlen($item.name,'utf-8')%} {%if ($actorLength > 20 && $item@index > 0)|| $item@index > 4%}{%break%}{%/if%} {%if $item@index gte 1 %}<span class="op_zx_movie_split">|</span>{%/if%} {%if $item.link !=''%} <span><a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</a></span> {%else%} <span style="color:#333" title="{%$item.name%}" title="{%$item.name%}">{%$item.name|limitlen:40%}</span> {%/if%} {%/foreach%} </p> {%else%} {%$tempData.abstract = 1%} {%/if%} {%if $tplData.summary && $tplData.summary[0].content != ''%} <p> <span>简&nbsp;介：</span> <span style="color:#333;"> {%$alias=""%} {%if $tplData.allalias && (strpos($extData.OriginQuery, $tplData.originalname) === false)%} {%foreach $tplData.allalias as $item%} {%if strpos($extData.OriginQuery, $item) !== false%} {%$alias = $item%} {%/if%} {%/foreach%} {%/if%} {%$aliasLen = 0%} {%if $alias%} {%$aliasLen = (strlen($alias) + mb_strlen($alias,'utf-8'))/2 + 8%} （别名：<em>{%$alias|escape:'html'%}</em>） {%/if%} {%if $tempData.abstract%} {%$tplData.summary[0].content|limitlen:(160-$aliasLen)|highlight:0%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(160-$aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-family:simsun;font-size:12px;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%else%} {%$tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen)|highlight:0%} {%if $tplData.summary[0].link != '' && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(102-$tmpData.aliasLen)%} <a target="_blank" href="{%$tplData.summary[0].link%}" style="font-family:simsun;font-size:12px;margin-left:8px;outline:none" hideFocus="hideFocus">更多&gt;&gt;</a> {%/if%} {%/if%} </span> </p> {%/if%} </div> </div>{%if $tplData.videoPlay%}<div class="op_zx_movie_info_play"> {%foreach $tplData.videoPlay as $item%} {%if $item@index > 3%}{%break%}{%/if%} {%if $item@first%} <div>来自：</div> {%else if $item@index == 1%} <div>更多：</div> {%/if%} <a target="_blank" href="{%$item.link%}"><div class="op_zx_movie_info_playicon"><div style="background-image:url({%$item.icon%});{%if $item@index==0%}color:#333;{%/if%}">{%$item.name%}</div></div></a> {%/foreach%}</div>{%/if%}</div>{%/block%}