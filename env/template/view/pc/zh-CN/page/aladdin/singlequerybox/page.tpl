{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%} <form target="_blank" name="op_singlequerybox_f" method="get"  autocomplete="off" action="{%$tplData.input[0]['action']%}"> {%if $tplData.content1!=""%}<p class="c-gap-bottom-small"><strong>{%$tplData.content1%}</strong></p>{%/if%} <div class="c-row"> <div class="c-span20"> <input class="c-input c-input20 op_singlequerybox_init" type="text" name="{%$tplData.input[0]['name']%}" id="op_singlequerybox_i" value="{%if $tplData.input[0]['tip']!=""%}{%$tplData.input[0]['tip']%}{%/if%}"  /> </div> <div class="c-span4 c-span-last"> <a class="c-btn c-btn-primary  OP_LOG_BTN" onclick="op_singlequerybox_s();return false;" target="_blank" href="#">{%$tplData.button%}</a> </div> </div> <div id="op_singlequerybox_tip" class="op_singlequerybox_none">{%if $tplData.input[0]['tip']!=""%}{%$tplData.input[0]['tip']%}{%/if%}</div> {%if $tplData.content2!=""%}<p class="c-gap-top-small op_singlequerybox_init">{%$tplData.content2%}</p>{%/if%} {%if $tplData.content3!=""%}<p class="op_singlequerybox_init">{%$tplData.content3%}</p>{%/if%}</form> {%/block%}