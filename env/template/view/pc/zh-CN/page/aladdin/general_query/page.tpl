{%extends 'c_base.tpl'%} {%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='data_modifier'%} {%if $tplData.question[0].type == "1"%} {%$viewType = 1%} {%else%} {%$viewType = 0%} {%/if%} {%*$viewType 模版展现模式 0=答案更多跳转模式 1=答案展开全部模式(title隐藏)*%}{%/block%}{%block name='content'%}<div class="c-border"> <div class="op_general_query_main">  {%if $viewType == 0%} <div class="op_general_query_question c-gap-bottom-small"> {%$titleLimitlen = 54 - $tplData.source[0].sourcetitle|string_display_len%} <a href="{%$tplData.question[0].url%}" title="{%$tplData.question[0].name|escape:'html'%}" target="_blank">{%$tplData.question[0].name|limitlen:$titleLimitlen|escape:'html'|highlight:0%}{%if $tplData.source[0].sourcetitle%}_{%$tplData.source[0].sourcetitle|escape:'html'%}{%/if%}</a> </div> {%/if%}  {%if $tplData.problemExt[0]%} <div class="op_general_query_question_ext c-gap-bottom-small"> {%foreach array_slice($tplData.problemExt, 0, 4) as $item%} <p>{%$item.content|limitlen:200|regex_replace:"/\s/":"&nbsp;"|highlight:0%}</p> {%/foreach%} {%if $tplData.problemPic[0]%} <img src="{%$tplData.problemPic[0].url%}"/> {%/if%} </div> {%/if%}  <div class="op_general_query_answer c-gap-top-small"> <i class="op_general_query_icon op_general_query_icon_answer"></i> {%if $viewType == 0%}  <div class="op_general_query_answer_href"> {%$answerLength = 0%} {%foreach array_slice($tplData.answer, 0, 6) as $item%} {%$answerLength = $answerLength + $item.content|string_display_len%} {%if $answerLength <= 200%} <p>{%$item.content|regex_replace:"/\s/":"&nbsp;"%}{%if $item@last%}{%if $item@index == 5%}…{%/if%} <span class="op_general_query_answer_more"><a href="{%$tplData.question[0].url%}" target="_blank">详情&gt;&gt;</a></span>{%/if%}</p> {%else%} {%$answerLimitlen = 200 + $item.content|string_display_len - $answerLength%} {%$answerLimitlen = ($answerLimitlen < 20) ? 20 : $answerLimitlen%} <p>{%$item.content|limitlen:$answerLimitlen|regex_replace:"/\s/":"&nbsp;"%} <span class="op_general_query_answer_more"><a href="{%$tplData.question[0].url%}" target="_blank">详情&gt;&gt;</a></span></p> {%break%} {%/if%} {%/foreach%} </div> {%elseif $viewType == 1%}  <div class="op_general_query_answer_less"> {%$answerLength = 0%} {%foreach array_slice($tplData.answer, 0, 4) as $item%} {%$answerLength = $answerLength + $item.content|string_display_len%} {%if $answerLength <= 200%} <p>{%$item.content|regex_replace:"/\s/":"&nbsp;"%}{%if $tplData.answer|@count > 4 && $item@last%}… <span class="op_general_query_answer_more op_general_query_answer_showall OP_LOG_BTN" data-click="{'fm':'beha'}">显示全部</span>{%/if%}</p> {%else%} {%$answerLimitlen = 200 + $item.content|string_display_len - $answerLength%} {%$answerLimitlen = ($answerLimitlen < 20) ? 20 : $answerLimitlen%} <p>{%$item.content|limitlen:$answerLimitlen|regex_replace:"/\s/":"&nbsp;"%} <span class="op_general_query_answer_more op_general_query_answer_showall OP_LOG_BTN" data-click="{'fm':'beha'}">显示全部</span></p> {%break%} {%/if%} {%/foreach%} </div> <div class="op_general_query_answer_all" style="display:none;"> {%foreach array_slice($tplData.answer, 0) as $item%} <p>{%$item.content|regex_replace:"/\s/":"&nbsp;"%}</p> {%/foreach%} </div> {%/if%} {%if $tplData.answerPic[0]%} <img src="{%$tplData.answerPic[0].url%}"/> {%/if%} </div> <div class="op_general_query_source c-gap-top-small"> {%if $tplData.source[0].sourcetitle%}来自<a href="{%if $tplData.source[0].sourceurl%}{%$tplData.source[0].sourceurl%}{%else%}{%$tplData.question[0].url%}{%/if%}" target="_blank">{%$tplData.source[0].sourcetitle|escape:'html'%}</a> <span class="op_general_query_source_sep">|</span>{%/if%} <a class="op_general_query_feedback" href="javascript:;" data-click="{info:'报错'}">报错</a> </div> </div>  {%if $viewType == 0 && $tplData.moreanswer[0]%} <div class="op_general_query_ext c-gap-top"> {%if $tplData.otheranswer%} {%foreach array_slice($tplData.otheranswer, 0, 2) as $item%} <p class="op_general_query_otheranswer"> <a href="{%$item.url%}" title="{%$item.name|escape:'html'%}" target="_blank">{%$item.name|limitlen:50|highlight:0%}</a>{%if $item.number%}&nbsp;{%$item.number|escape:'html'%}个回答{%/if%}{%if $item.date%}&nbsp;{%$item.date|escape:'html'%}{%/if%} </p> {%/foreach%} {%/if%} <p class="op_general_query_moreanswer"><a href="{%$tplData.moreanswer[0].url%}{%$extData.OriginQuery%}" target="_blank">更多相关问答&gt;&gt;</a></p> </div> {%/if%}</div>{%/block%}