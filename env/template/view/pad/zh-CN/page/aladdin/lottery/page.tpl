{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='dropdown2'%}.op_lottery_dropdown1,.op_lottery_dropdown2{width:6.55em;float:left}.op_lottery_date{float:left;line-height:2em}.op_lottery_hidden{display:none}.op_lottery_numbers span{float:left;margin-right:5px;padding:2px 5px;font-size:1.69em;background:#ff7921;color:#fff}</style> <div class="c-clearfix"> <div class="c-dropdown2  c-gap-right op_lottery_dropdown1 OP_LOG_BTN" data-click="{fm:'beha'}"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn"></div> <div class="c-dropdown2-btn-icon"> <di{%*i*%}v class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <ul  class="c-dropdown2-menubox"> {%$escaped_lottery_type_id='1'%} {%foreach $tplData.type as $item%} {%if $item.selected%}{%$escaped_lottery_type_id=$item.id%}{%/if%} <li class="c-dropdown2-option" data-value="{%$item.id%}" {%if $item.selected%}data-selected="selected"{%/if%}>{%$item.name%}</li> {%/foreach%} </ul> </div> </div> </div> <div class="c-dropdown2 c-gap-right op_lottery_dropdown2 OP_LOG_BTN" data-click="{fm:'beha'}"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn"></div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <ul class="c-dropdown2-menubox"> </ul> </div> </div> </div> <div class="op_lottery_date">开奖日期：<s{%*i*%}pan class="op_lottery_date_val"></span></div> </div><div class="c-gap-top c-clearfix op_lottery_numbers"></div> {%if $tplData.link%}<div class="c-gap-top">{%foreach $tplData.link as $item%}<a {%if !$item@last%}class="c-gap-right-small"{%/if%} href="{%$item['url']%}" target="_blank">{%$item['content']|escape:'html'%}</a>{%/foreach%}</div> {%/if%}<script >
    A.setup({typeId:'{%$escaped_lottery_type_id%}',phase:[{%foreach $tplData.phase as $item%}{id:"{%$item['id']|escape:'html'%}",selected:{%if $item['selected']%}1{%else%}0{%/if%},name:"{%$item['name']|escape:'html'%}",date:"{%$item['date']|escape:'html'%}",number:"{%$item['number']|escape:'html'%}"}{%if !$item@last%},{%/if%}{%/foreach%}]});
</script><script data-merge>A.setup(function(){var _this=this,phase=_this.data.phase,typeId=_this.data.typeId;var dropdown1={},dropdown2={},dropdown2List=[];var edate=_this.find('.op_lottery_date_val')[0],edropdown1=_this.find('.op_lottery_dropdown1')[0],edropdown2=_this.find('.op_lottery_dropdown2')[0],edropdown2List=edropdown2.getElementsByTagName('ul')[0],edropdown2btn= _this.find('.op_lottery_dropdown2').eq(0).find('.c-dropdown2-btn')[0],enumbers=_this.find('.op_lottery_numbers')[0];var show{%*i*%}LotteryNumbers=function(numberstr){var numbers=[];$.each(numberstr.split('/'),function(i,v){numbers.push(['<span>',v,'</span>'].join('')); });enumbers.innerHTML=numbers.join('');};$.each(phase,function(i,v){if(typeId==v.id){dropdown2List.push(['<li data-value=\'{"value":"',v.number,'","date":"',v.date,'"}\'  class="c-dropdown2-option "',v.selected?' data-selected="selected"':'','>',v.name,'</li>'].join(''));}}); edropdown2List.innerHTML=dropdown2List.join('');function insertList(){$.each(phase,f{%*i*%}unction(i,v){if(typeId==v.id){if(v.selected){dropdown2.add({value: '{"value":"'+v.number+'","date":"'+v.date+'"}', text: v.name, selected: 1});}else{dropdown2.add({value: '{"value":"'+v.number+'","date":"'+v.date+'"}', text: v.name});}}});var newVa=$.parseJSON(dropdown2.getValue());edate.innerHTML=newVa.date;showLotteryNumbers(newVa.value); }A.use('dropdown21',function(){dropdown1=A.ui.dropdown21(edropdown1,{onchange:function(e){dropdown2.removeAll();typeId=dropdown1.getValue();insertList();}});{%*i*%} dropdown2=A.ui.dropdown21(edropdown2,{onchange:function(){var newVa=$.parseJSON(dropdown2.getValue());edate.innerHTML=newVa.date;showLotteryNumbers(newVa.value);}});var selVa=$.parseJSON(dropdown2.getValue());edate.innerHTML=selVa.date;showLotteryNumbers(selVa.value);});this.dispose = function(){dropdown1&&dropdown1.dispose&&dropdown1.dispose();dropdown2&&dropdown2.dispose&&dropdown2.dispose();};});</script>{%/block%}