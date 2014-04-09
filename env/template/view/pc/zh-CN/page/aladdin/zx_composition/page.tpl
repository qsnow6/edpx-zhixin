{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$noContentWord = '抱歉，没有找到符合条件的结果，您可以更换一个筛选条件。'%}{%/block%}{%block name='content'%}<div class="c-border"> {%* tab 标签 *%} <div class="op-zx-composition-tab"> {%if $tplData.tab.title%} {%$tplData.tab = array( $tplData.tab )%} {%/if%} {%foreach $tplData.tab as $item%} <div class="op-zx-composition-tabcon {%if !$item@last%}c-gap-bottom{%else%}c-gap-bottom-small{%/if%}"> <span class="op-zx-composition-tab-title">{%$item.title|limitlen:12|escape:'html'%}</span> {%* 去掉 inline-block 中间的空格，所以连在一起写..... *%} {%foreach $item.option as $ls%}<a href="javascript:;" data-click="{fm:'beha'}" class="OP_LOG_BTN{%if $ls.default%} op-zx-composition-tab-select{%/if%}">{%$ls.name|escape:'html'%}</a>{%if !$ls@last%}<span class="op-zx-composition-tab-sp">|</span>{%/if%}{%/foreach%} </div> {%/foreach%} </div> {%* 内容 *%} <div class="op-zx-composition-content-con"> {%if $tplData.content%} {%if $tplData.content.title%} {%$tplData.content = array( $tplData.content )%} {%/if%} {%foreach $tplData.content as $item%} <div class="op-zx-composition-content"> <h4><a href="{%$item.url%}" target="_blank">{%$item.title|limitlen:48|highlight:0%}</a></h4> {%if $item.abstract%} <p class="op-zx-composition-abstract">{%$item.abstract|limitlen:120|highlight:0%}</p> {%/if%} {%if $item.time%} <div class="op-zx-composition-time c-gray">{%$item.time%}</div> {%/if%} </div> {%/foreach%} {%else%} <p class="op-zx-composition-nocontent">{%$noContentWord|escape:'html'%}</p> {%/if%} {%* 查看更多 *%} <p class="op-zx-composition-more-con" {%if !$tplData.morelink || ( $tplData.content && $tplData.content|count < 3)%}style="display:none"{%/if%}> {%if $tplData.morelink%} <a href="{%$tplData.morelink[0].url%}" target="_blank">{%$tplData.morelink[0].text|escape:'html'%}</a> {%/if%} </p> </div></div>{%* 其它话题 *%}<p class="op-zx-composition-othertopic c-gap-top-small" {%if !$tplData.othertopic%}style="display:none"{%/if%}>{%if $tplData.othertopic%} {%if !$tplData.othertopic[0]%} {%$tplData.othertopic = array( $tplData.othertopic )%} {%/if%} <span class="op-zx-composition-othertopic-title">{%$tplData.othertopic[0].title|limitlen:20|escape:'html'%}</span>{%foreach $tplData.othertopic[0].link as $item%}<a href="{%$item.url%}" target="_blank">{%$item.text|escape:'html'%}</a>{%if $item.desc%}{%$item.desc|escape:'html'%}{%/if%}　{%/foreach%}{%/if%}</p><script >
  A.setup({
    'srcid': '{%$extData.resourceid%}',
    'noContentWord': '{%$noContentWord|escape:'javascript'%}',
     'type': '{%if $tplData.type%}{%$tplData.type|escape:'javascript'%}{%/if%}'
  });
</script>{%/block%}