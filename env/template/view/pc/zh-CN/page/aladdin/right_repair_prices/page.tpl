{%extends 'right_base.tpl'%} {%block name='content'%}<div class="opr-repair-prices"> <div class="opr-repair-prices-title"> <span>{%$tplData.title|escape%}</span> </div> <table border="0" cellpadding="0" cellspacing="0" width="100%"> <tr><th>维修类别</th><th>人工服务费</th></tr> {%foreach array_slice($tplData.item,0,5) as $item%} <tr> <td>{%$item.name|limitlen:20|escape%}</td> <td>{%$item.value|limitlen:15|escape%}</td> </tr> {%/foreach%} </table> {%if $tplData.detail%} <a href="{%$tplData.detail|escape%}" target="_blank" class="opr-repair-prices-detail">查看详细维修报价单 >></a> {%/if%}</div>{%/block%}