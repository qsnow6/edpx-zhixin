{%extends 'base.tpl'%} {%block name='content'%}<tr><td class="f"><style type="text/css" >.op_auto_template,.op_auto_template table{width:100%;}.op_auto_template a{color:#00c;}</style><div class="op_auto_template op_jiaoyudanji"><table cellspacing="0" cellpadding="0"><tbody><tr><td><h3 class="t"><a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a><span class="tsuf tsuf-op" data="{title:'{%$tplData.title|escape:'javascript'%}',link:'{%$tplData.url|escape:'javascript'%}'}"></span></h3></td></tr></tbody></table></div></td></tr>{%/block%}