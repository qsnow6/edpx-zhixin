{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op_zx_baike_main{background:#f8f8f8;padding:15px 10px;width:615px}.op_zx_baike_main h3{margin:0 0 8px}.op_zx_baike_main h3 a{font-size:.92em}.op_zx_baike_abstract{margin:0}.op_zx_baike_abstract dt{font-size:1.07em;margin-bottom:8px}.op_zx_baike_abstract dd{line-height:22px;margin:0}.op_zx_baike_other_ep{font-size:1em;margin-top:5px;font-family:arial}.op_zx_baike_other_ep span{float:left;color:#03c}.op_zx_baike_other_ep span a{font-size:1em}.op_zx_baike_other_ep .op_zx_baike_other_ep_spli{%*i*%}t{padding:0 4px}.op_zx_baike_clearfix:after{content:"\0020";display:block;height:0;clear:both;visibility:hidden}.op_zx_baike_clearfix{zoom:1}</style> <font  class="click-parent-reward" urdata="{pid:'video',type:'tvplay'}"> <div class="op_zx_baike_main"> <h3><a target="_blank" href="{%$tplData.url%}">{%$tplData.title|limitlen:60|highlight:0%}</a></h3> <dl class="op_zx_baike_abstract"> <dd>{%$tplData.abstract|limitlen:180%}</dd> </dl> {%if $tplData.baikelink|count>2%} <div class="op_zx_baike_other_ep op_zx_baike_clearfix"> {%foreach $tplData.baikelink as $item%} {%if $item@index > 5%}{%break%}{%/if%} {%if $item@index == 5%} <span><a target="_blank" href="{%$tplData.url%}" style="font-family:simsun">查看更多&gt;&gt;</a></span> {%else if $item@index == $tplData.baikelink|count - 1%} <span><a target="_blank" href="{%$item.link%}">{%$item.name|limitlen:10%}</a></span><span class="op_zx_baike_other_ep_split">-</span><span><a target="_blank" href="{%$tplData.url%}" style="font-family:simsun">查看更多&gt;&gt;</a></span> {%else%} <span><a target="_blank" href="{%$item.link%}">{%$item.name|limitlen:10%}</a></span><span class="op_zx_baike_other_ep_split">-</span> {%/if%} {%/foreach%} </div> {%/if%} </div></font>{%$FE_GBVAR.wrapper_suffix%}{%/block%}