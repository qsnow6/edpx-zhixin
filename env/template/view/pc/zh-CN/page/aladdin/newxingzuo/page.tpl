{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$tplData.h2p=['处女座'=>'chunv','魔羯座'=>'mojie','白羊座'=>'baiyang','金牛座'=>'jinniu','双子座'=>'shuangzi','巨蟹座'=>'juxie','狮子座'=>'shizi','天秤座'=>'tianping','天蝎座'=>'tianxie','水瓶座'=>'shuiping','双鱼座'=>'shuangyu','射手座'=>'sheshou']%}{%/block%}{%block name='foot'%}{%/block%}{%block name='content'%}<div class="c-row"> <div class="c-span3"> <img class="c-img c-img3" src="http://www.baidu.com/aladdin/img/stars/{%$tplData.h2p[$tplData.content1]%}.png"> </div> <div class="c-span21 c-span-last"> {%if $tplData.content1%}<div><span style="font-weight:bold;font-size:1.08em;" class="c-gap-right-small">{%$tplData.content1%}</span>{%$tplData.content2%}{%if $tplData.content3%}<span class="c-gap-left">{%$tplData.content3%}</span>{%/if%}</div>{%/if%} {%if $tplData.content4%}<div>{%$tplData.content4%}</div>{%/if%} {%if $tplData.content5%} <div> {%$tplData.content5%} {%if $tplData.link1%} {%foreach $tplData.link1 as $item%}<a href="{%$item.linkurl%}" class="c-gap-right" target="_blank">{%$item.linkcontent|escape%}</a>{%/foreach%} {%/if%} </div> {%/if%} {%if $tplData.content6%}<div>{%$tplData.content6%}{%$tplData.content7%}</div>{%/if%} {%if $tplData.link2%} <div> {%foreach $tplData.link2 as $item%}<a href="{%$item.linkurl%}" class="c-gap-right" target="_blank">{%$item.linkcontent|escape%}</a>{%/foreach%} </div> {%/if%} <div>{%fe_fn_c_showurl%}</div> </div></div>{%/block%}