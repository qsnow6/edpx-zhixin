{%extends 'c_right_base.tpl'%} {%block name='content'%}<style>.opr-repair-prices{width:272px;margin-bottom:20px}.opr-repair-prices-title{font-size:1em;font-weight:bold;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;margin-bottom:10px}.opr-repair-prices-title span{background:#fff;padding-right:10px}.opr-repair-prices table{margin-bottom:8px}.opr-repair-prices th{background:#fafafa;text-align:left;height:25px;line-height:25px;font-weight:normal;color:#666;font-size:1em;padding-left:4px}.opr-repair-prices {%*i*%}td{text-align:left;height:28px;line-height:28px;border-bottom:1px solid #ebebeb;font-size:1em;padding-left:4px}.opr-repair-prices detail{font-size:1em}</style><div class="opr-repair-prices"> <div class="opr-repair-prices-title"> <span>{%$tplData.title|escape%}</span> </div> <table border="0" cellpadding="0" cellspacing="0" width="100%"> <tr><th>维修类别</th><th>人工服务费</th></tr> {%foreach array_slice($tplData.item,0,5) as $item%} <tr> <td>{%$item.name|limitlen:20|escape%}</td> <td>{%$item.value|limitlen:15|escape%}</td> </tr> {%/foreach%} </table> {%if $tplData.detail%} <a href="{%$tplData.detail|escape%}" target="_blank" class="opr-repair-prices-detail">查看详细维修报价单 >></a> {%/if%}</div>{%/block%}