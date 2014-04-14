{%extends 'c_right_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.narrow = true%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='table'%}.opr_commontable_moreshow a{padding-right:3px}.opr_commontable_tab tr.opr_commontable_trmore,.opr_commontable_dishonestymore{display:none}.opr_commontable_tab tr td:last-child{text-align:right}.opr_commontable_linebg{background:#fafafa}.opr_commontable_more{float:right}</style><div class="cr-title c-gap-bottom-small"> {%if count($tplData.list) > $tplData.countnumber && $tplData.more && !$tplData.showMark%} <a class="cr-title-sub" href="{%$tplData.more[0]['link']%}" target="_blank" title="{%$tplData.more[0]['txt']|escape:'html'%}">{%$tplData.more[0]['txt']|limitlen:28|escape:'html'%}</a> {%/if%} {%if $tplData.showMark && count($tplData.list)>$tplData.countnumber%} <span class="cr-title-sub opr_commontable_moreshow"><a href="javascript:;" data-click="{'fm':'beha'}">展开</a><i class="c-icon c-icon-chevron-bottom"></i></span> {%/if%} <span title="{%$tplData.subtitle|escape:'html'%}">{%$tplData.subtitle|limitlen:28|escape:'html'%}</span></div><table class="c-table opr_commontable_tab"> {%foreach array_slice($tplData.list, 0, $tplData.countnumber) as $item%} <tr data-click="{'rsv_re_ename':'{%$item.txt1%}'}"> <td title="{%$item.txt1%}"> {%if $item.count%} <span class="c-gap-right-small">{%$item.count%}</span> {%/if%} {%if $item.params%} {%$params=$item.params%} <a href="{%build_search_url params=$params%}" onclick="return false;" target="_blank" data-click="{'rsv_ename':'{%$item.txt1%}'}">{%$item.txt1|escape%}</a> <a href="{%build_search_url params=$params%}" target="_blank" class="opr_commontable_hidden_a"></a> {%elseif !$item.params && $item.link1%} <a href="{%$item.link1%}" onclick="return false;" target="_blank" data-click="{'rsv_ename':'{%$item.name%}'}">{%$item.txt1|escape%}</a> <a href="{%$item.link1%}" target="_blank" class="opr_commontable_hidden_a"></a> {%else%} <span>{%$item.txt1|escape%}</span> {%/if%} </td> {%if $item.txt2%} <td title="{%$item.txt2|escape%}">{%if $item.link2%}<a href="{%$item.link2%}" target="_blank">{%$item.txt2|escape%}</a>{%else%}{%$item.txt2|escape%}{%/if%}</td> {%/if%} {%if $item.txt3%} <td title="{%$item.txt3|escape%}">{%if $item.link3%}<a href="{%$item.link3%}" target="_blank">{%$item.txt3|escape%}</a>{%else%}{%$item.txt3|escape%}{%/if%}</td> {%/if%} </tr> {%/foreach%} {%if $tplData.showMark && count($tplData.list)>$tplData.countnumber%} {%foreach array_slice($tplData.list, $tplData.countnumber, (20-$tplData.countnumber)) as $item%} <tr class="opr_commontable_trmore" data-click="{'rsv_re_ename':'{%$item.txt1%}'}"> <td title="{%$item.txt1%}"> {%if $item.count%} <span class="c-gap-right-small">{%$item.count%}</span> {%/if%} {%if $item.params%} {%$params=$item.params%} <a href="{%build_search_url params=$params%}" onclick="return false;" target="_blank" data-click="{'rsv_ename':'{%$item.txt1%}'}">{%$item.txt1|escape%}</a> <a href="{%build_search_url params=$params%}" target="_blank" class="opr_commontable_hidden_a"></a> {%elseif !$item.params && $item.link1%} <a href="{%$item.link1%}" target="_blank" data-click="{'rsv_ename':'{%$item.name%}'}">{%$item.txt1|escape%}</a> <a href="{%$item.link1%}" target="_blank" class="opr_commontable_hidden_a"></a> {%else%} <span>{%$item.txt1|escape%}</span> {%/if%} </td> {%if $item.txt2%} <td title="{%$item.txt2|escape%}">{%if $item.link2%}<a href="{%$item.link2%}" target="_blank">{%$item.txt2|escape%}</a>{%else%}{%$item.txt2|escape%}{%/if%}</td> {%/if%} {%if $item.txt3%} <td title="{%$item.txt3|escape%}">{%if $item.link3%}<a href="{%$item.link3%}" target="_blank">{%$item.txt3|escape%}</a>{%else%}{%$item.txt3|escape%}{%/if%}</td> {%/if%} </tr> {%/foreach%} {%/if%}</table>{%if $tplData.txtmore[0] || ($tplData.showMark && $tplData.more && count($tplData.list)>20)%}<div class="c-gap-top-small c-clearfix"> {%if $tplData.txtmore[0]%} <span class="opr_commontable_more c-gray">{%$tplData.txtmore[0].tip%}{%if $tplData.txtmore[0].url%}<a class="c-gray" href="{%$tplData.txtmore[0].url%}" target="_blank">{%$tplData.txtmore[0].txt%}</a>{%else%}{%$tplData.txtmore[0].txt%}{%/if%}</span> {%/if%} {%if count($tplData.list)>20 && $tplData.more%}<a class="opr_commontable_dishonestymore" href="{%$tplData.more[0].link%}" target="_blank">{%$tplData.more[0].txt%}</a>{%/if%}</div>{%/if%}<script data-merge>A.setup(function() {var _this = this,$moreshow = _this.find(".opr_commontable_moreshow").eq(0),$trlist = _this.find(".opr_commontable_tab").find("tr");$trlist.each(function(i, n){var $tr = $(n);$tr.find("td:last-child").attr("style","text-align:right");$tr.find("td:first-child").attr("style","padding-left:0;");if($tr.find('.opr_commontable_hidden_a').length>0){$tr.hover(function(){$tr.addClass("opr_commontable_linebg").css("cursor","pointer");},function(){$tr.removeClass("opr_{%*i*%}commontable_linebg");});$tr.click(function(){var dateLink = $tr.find('td:first a.opr_commontable_hidden_a').get(0);dateLink && dateLink.click();});}});if($moreshow.length){var $showa = $moreshow.find("a").eq(0);var $showicon = $moreshow.find("i").eq(0);var $showtrmore = _this.find(".opr_commontable_trmore");var $dishonestymore = _this.find(".opr_commontable_dishonestymore");$moreshow.on('click',function(){if($showa.html() == "展开"){if($dishonestymore.length){$dishonestymore.show();}$showtrmore.sh{%*i*%}ow();$showa.html("收起");$showicon.addClass("c-icon-chevron-top");}else{if($dishonestymore.length){$dishonestymore.hide();}$showtrmore.hide();$showa.html("展开");$showicon.removeClass("c-icon-chevron-top");}});}});</script>{%/block%}