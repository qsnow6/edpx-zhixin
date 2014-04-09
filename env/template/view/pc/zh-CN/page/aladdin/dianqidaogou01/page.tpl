{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%/block%}{%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<div> <div> <table cellspacing="0" class="op_dq01_table"> {%if $tplData.pricerank%} <tr> <td class="c-abstract-size op_dq01_table_title">{%$tplData.pricerank|escape:'html'%}</td> <td class="c-abstract-size op_dq01_link_wrap"> {%foreach $tplData.moreprice as $item%} <span><a href="{%$item['link']|escape:'html'%}" target="_blank">{%$item['value']|escape:'html'%}</a></span> {%if !$item@last%}<span class="op_dq01_link_gap">|</span>{%/if%} {%/foreach%} </td> </tr> {%/if%} {%if $tplData.brandrank%} <tr> <td class="c-abstract-size op_dq01_table_title">{%$tplData.brandrank|escape:'html'%}</td> <td class="c-abstract-size op_dq01_link_wrap"> {%foreach $tplData.morebrand as $item%} <span><a href="{%$item['link']|escape:'html'%}" target="_blank">{%$item['name']|escape:'html'%}</a></span> {%if !$item@last%}<span class="op_dq01_link_gap">|</span>{%/if%} {%/foreach%} </td> </tr> {%/if%} {%if $tplData.otherrank%} <tr> <td class="c-abstract-size op_dq01_table_title">{%$tplData.otherrank|escape:'html'%}</td> <td class="c-abstract-size op_dq01_link_wrap"> {%foreach $tplData.moreother as $item%} <span><a href="{%$item['link']|escape:'html'%}" target="_blank">{%$item['name']|escape:'html'%}</a></span> {%if !$item@last%}<span class="op_dq01_link_gap">|</span>{%/if%} {%/foreach%} </td> </tr> {%/if%} </table> </div> <div class="c-tabs"> <ul class="c-tabs-nav op_dq01_tabs op_dq01_tab OP_LOG_BTN"> {%for $index=1 to 4%} {%if $tplData["tab{%$index%}"]%}<li class="c-tabs-nav-li" tabid="{%$index%}"><a>{%$tplData["tab{%$index%}"]|escape:'html'%}</a></li>{%/if%} {%if !$index@last%}<li class="c-tabs-nav-sep"></li>{%/if%} {%/for%} </ul> {%for $index=1 to 5%} {%if $tplData["tab{%$index%}"]%} <div class="op_dq01_con{%$index%} op_dq01_content"> <ol> {%foreach $tplData["product{%$index%}"] as $escaped_p%} <li class="op_dq01_active"> <div class="OP_LOG_BTN"> <span class="c-icon c-icon-chevron-bottom c-gap-top c-gap-right"></span> <span class="op_dq01_{%$escaped_p['index']|escape:'html'%}">{%$escaped_p['index']|escape:'html'%}</span><span class="op_dq01_title">{%$escaped_p['name']|escape:'html'%}</span><b>{%$escaped_p['price']|escape:'html'%}<span>{%$escaped_p['rmb']|escape:'html'%}</span><span class="f_14">{%$escaped_p['value']|escape:'html'%}</span></b>{%if $escaped_p['url']%}<a href="{%$escaped_p['url']|escape:'html'%}" target="_blank" class="op_dq01_title_link">{%$escaped_p['name']|escape:'html'%}</a>{%/if%} </div> <div class="op_dq01_subcontent"> <table cellspacing="0" cellpadding="0"><tr> <td class="op_dq01_img {%if $tplData.icontype%}c-img6{%else%}c-img4{%/if%}"><a href="{%$escaped_p['iconurl']|escape:'html'%}" target="_blank"><img class="c-img {%if $tplData.icontype%}c-img6{%else%}c-img4{%/if%}" src="about:blank" data-src="{%$escaped_p['icon']|escape:'html'%}" alt="" /></a></td> <td class="op_dq01_td1"> <table cellspacing="0" cellpadding="0" class="op_dq01_txt"> <tr><td colspan="2" class="op_dq01_ck"> <span class="op_dq01_ck_title">{%$escaped_p['price']|escape:'html'%}</span><span>{%$escaped_p['rmb']|escape:'html'%}</span><span class="f_16">{%$escaped_p['value']|escape:'html'%}</span> {%if $escaped_p['moreprice']%}<span class="op_dq01_morepricebtn op_dq01_morepriceclose"><a onfocus="this.blur();">{%$escaped_p['moreprice']|escape:'html'%}</a></span>{%/if%} </td></tr> {%if $escaped_p['moreprice']%} <tr><td colspan="2"> <div class="op_dq01_morepricecontainer"> <ul> {%if $escaped_p['moreprice1TXT']%}<li>{%$escaped_p['moreprice1TXT']|escape:'html'%}<span>￥</span><a href="{%$escaped_p['moreprice1URL']|escape:'html'%}" target="_blank">{%$escaped_p['moreprice1Value']|escape:'html'%}</a></li>{%/if%} {%if $escaped_p['moreprice2TXT']%}<li>{%$escaped_p['moreprice2TXT']|escape:'html'%}<span>￥</span><a href="{%$escaped_p['moreprice2URL']|escape:'html'%}" target="_blank">{%$escaped_p['moreprice2Value']|escape:'html'%}</a></li>{%/if%} {%if $escaped_p['moreprice3TXT']%}<li>{%$escaped_p['moreprice3TXT']|escape:'html'%}<span>￥</span><a href="{%$escaped_p['moreprice3URL']|escape:'html'%}" target="_blank">{%$escaped_p['moreprice3Value']|escape:'html'%}</a></li>{%/if%} {%if $escaped_p['moreprice4TXT']%}<li>{%$escaped_p['moreprice4TXT']|escape:'html'%}<span>￥</span><a href="{%$escaped_p['moreprice4URL']|escape:'html'%}" target="_blank">{%$escaped_p['moreprice4Value']|escape:'html'%}</a></li>{%/if%} {%if $escaped_p['moreprice5TXT']%}<li>{%$escaped_p['moreprice5TXT']|escape:'html'%}<span>￥</span><a href="{%$escaped_p['moreprice5URL']|escape:'html'%}" target="_blank">{%$escaped_p['moreprice5Value']|escape:'html'%}</a></li>{%/if%} {%if $escaped_p['moreparamTXT']%}<li><a href="{%$escaped_p['moreparamURL']|escape:'html'%}" target="_blank" class="op_dq01_moreparam">{%$escaped_p['moreparamTXT']|escape:'html'%}</a></li>{%/if%} </ul> <div style="clear:both;"></div> </div> </td></tr> {%/if%} <tr><td colspan="2" class=""></td></tr> <tr><td>{%$escaped_p['info1']|escape:'html'%}{%$escaped_p['txt1']|limitlen:16|escape:'html'%}</td><td>{%if $escaped_p['info2']%}{%$escaped_p['info2']|escape:'html'%}{%$escaped_p['txt2']|escape:'html'%}{%/if%}</td></tr> {%if $escaped_p['info3']%}<tr><td>{%$escaped_p['info3']|escape:'html'%}{%$escaped_p['txt3']|escape:'html'%}</td><td>{%if $escaped_p['info4']%}{%$escaped_p['info4']|escape:'html'%}{%$escaped_p['txt4']|escape:'html'%}{%/if%}</td></tr>{%/if%} {%if $escaped_p['info5']%}<tr><td colspan="2" class="op_dq01_bot">{%$escaped_p['info5']|escape:'html'%}{%$escaped_p['txt5']|escape:'html'%}</td></tr>{%/if%} <tr><td colspan="2" class="op_dq01_link"> {%if $escaped_p['link1']%}<a href="{%$escaped_p['linkurl1']|escape:'html'%}" target="_blank">{%$escaped_p['link1']|escape:'html'%}</a>{%/if%} {%if $escaped_p['link2']%}<span>|</span><a href="{%$escaped_p['linkurl2']|escape:'html'%}" target="_blank">{%$escaped_p['link2']|escape:'html'%}</a>{%/if%} {%if $escaped_p['link3']%}<span>|</span><a href="{%$escaped_p['linkurl3']|escape:'html'%}" target="_blank">{%$escaped_p['link3']|escape:'html'%}</a>{%/if%} {%if $escaped_p['link4']%}<span>|</span><a href="{%$escaped_p['linkurl4']|escape:'html'%}" target="_blank">{%$escaped_p['link4']|escape:'html'%}</a>{%/if%} </td></tr> </table> </td> </tr></table> </div> </li> {%/foreach%} </ol> {%if $tplData["morelink{%$index%}"][0]['txt']%} <div class="op_dq01_morelink c-gap-top-small"><a href="{%$tplData["morelink{%$index%}"][0]['url']|escape:'html'%}" target="_blank">{%$tplData["morelink{%$index%}"][0]['txt']|escape:'html'%}</a></div> {%/if%} </div> {%/if%} {%/for%} </div></div>{%$FE_GBVAR.wrapper_suffix%}<script >
    A.setup(function() {
    	window.op_dq01_curtab = 1;{%if $tplData.curtab%}window.op_dq01_curtab = {%$tplData.curtab|escape:'html'%}{%/if%};
    });
</script>{%/block%}