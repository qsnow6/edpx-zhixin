{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='title'%}{%/block%} {%block name='content'%} <div class="c-row"> <div class="c-span3 op_postcode_icon"><img class="c-img c-img3" src="http://www.baidu.com/aladdin/img/tools/zip.png" alt="" /></div> <div class="c-span21 c-span-last op_postcode_right"> <div class="op_postcode_t c-gap-bottom-small">邮编查询</div> <div class="op_postcode_ans c-clearfix {%if $tplData.region|count > 1%} op_postcode_ans_mult{%/if%}"> <div class="op_postcode_i c-gap-right"><span class="c-gap-right">{%$tplData.title|highlight:0%}</span>位于</div> <div class="op_postcode_i op_postcode_region"> {%$loop_maxcount=count($tplData.region)%}{%for $op_loop_count=0 to 20%}{%if $op_loop_count<$loop_maxcount%} <p>{%$tplData.region[$op_loop_count]['txt']|escape:'html'%}</p> {%else%}{%break%}{%/if%}{%/for%} </div> </div> </div> </div> <div class="op_postcode_note c-gap-top-small"><span>{%$tplData.source[0]['name']|escape:'html'%}</span><a href="{%$tplData.source[0]['link']|escape:'html'%}" onmousedown="return c({'fm':'alop','title':this.innerHTML,'url':this.href,'p1':_aMC(this),'p2':1})" target="_blank">{%$tplData.source[0]['title']|escape:'html'%}</a></div>{%/block%}