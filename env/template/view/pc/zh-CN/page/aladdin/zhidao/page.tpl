{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%} {%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%} {%if $tplData.tip[0]%} <div class="op_zhidao_m op_zhidao_tip">{%$tplData.tip[0].num%}个回答&nbsp;-&nbsp;提问时间:&nbsp;{%$tplData.tip[0].time%}</div> {%/if%} {%if $tplData.content%} <div class="op_zhidao_content">{%if $tplData.tip[0]%}<span class="op_zhidao_m">最佳答案:&nbsp;</span>{%/if%}{%$tplData.content|limitlen:140|highlight:0%}</div> {%/if%} {%if $tplData.showurl!=""%}<div class="op_zhidao_showurl"> {%$tplData.showurl|limitlen:68%} {%if $tplData.date!=""%}{%$tplData.date%}{%/if%}</div>{%/if%} <div class="op_zhidao"> {%foreach $tplData.question as $item%} {%if $item.link%} <div> <a href="{%$item['link']%}" target="_blank">{%$item['title']|limitlen:56|highlight:0%}</a> <span class="op_zhidao_answercount">{%$item['answercount']%} {%$item['date']%}</span> </div> {%/if%} {%/foreach%} {%if $tplData.questionmore%} <a href="{%$tplData.questionmore[0].link%}" target="_blank" class="op_zhidao_more">{%$tplData.questionmore[0].name%}</a> {%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}