{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$extData.feData.hasBorder = true%}{%/block%}{%block name='content'%}<style>.op-travel-img,.op-travel-img img{height:{%fe_fn_c_get_grid_height rate=3/4%}px}.op-travel-sj{top:{%fe_fn_c_get_grid_height rate=3/4%}px}.op-travel-infobg,.op-travel-info{width:{%fe_fn_c_get_img_height %}px}</style><div class="c-row op-travel-row"> {%foreach array_slice($tplData.content, 0,4) as $item%} <div class="c-span6 {%if $item@last%}c-span-last{%/if%} op-travel-img {%if $item@first%}op-travel-active{%/if%}"> {%if $queryInfo.pUrlConfig.dsp != 'ipad'%}<a href="{%$item.link%}" target="_blank">{%/if%} <img class="c-img c-img6" src="{%$item.poster%}" /> <span class="op-travel-infobg">&nbsp;</span> <span class="op-travel-info">{%$item.name|limitlen:18|escape:html%}</span> <span class="op-travel-sj">&nbsp;</span> <span class="op-travel-infoborder {%if $item@first%}op-travel-hidden{%/if%}">&nbsp;</span> {%if $queryInfo.pUrlConfig.dsp != 'ipad'%}</a>{%/if%} </div> {%/foreach%}</div>{%foreach array_slice($tplData.content,0,4) as $item%}<div class="c-gap-bottom-small op-travel-cont {%if !$item@first%}op-travel-hidden{%/if%}"> {%if $queryInfo.pUrlConfig.dsp == 'ipad'%} <p><a href="{%$item.link%}" target="_blank" class="op-travel-name op-travel-bold">{%$item.name|limitlen:68|escape:html%}</a></p> {%/if%} <p class="op-travel-indent"><span class="op-travel-bold">{%$item.comment[0].name|limitlen:10|escape:html%}</span>{%$item.comment[0].dtl|limitlen:200|escape:html%}</p> {%if $item.tip1|count>0 || $item.tip1all%} <p class="op-travel-indent op-travel-space"><span class="op-travel-bold">{%$item.tip1name|limitlen:10|escape:html%}</span>{%$escaped_tip1len=63%}{%if $item.tip1all%}{%if ($item.tip1all[0].name|string_display_len)>=20%}{%$escaped_tip1len=$escaped_tip1len-20%}{%else%}{%$escaped_tip1len=$escaped_tip1len-($item.tip1all[0].name|string_display_len)%}{%/if%}{%if $item.tip1|count>0%}{%$escaped_tip1len=$escaped_tip1len-3%}{%/if%}{%/if%}{%foreach $item.tip1 as $itemtip1%}{%if !$itemtip1@first%}{%$escaped_tip1len=$escaped_tip1len-3%}{%/if%}{%$escaped_tip1now=$itemtip1.name|string_display_len%}{%if $escaped_tip1now>20%}{%$escaped_tip1now=20%}{%/if%}{%if $escaped_tip1len>=$escaped_tip1now %}<a href="{%$itemtip1.link%}"  target="_blank" class="{%if !$itemtip1@first%}op-travel-left{%/if%}">{%$itemtip1.name|limitlen:20|escape:html%}</a>{%$escaped_tip1len=$escaped_tip1len-$escaped_tip1now%}{%else%}{%break%}{%/if%}{%/foreach%}{%if $item.tip1all%}<a href="{%$item.tip1all[0].link%}" target="_blank" class="{%if $item.tip1|count>0%}op-travel-left{%/if%}">{%$item.tip1all[0].name|limitlen:20|escape:html%}</a>{%/if%} </p> {%/if%} {%if $item.tip2|count>0%} <p class="op-travel-indent op-travel-space"><span class="op-travel-bold">{%$item.tip2name|limitlen:10|escape:html%}</span>{%$escaped_tip2len=63%}{%foreach $item.tip2 as $itemtip2%}{%if !$itemtip2@first%}{%$escaped_tip2len=$escaped_tip2len-3%}{%/if%}{%$escaped_tip2now=$itemtip2.name|string_display_len%}{%if $escaped_tip2now>20%}{%$escaped_tip2now=20%}{%/if%}{%if $escaped_tip2len>=$escaped_tip2now %}<a href="{%$itemtip2.link%}" target="_blank" class="{%if !$itemtip2@first%}op-travel-left{%/if%}">{%$itemtip2.name|limitlen:20|escape:html%}</a>{%$escaped_tip2len=$escaped_tip2len-$escaped_tip2now%}{%else%}{%break%}{%/if%}{%/foreach%} </p> {%/if%}</div>{%/foreach%}<a href="{%$tplData.morelink[0].link%}" target="_blank" class=" c-gap-top-small op-travel-noline">{%$tplData.morelink[0].name|limitlen:78|highlight:0%}</a><script >
   A.setup({
       "platform":"{%$queryInfo.pUrlConfig.dsp|escape:'html'|escape:'javascript'%}"
   });
</script>{%/block%}