{%extends 'right_base.tpl'%} {%block name='content'%}<div class="opr-divine10">  <div class="opr-divine10-rswf"></div> <div class="opr-divine10-rswfs"></div>  <div class="opr-divine10-rightimg opr-divine10-hidden"></div></div>{%if $tplData.lenovo%}<div class="opr-divine10-lenvo"><a href="http://rel.lenovo.com.cn/" target="_blank"><img src="http://www.baidu.com/aladdin/img/swf/lenovo.jpg" /></a></div>{%/if%}<a class="opr-divine10-baikebtn opr-divine10-hidden" target="_blank" href="{%$tplData.baikeurl%}"></a><script > A.setup({'rightFlshA':'{%$tplData.rightFlshA%}','rightFlshAs':'{%$tplData.rightFlshAs%}','mianFlshB':'{%$tplData.mianFlshB%}','geturl':'{%$tplData.geturl|escape:javascript%}','personurl':'{%$tplData.personurl%}','countnum':'{%$tplData.countnum%}'});
</script>{%/block%}