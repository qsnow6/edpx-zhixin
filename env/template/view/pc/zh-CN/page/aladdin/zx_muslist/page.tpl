{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$escaped_query = implode('',$tplData.QueryTags)|cat:'歌曲'%} {%$escaped_query = $extData.OriginQuery%} {%$headtitlesuffix = "在线试听正版歌曲免费下载_百度音乐"%} {%$tplData.title = $escaped_query|cat:$headtitlefix|cat:$headtitlesuffix%} {%if !$tplData.showurl%} {%$tplData.showurl = 'music.baidu.com/'%} {%/if%}{%/block%}{%block name='content'%}<div class="op-zx-muslist"> <div class="op-zx-muslist-list"> <table class="c-table"> <thead> <tr> <th><input class="op-zx-muslist-checkall OP_LOG_BTN" type="checkbox" checked=true/></th> <th>全选</th> <th colspan="2"> <a class="c-btn op-zx-muslist-playbutton" href="javascript:;"><i class="c-icon c-icon-play-blue c-gap-icon-right-small"></i>播放选中歌曲</a> </th><th>播放</th><th>歌词</th><th>下载</th> </tr> </thead> <tbody> {%foreach $tplData.result as $item%} {%if $item@index > 4 %}{%break%}{%/if%} <tr class="op-zx-musalbum-list-song"> <td width="20"><input class="op-zx-muslist-checkbox OP_LOG_BTN" songid="{%$item.id%}" type="checkbox" checked=true/></td> <td width="30"><span class="op-zx-muslist-list-index">{%if $item@index < 9 %}0{%/if%}{%$item@index+1%}</span></td> <td width="200"> <div class="op-zx-muslist-list-name"> <a href="{%$item.url|cat:'?fm=altg8'%}"  target="_blank" title="{%$item.name%}"> {%$item.name|limitlen:18%} </a> {%if $item.isnew == '1'%} <span class="c-text c-text-danger op-zx-muslist-list-new">新</span> {%/if%} </div> </td> <td width="160"> {%$singers = explode(',',$item.singer)%} {%$singerurlprefix = 'http://music.baidu.com/'%} {%$singerids = explode(',',$item.singerid)%} {%if !$singers[0]%}--{%/if%} {%foreach $singers as $ls%} {%if $singerids[$ls@index]%} {%$singerurl = $singerurlprefix|cat:'artist/'|cat:$singerids[$ls@index]|cat:'?fm=altg8'%} {%elseif $ls%} {%$singerurl = $singerurlprefix|cat:'search?key='|cat:$ls|cat:'&fm=altg8'%} {%/if%} {%if $ls@index > 2%}{%break%}{%/if%} {%if $ls@index > 0%}/ {%/if%}{%if $ls%}{%if $singerurl%}<a title="{%$ls%}" target="_blank" href="{%$singerurl%}" class="op-zx-mussong-singer">{%$ls|limitlen:10|escape%}</a>{%else%}<span title="{%$ls%}">{%$ls|limitlen:10|escape%}</span>{%/if%}{%/if%} {%/foreach%} </td> <td width="50"><a href="javascript:;" class="c-icon c-icon-play-circle op-zx-muslist-list-play" songid="{%$item.id%}" title="播放">&nbsp;</a></td> {%$lrcurl = "http://music.baidu.com/song/"|cat:$item.id|cat:"?fm=altg8#song_lyric"%} <td width="50"><a href="{%$lrcurl%}" target="_blank" class="c-icon c-icon-lyric op-zx-muslist-list-lrc" title="歌词">&nbsp;</a></td> {%$downloadurl = "http://music.baidu.com/song/"|cat:$item.id|cat:"/download?fm=altg8"%} <td width="50"><a href="{%$downloadurl%}" target="_blank" class="c-icon c-icon-download op-zx-muslist-list-down" title="下载">&nbsp;</a></td> </tr> {%/foreach%} </tbody> </table> {%if $tplData.url && count($tplData.result)>5%} <div class="c-gap-top"><a target="_blank" href="{%$tplData.url%}" class="op-zx-muslist-list-more">查看更多{%$escaped_query|highlight:0%}&gt;&gt;</a></div> {%/if%} </div></div><script >
    A.setup('hotsongs','{%$tplData.hotsongs%}');
</script>{%/block%}