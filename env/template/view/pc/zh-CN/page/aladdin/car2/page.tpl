{%extends 'c_base.tpl'%} {%block name='content'%}<div class="c-row"> <div class="c-span6"> <a href="{%$tplData.icon[0]['iconUrlLink']%}" class="op_car1_icon_container" target="_blank"> <img class="c-img c-img6" src="{%$tplData.icon[0]['iconAddress']%}" alt="图片"> {%if $tplData.iconfootnote%} <span>{%$tplData.iconfootnote%}</span> {%/if%} </a> </div> <div class="c-span18 c-span-last"> <table cellspacing="0" cellpadding="0" width="100%" class="op_car1_table"> <tr> <td>{%$tplData.info1[0]['name']|escape:'html'%}{%if $tplData.info1[0]['red']%}<span class="op_car1_red">{%/if%}{%$tplData.info1[0]['value']|escape:'html'%}{%if $tplData.info1[0]['red']%}</span>{%/if%}</td> <td>{%$tplData.info2[0]['name']|escape:'html'%}{%$tplData.info2[0]['value']|escape:'html'%}</td> </tr> <tr> <td>{%$tplData.info3[0]['name']|escape:'html'%}{%$tplData.info3[0]['value']|escape:'html'%}</td><td>{%$tplData.info4[0]['name']|escape:'html'%}{%$tplData.info4[0]['value']|escape:'html'%}</td> </tr> {%if $tplData.info5||$tplData.info6%} <tr> <td>{%$tplData.info5[0]['name']|escape:'html'%}{%$tplData.info5[0]['value']|escape:'html'%}</td><td>{%$tplData.info6[0]['name']|escape:'html'%}{%$tplData.info6[0]['value']|escape:'html'%}</td> </tr> {%/if%} {%if $tplData.infoTxt%} <tr> <td colspan="2"> <div class="c-clearfix op_car1_color"> <span>{%$tplData.infoTxt|escape:'html'%}</span> {%foreach $tplData.color as $item%}<div style="background-color:{%$item.value%};{%if $item.value=='#ffffff'%}width:7px;height:7px;border:1px solid #dcdcdc;{%/if%}"></div>{%/foreach%} </div> </td> </tr> {%/if%} {%if $tplData.txtlink%} <tr> <td colspan="2"> {%foreach $tplData.txtlink as $item%} <a href="{%$item['url']%}" target="_blank" class="{%if !$item@last%}c-gap-right-small {%/if%}OP_LOG_BTN">{%$item['name']|escape:'html'%}</a> {%/foreach%} </td> </tr> {%/if%} </table> </div></div>{%if $tplData.carTh%}<table cellspacing="0" cellpadding="0" class="c-table c-gap-top"> <tr> <th>{%$tplData.carTh[0]['displacement']|escape:'html'%}</th><th>{%$tplData.carTh[0]['gearbox']|escape:'html'%}</th><th>{%$tplData.carTh[0]['avgeOil']|escape:'html'%}</th><th>{%$tplData.carTh[0]['allOil']|escape:'html'%}</th> </tr> {%foreach $tplData.carTd as $item%} <tr> <td>{%$item['displacement']|escape:'html'%}</td><td>{%$item['gearbox']|escape:'html'%}</td><td>{%$item['avgeOil']|escape:'html'%}</td><td>{%$item['allOil']|escape:'html'%}</td> </tr> {%/foreach%}</table>{%/if%}{%if $tplData.moreModel%}<div class="c-gap-top"> <a href="{%$tplData.moreModel[0]['linkUrl']%}" class="OP_LOG_BTN" target="_blank">{%$tplData.moreModel[0]['txt']|escape:'html'%}</a></div>{%/if%}{%/block%}