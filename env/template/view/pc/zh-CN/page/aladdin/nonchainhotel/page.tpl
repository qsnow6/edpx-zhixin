{%extends 'c_base.tpl'%} {%block name='content'%}<div class="c-row"> {%if $tplData.icon[0]['iconaddress']%} <div class="c-span6"> <a target="_blank" href="{%$tplData.icon[0]['iconlink']%}"><img class="c-img c-img6" style="display:block;" src="{%$tplData.icon[0]['iconaddress']%}"></a> </div> {%/if%} <div class="c-span18 c-span-last"> {%if $tplData.content1 || $tplData.content2%}<p>{%if $tplData.content1%}<span {%if $tplData.content2%}class="c-gap-right-small"{%/if%}>{%$tplData.content1|limitlen:38|highlight:0%}</span>{%/if%}{%if $tplData.content2%}{%$tplData.content2|limitlen:38|highlight:0%}{%/if%}</p>{%/if%} {%if $tplData.content3 || $tplData.maplink[0]['maplinkcontent']%}<p>{%if $tplData.content3%}<span {%if $tplData.maplink%}class="c-gap-right-small"{%/if%}>{%$tplData.content3|limitlen:60|highlight:0%}</span>{%/if%}{%if $tplData.maplink[0]['maplinkcontent']%}<a target="_blank" href="{%$tplData.maplink[0]['maplinkurl']%}">{%$tplData.maplink[0]['maplinkcontent']|limitlen:10|highlight:0%}</a>{%/if%}</p>{%/if%} {%if $tplData.content4%}<p>{%$tplData.content4|limitlen:120|highlight:0%}</p>{%/if%} {%if $tplData.link%} <p> {%foreach $tplData.link as $item%} <a {%if !$item@last%}class="c-gap-right-small"{%/if%} target="_blank" href="{%$item['linkurl']%}">{%$item['linkcontent']|highlight:0%}</a> {%/foreach%} </p> {%/if%} <p>{%fe_fn_c_showurl%}</p> </div></div>{%/block%}{%block name='foot'%}{%/block%}