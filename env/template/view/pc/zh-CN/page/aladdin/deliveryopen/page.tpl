{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}{%if $tplData.formtitle%}<div class="c-gap-bottom-small">{%$tplData.formtitle|escape:'html'%}</div>{%/if%}<form class="op_deliveryopen_f" name="op_deliveryopen_f" style="position:static;" autocomplete="off" action="{%$tplData.action|escape:'html'%}" target="_blank" method="get" accept-charset="gb2312"> <div class="c-row"> <div class="c-span16"> <input type="text" name="{%$tplData.var|escape:'html'%}" value="{%$tplData.tip%}" tip="{%$tplData.tip%}" class="c-input c-input-xlarge op_deliveryopen_tip op_deliveryopen_order"> </div> <div class="c-span8 c-span-last"> <a class="c-btn c-btn-primary op_deliveryopen_btn" target="_blank" onclick='return false;' href="javascript:;">查询</a> </div> </div>{%if $tplData.hidden%} {%foreach $tplData.hidden as $item%}<input type="hidden" name="{%$item['name']|escape:'html'%}" value="{%$item['value']|escape:'html'%}"/> {%/foreach%} {%/if%}</form>{%/block%}