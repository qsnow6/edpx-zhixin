{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='img'%}.op_teampic_list{position:relative}.op_teampic_list .op_teampic_imgdes{position:absolute;bottom:0;left:0;width:100%;padding:1px 0;background:#000;filter:alpha(opacity:63);opacity:.63}.op_teampic_list span{display:block;text-align:center;color:#fff;position:absolute;bottom:0;left:0;width:100%;padding:1px 0}.op_teampic_list img{height:92px}</style>{%if $tplData.tip%}<p>{%$tplData.tip|limitlen:150|highlight:0%}</p>{%/if%}<div class="c-row c-gap-top"> {%foreach $tplData.img as $item%} {%if $item@index < 4%} <div class="c-span6{%if $item@index == $tplData.img|count-1%} c-span-last{%/if%} op_teampic_list"> <a href="{%if $item.imglinkurl%}{%$item.imglinkurl%}{%/if%}" target="_blank"><img class="c-img c-img6" src="{%if $item.imgurl%}{%$item.imgurl%}{%/if%}" /></a> {%if $item.imgtext%}<div class="op_teampic_imgdes">&nbsp;</div><span>{%$item.imgtext%}</span>{%/if%} </div> {%/if%} {%/foreach%}</div>{%if $tplData.showmore%}<p class="c-gap-top-small"><a href="{%$tplData.url%}" target="_blank">{%$tplData.showmore%}</a></p>{%/if%}{%/block%}