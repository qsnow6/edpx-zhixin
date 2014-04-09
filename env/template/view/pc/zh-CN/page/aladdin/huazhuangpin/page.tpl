{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}<div class="op_huazhuangpin_container"><div class="c-row"> <div class="c-span6"> {%if $tplData.img[0]%}<a href="{%$tplData.img[0].linkurl%}" target="_blank"><img class="c-img c-img6" src="{%$tplData.img[0].url%}" alt="{%$tplData.img[0].text%}" title="{%$tplData.img[0].text%}" /></a>{%/if%} </div> <div class="c-span18 c-span-last"> <ul> <li><span class="op_huazhuangpin_intortitle">报价：</span><span class="op_huazhuangpin_bjtext">{%$tplData.price%}</span></li> <li class="c-gap-top-small"><span class="op_huazhuangpin_intortitle">容量：</span><span class="op_huazhuangpin_introtext">{%$tplData.volume%}</span></li> <li class="c-gap-top-small"><span class="op_huazhuangpin_intortitle">分类：</span><span class="op_huazhuangpin_introtext">{%$tplData.classify%}</span></li> <li class="c-gap-top-small"> <span class="op_huazhuangpin_intortitle">功效：</span>{%foreach $tplData.effect as $item%}<a href="{%$item.url%}" target="_blank" class="op_huazhuangpin_gxtext">{%$item.name%}</a>{%/foreach%} </li> <li class="c-gap-top-small"> {%foreach $tplData.sublink as $item%} <a href="{%$item.url%}" target="_blank" class="op_huazhuangpin_cptext">{%$item.name%}</a> {%if !$item@last%} <span class="op_huazhuangpin_line">|</span> {%/if%} {%/foreach%} </li> </ul> </div> </div> <span class="op_huazhuangpin_score"> <span class="op_huazhuangpin_cost">{%$tplData.score[0].cost%}</span>&nbsp;/&nbsp;<span class="op_huazhuangpin_sum">{%$tplData.score[0].sum%}分</span> <i class="c-icon c-icon-star-gray"> <i style="width:{%$tplData.score[0].cost/$tplData.score[0].sum*100%}%" class="c-icon c-icon-star"></i> </i> </span> <div class="c-gap-top"> {%if $tplData.learned%} <div class="op_huazhuangpin_xdtitle"> {%$tplData.learned%} </div> {%/if%} {%if $tplData.learnedlink%} <div class="op_huazhuangpin_list"> <ul> {%foreach $tplData.learnedlink as $item%} {%if $item@index == 0%} <li><a href="{%$item.url%}" target="_blank">{%$item.name|limitlen:61|highlight:0%}</a><i>精</i><span>{%$item.time%}</span></li> {%else%} <li><a href="{%$item.url%}" target="_blank">{%$item.name|limitlen:61|highlight:0%}</a><span>{%$item.time%}</span></li> {%/if%} {%/foreach%} </ul> </div> {%/if%} {%if $tplData.learnedtotal[0]%} <p class="op_huazhuangpin_total"><a href="{%$tplData.learnedtotal[0].url%}" target="_blank">查看<span>{%$tplData.learnedtotal[0].text%}</span>使用心得>></a></p> {%/if%} </div></div>{%/block%}