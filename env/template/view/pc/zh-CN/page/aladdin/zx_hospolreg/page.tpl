{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='content'%}<div class="op-zx-hospolreg c-clearfix"> <p class="op-zx-hospolreg-safetip"> 已通过百度认证，请放心使用 </p> <p class="c-gap-bottom-small">经卫生部批准的全国健康平台，覆盖全国超过400家三甲医院22万名专家</p> <div class="op-zx-hospolreg-select"> <span class="op-zx-hospolreg-select-val OP_LOG_BTN" data-click="{fm:'beha'}" val="{%if $tplData.selectedroom[0]%}{%$tplData.selectedroom[0].id%}{%/if%}">{%if $tplData.selectedroom[0]%}{%$tplData.selectedroom[0].tip|limitlen:22%}{%else%}请选择科室{%/if%}</span> <span class="op-zx-hospolreg-select-btn OP_LOG_BTN" data-click="{fm:'beha'}"><img src="http://www.baidu.com/aladdin/img/zxhospital/arrow.png" class="c-gap-top c-gap-bottom"/></span> </div> <a target="_blank" class="c-gap-left op-zx-hospolreg-btn" href="{%$tplData.url%}"> 免费预约 </a> <div class="op-zx-hospolreg-select-box"> {%foreach $tplData.room as $item%} {%$tmpData.room[$item.pid][]= $item%} {%/foreach%} <div class="op-zx-hospolreg-select-list op-zx-hospolreg-hide" data-click="{fm:'beha'}"> <ul> {%foreach $tplData.department as $item%} <li class="c-gap-right op-zx-hospolreg-select-li"> <table> <tr> <td style="width:70px"> {%$item.tip%} </td> <td> {%foreach $tmpData.room[$item.id] as $ls%} <span><a href="javascript:;" class="op-zx-hospolreg-select-a" title="{%$ls.tip%}" hidefocus="true" data-value="{%$ls.tip|escape:'html'%}" data-did="{%$ls.id|escape:'html'%}">{%$ls.tip|limitlen:14|escape:'html'%}</a></span> {%/foreach%} </td> </tr> </table> </li> {%/foreach%} </ul> </div> <div class="op-zx-hospolreg-select-scroll op-zx-hospolreg-hide"></div> </div></div><script >
    A.setup('hospitalid','{%$tplData.hospitalId%}');
    A.setup('selectedroom',{%json_encode($tplData.selectedroom)%});
</script>{%/block%}