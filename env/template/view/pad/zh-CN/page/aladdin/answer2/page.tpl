{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<style >
.op_answer2_main{width:100%;} 
.op_answer2_main td{font-size:1em;}
</style><div class="op_answer2_main"><table cellspacing="0" cellpadding="0"> <tr> <td> {%if $tplData.content1!=""%} <div> <span style="line-height:28px;font-weight:bold;">{%$tplData.content1|escape:'html'%}</span> </div> {%/if%} {%if $tplData.content2!=""%} <div> <span style="line-height:20px;font-weight:bold;">{%$tplData.content2|escape:'html'%}</span> </div> {%/if%} {%if $tplData.content3!=""%} <div> <span style="line-height:22px;color:#666;">{%$tplData.content3|escape:'html'%}</span> </div> {%/if%} {%if $tplData.showurl!=""%} <p class="c-showurl"> <cite>{%$tplData.showurl|escape:'html'%}</cite>{%if $tplData.showlamp!=""%} - <a class="op_LAMP" target="_blank" href="http://open.baidu.com/"></a>{%/if%} </p> {%/if%} </td> </tr></table></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}