{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%if $tplData.link&&$tplData.word%} {%$tplData.url=$tplData.link%} {%$tplData.title="`$tplData.word`的音乐"%} {%/if%}{%/block%}{%block name='content'%}<div class="op_music_kv"> <table class="op_music_kv_list c-table"> <tr> <th colspan="2"> <span><a class="c-btn c-btn-primary" href="{%$tplData.playlink%}" target="_blank">播放TA的热门歌曲</a></span> </th> <th class="op_a_underline">{%$tempDataNotFirst=false%} {%foreach $tplData.number as $item%}{%if isset($item.count)&&$item.count>0%}{%if $item@index > 0%}<span class="c-gap-left-small c-gap-right-small">|</span>{%/if%}<a href="{%$item.link%}" target="_blank" class="op_music_kv_number">{%$item.text%}({%$item.count%})</a>{%$tempDataNotFirst=true%}{%/if%}{%/foreach%} </th> <th>热度</th><th>播放</th><th>下载</th> </tr> {%foreach $tplData.list as $item%} {%if $item@index>2%}{%break%}{%/if%} <tr> <td>{%$item@index+1%}</td> <td><a href="{%$item.namelink%}"  target="_blank" title="{%$item.name%}">{%$item.name|limitlen:30%}</a></td> <td> {%if $item.albumlink%} <a href="{%$item.albumlink%}" target="_blank" class="op_zx_renwu_music_list_album" title="{%$item.album%}">{%$item.album|limitlen:30%}</a> {%/if%} </td> <td><div class="op_music_kv_hot"><div style="width:{%$item.hot%}%;"></div></div></td> <td width="50"><a href="{%$item.playlink%}" target="_blank" class="c-icon c-icon-play-circle"></a></td> <td width="50"><a href="{%$item.downlink%}" target="_blank" class="c-icon c-icon-download"></a></td> </tr> {%/foreach%} </table> {%if $tplData.morelink%} <a target="_blank" href="{%$tplData.morelink%}" class="c-gap-top-small op_music_kv_more">更多{%$tplData.word|highlight:0%}的音乐&gt;&gt;</a> {%/if%}</div>{%/block%}