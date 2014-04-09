{%extends 'c_base.tpl'%} {%block name='content'%}<table class="c-table"> <tr class="c-table-hihead"> <th width="56">{%$tplData.th[0]['col1']|escape:'html'%}</th> <th width="100">{%$tplData.th[0]['col2']|escape:'html'%}</th> <th>{%$tplData.th[0]['col3']|escape:'html'%}</th> {%if $tplData.th[0]['col4']%}<th width="90">{%$tplData.th[0]['col4']|escape:'html'%}</th>{%/if%} </tr></table> <table class="c-table"> {%foreach array_slice($tplData.local, 0, intval($tplData.showitem)) as $item%} <tr> <td width="56">{%$item.name|escape:'html'%}</td> <td width="100">{%$item.time|escape:'html'%}</td> <td>{%if $item.way1%}<p>{%$item.way1|escape:'html'%}{%if $item.way1link%}<a href="{%$item.way1link%}" target="_blank">{%$item.way1linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way2%}<p>{%$item.way2|escape:'html'%}{%if $item.way2link%}<a href="{%$item.way2link%}" target="_blank">{%$item.way2linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way3%}<p>{%$item.way3|escape:'html'%}{%if $item.way3link%}<a href="{%$item.way3link%}" target="_blank">{%$item.way3linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way4%}<p>{%$item.way4|escape:'html'%}{%if $item.way4link%}<a href="{%$item.way4link%}" target="_blank">{%$item.way4linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} </td> {%if $tplData.th[0]['col4']%} <td width="90"> {%if $item.mark%}<p>{%if $item.marklink%}<a href="{%$item.marklink%}" target="_blank">{%$item.mark|escape:'html'%}</a>{%else%}{%$item.mark|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark2%}<p>{%if $item.mark2link%}<a href="{%$item.mark2link%}" target="_blank">{%$item.mark2|escape:'html'%}</a>{%else%}{%$item.mark2|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark3%}<p>{%if $item.mark3link%}<a href="{%$item.mark3link%}" target="_blank">{%$item.mark3|escape:'html'%}</a>{%else%}{%$item.mark3|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark4%}<p>{%if $item.mark4link%}<a href="{%$item.mark4link%}" target="_blank">{%$item.mark4|escape:'html'%}</a>{%else%}{%$item.mark4|escape:'html'%}{%/if%}</p>{%/if%} </td> {%/if%} </tr> {%/foreach%}</table><table class="c-table op_cee1_tb" > {%foreach array_slice($tplData.local,intval($tplData.showitem)) as $item%} <tr> <td width="56">{%$item.name|escape:'html'%}</td> <td width="100">{%$item.time|escape:'html'%}</td> <td>{%if $item.way1%}<p>{%$item.way1|escape:'html'%}{%if $item.way1link%}<a href="{%$item.way1link%}" target="_blank">{%$item.way1linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way2%}<p>{%$item.way2|escape:'html'%}{%if $item.way2link%}<a href="{%$item.way2link%}" target="_blank">{%$item.way2linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way3%}<p>{%$item.way3|escape:'html'%}{%if $item.way3link%}<a href="{%$item.way3link%}" target="_blank">{%$item.way3linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} {%if $item.way4%}<p>{%$item.way4|escape:'html'%}{%if $item.way4link%}<a href="{%$item.way4link%}" target="_blank">{%$item.way4linkcontent|escape:'html'%}</a>{%/if%}</p>{%/if%} </td> {%if $tplData.th[0]['col4']%} <td width="90" > {%if $item.mark%}<p>{%if $item.marklink%}<a href="{%$item.marklink%}" target="_blank">{%$item.mark|escape:'html'%}</a>{%else%}{%$item.mark|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark2%}<p>{%if $item.mark2link%}<a href="{%$item.mark2link%}" target="_blank">{%$item.mark2|escape:'html'%}</a>{%else%}{%$item.mark2|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark3%}<p>{%if $item.mark3link%}<a href="{%$item.mark3link%}" target="_blank">{%$item.mark3|escape:'html'%}</a>{%else%}{%$item.mark3|escape:'html'%}{%/if%}</p>{%/if%} {%if $item.mark4%}<p>{%if $item.mark4link%}<a href="{%$item.mark4link%}" target="_blank">{%$item.mark4|escape:'html'%}</a>{%else%}{%$item.mark4|escape:'html'%}{%/if%}</p>{%/if%} </td> {%/if%} </tr> {%/foreach%}</table>{%if $tplData.more||$tplData.txtmore[0]['txt']%}<div class="op_cee1_btn_bar c-gap-top-small"> {%if $tplData.more%}<div class="op_cee1_toggle_btn"><i class="c-icon c-icon-chevron-unfold"></i><span class="c-gap-left-small">{%$tplData.more|escape:'html'%}</span></div>{%/if%} {%if $tplData.txtmore[0]['txt']%}<a href="{%$tplData.txtmore[0]['txtLink']%}" target="_blank">{%$tplData.txtmore[0]['txt']|escape:'html'%}</a>{%/if%}</div>{%/if%}<script >A.setup(function() {var T = A.baidu;var _this = this;var tb = _this.find('.op_cee1_tb')[0];$(tb).hide();op_cee1_showitem = {%$tplData.showitem|escape:'html'%};op_cee1_more = '{%if $tplData.more%}{%$tplData.more|escape:'html'%}{%/if%}';function toggleClass(element,class1,class2) {$(element).removeClass(class1).addClass(class2)}if (op_cee1_more) {var op_cee1_toggle_btn = _this.find('.op_cee1_toggle_btn')[0],op_cee1_toggle_icon = op_cee1_toggle_btn.getElementsByTagName('i')[0],text = op_cee1_toggle_btn.getElementsByTagName('span')[0],btn_txt = text.innerHTML;$(op_cee1_toggle_btn).click(function() {if ($(op_cee1_toggle_icon).hasClass('c-icon-chevron-unfold')) {$(tb).show(); toggleClass(op_cee1_toggle_icon, 'c-icon-chevron-unfol{%*i*%}d', 'c-icon-chevron-fold');text.innerHTML = '收起';}else {$(tb).hide(); toggleClass(op_cee1_toggle_icon, 'c-icon-chevron-fold', 'c-icon-chevron-unfold');text.innerHTML = btn_txt;}});}});</script>{%/block%}