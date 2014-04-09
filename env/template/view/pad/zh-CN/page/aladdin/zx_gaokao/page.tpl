{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op_zx_gaokao{font-size:.92em;line-height:20px}.op_zx_gaokao_title{line-height:26px;font-weight:normal}.op_zx_gaokao_describe{font-size:.92em;color:#666;line-height:24px}.op_zx_gaokao_main{border-bottom:1px solid #ccc;margin-bottom:2px}.op_zx_gaokao_main li{border-top:1px solid #ccc}.op_zx_gaokao_item{margin-left:85px;padding:5px 0;line-height:22px;font-size:.92em;padding-right:5px}.op_zx_gaokao_item_title{width:80px;float:left;display:inline;font-weight:bold;font-size:1em;text-align:righ{%*i*%}t;margin:0;line-height:22px;padding-top:5px;height:22px;overflow:hidden}.op_zx_gaokao_item a,.op_zx_gaokao_item em{text-decoration:none}.op_zx_gaokao_item a:hover{text-decoration:underline}.op_zx_gaokao_split{padding:0 6px;color:#ccc}.op_zx_gaokao_itemsplit{padding-left:5px}.op_zx_gaokao_item_abs{color:#999}.op_zx_gaokao_hot{background:url(http://www.baidu.com/aladdin/img/zx_gaokao/zx_gaokao.png) -18px -0px no-repeat;padding:3px 7px}.op_zx_gaokao_new{background:url(http://www.baidu.com/aladdin/i{%*i*%}mg/zx_gaokao/zx_gaokao.png) -40px -0px no-repeat;padding:3px 7px}.op_zx_gaokao_resources{color:#666;padding-top:2px}</style><div class="op_zx_gaokao"> <h3 class="op_zx_gaokao_title t"> {%if $tplData.urlflag==1%} <span>{%$tplData.title%}</span> {%else%} <a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a> {%/if%} </h3> <p class="op_zx_gaokao_describe">{%$tplData.describe|limitlen:90%}</p> <ul class="op_zx_gaokao_main"> {%foreach $tplData.tips as $item%} <li> <h4 class="op_zx_gaokao_item_title" title="{%$item.title%}">{%$item.title|limitlen:8%}：</h4> <div class="op_zx_gaokao_item"> <p> {%foreach explode(",",$item.detail) as $dtlitems%} {%$tempDataArr=explode("|",$dtlitems)%} {%if $tempDataArr[0]%} {%if $dtlitems@first %}{%else%}<span class="op_zx_gaokao_split">|</span>{%/if%} {%if $tempDataArr[1]==none || !$tempDataArr[1]%} <span title="{%$tempDataArr[2]%}">{%$tempDataArr[0]%}</span> {%else%} <a href="{%$tempDataArr[1]%}" target="_blank">{%$tempDataArr[0]%}</a> {%/if%} {%if $tempDataArr[3]==hot || !$tempDataArr[3]%} <span class="op_zx_gaokao_hot">&nbsp;</span> {%/if%} {%if $tempDataArr[4]==new || !$tempDataArr[4]%} <span class="op_zx_gaokao_new">&nbsp;</span> {%/if%} {%/if%} {%/foreach%} </p> <p class="op_zx_gaokao_item_abs"> {%foreach explode(",",$item.abstract01) as $items%}{%if $items@first %}<span>{%$items%}</span>{%else%}<span class="op_zx_gaokao_itemsplit">{%$items%}</span>{%/if%}{%/foreach%}{%$item.abstract02%} </p> </div> </li> {%/foreach%} </ul> {%if $tplData.morelink%} {%foreach $tplData.morelink as $item%} <p><a href="{%$item.url%}" target="_blank">{%$item.title%}>></a></p> {%/foreach%} {%/if%} {%if $tplData.resources%} <p class="op_zx_gaokao_resources">{%$tplData.resources%}</p> {%/if%} {%if $tplData.showurl%} <p>{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</p> {%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}