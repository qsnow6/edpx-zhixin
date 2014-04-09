{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%if $tplData.link&&$tplData.word%} {%$tplData.url=$tplData.link%} {%$tplData.title="`$tplData.word`_百度百科"%} {%/if%} {%* 图片处理 *%} {%if $tplData.photo[0].src135%} {%$escaped_personImg = $tplData.photo[0].src135%} {%else%} {%$escaped_personImg = $tplData.photo[0].src%} {%/if%} {%if $extData.feData.isLeftImageMode%} {%$extData.feData.leftImage = [src => {%$escaped_personImg%}, href => $tplData.url]%} {%/if%}{%/block%}{%block name="foot"%}{%/block%}{%block name='content'%}<div class="c-row"> {%if $tplData.photo && !$extData.feData.isLeftImageMode%} <div class="c-span6 op_position"> <a target="_blank" href="{%$tplData.url%}"> <img class="c-img c-img6" src="{%$escaped_personImg%}" /> </a> </div> {%/if%} <div class="{%if $tplData.photo && !$extData.feData.isLeftImageMode%}c-span18{%else%}c-span24{%/if%} c-span-last"> {%if $tplData.concern%} <p class="op_baike_kv_concern"> <span class="op_baike_kv_concerntext">关注点</span> <span class="op_baike_kv_concernright"> {%foreach array_slice($tplData.concern, 0) as $item%} <a target="_blank" href="{%$item.link%}">{%$item.text|limitlen:14%}</a> {%/foreach%} </span> </p> {%/if%} {%if $tplData.born || $tplData.job%} <p> {%if $tplData.born%} <span>出生：{%preg_replace("/\[url\s(.*?)\](.*?)\[\/url\]/", "<a href=\"$1\" target=\"_blank\">$2</a>", $tplData.born)%} </span> {%/if%} {%if $tplData.job%} <span>{%if $tplData.born%}&nbsp;&nbsp;&nbsp;&nbsp;{%/if%}职业：{%preg_replace("/\[url\s(.*?)\](.*?)\[\/url\]/", "<a href=\"$1\" target=\"_blank\">$2</a>", $tplData.job)%} </span> {%/if%} </p> {%/if%} {%if $tplData.text%} <p>{%if $tplData.concern%}{%$tplData.text|limitlen:160|highlight:0%}{%else%}{%$tplData.text|limitlen:200|highlight:0%}{%/if%}<a target="_blank" href="{%$tplData.link%}">&nbsp;查看百度百科&gt;&gt;</a></p> {%/if%} {%if $tplData.part%} <p class="c-gap-top-small"> {%foreach $tplData.part as $item%} <a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:14%}</a> {%if $item@index == 4%}{%break%}{%/if%} {%if !$item@last%}&nbsp;-&nbsp; {%/if%} {%/foreach%} </p> {%/if%} <div>{%fe_fn_c_showurl%}</div> </div></div>{%/block%}