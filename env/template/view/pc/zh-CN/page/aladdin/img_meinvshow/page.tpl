{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$showUrl="image.baidu.com"%}{%$sourceData=[]%}{%$queryWord=$tplData.key%}{%$tplData.title="`$queryWord`_真人美女视频互动_百度图片真人秀场"%}{%$encoded_word=$queryWord|escape:url%}{%/block%}{%block name='content'%}<div class="c-row">{%foreach from=$tplData.list item=cellItem name=cellName%}<div class="c-span6 {%if $cellItem@last%}c-span-last{%/if%}"> <a href="{%$cellItem.link1|escape:none%}" class="op-img-show-con" target="_blank"> <img class="c-img c-img6" src="{%$cellItem.imgSrc|escape:none%}" alt=""><div class="op-img-show-footnote-mask">&nbsp</div><div class="op-img-show-footnote"> <span class="op-img-show-footnote-left">{%$cellItem.name|escape:none%}</span></div></a><a target="_blank" href="{%$cellItem.link2|escape:none%}" class="c-gap-top-small op-img-show-mini-link" title=""> <em>{%$queryWord|escape:none%}</em> {%$cellItem.title|escape:none%}</a></div>{%/foreach%}</div><div class="c-gap-top-small"><a href="http://image.baidu.com/channel?c=%E7%9C%9F%E4%BA%BA%E7%A7%80%E5%9C%BA&fr=aladdin" target="_blank">查看更多真人视频互动&gt&gt</a></div>{%/block%}