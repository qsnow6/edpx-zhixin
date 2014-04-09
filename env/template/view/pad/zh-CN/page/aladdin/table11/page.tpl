{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $tplData.content1%}{%$extData.feData.hasTitleGap=false%}{%/if%}{%if !$tplData.link && !$tplData.content2 && !$tplData.docicon%}{%$extData.feData.hasShowURLGap=true%}{%/if%}{%/block%}{%block name='content'%} <style data-merge>{%fe_fn_c_css css='table'%}{%fe_fn_c_css css='btn'%}</style> {%if $tplData.content1%} <div class="c-gap-bottom-small">{%$tplData.content1|highlight:0%}</div> {%/if%} <table border="0" cellpadding="0" cellspacing="0" class="c-table"> <tr class="c-table-hihead"> {%if $tplData.form[0]['col0']%}<th>{%$tplData.form[0]['col0']|escape:'html'%}</th>{%/if%} {%if $tplData.form[0]['col1']%}<th>{%$tplData.form[0]['col1']|escape:'html'%}</th>{%/if%} {%if $tplData.form[0]['col2']%}<th>{%$tplData.form[0]['col2']|escape:'html'%}</th>{%/if%} {%if $tplData.form[0]['col3']%}<th>{%$tplData.form[0]['col3']|escape:'html'%}</th>{%/if%} {%if $tplData.form[0]['col4']%}<th>{%$tplData.form[0]['col4']|escape:'html'%}</th>{%/if%} {%if $tplData.form[0]['col5']%}<th>{%$tplData.form[0]['col5']|escape:'html'%}</th>{%/if%} </tr> {%foreach array_slice($tplData.form,1) as $item%} <tr> {%if $item['col0']%} <td>{%if $item['col0link']%}<a href="{%$item['col0link']%}" target="_blank">{%elseif $item['col0btn']%}<a class="c-btn c-btn-mini" href="{%$item['col0btn']%}" target="_blank">{%/if%}{%$item['col0']|highlight:0%}{%if $item['col0link']||$item['col0btn']%}</a>{%/if%}</td> {%/if%} {%if $item['col1']%} <td>{%if $item['col1link']%}<a href="{%$item['col1link']%}" target="_blank">{%elseif $item['col1btn']%}<a class="c-btn c-btn-mini" href="{%$item['col1btn']%}" target="_blank">{%/if%}{%$item['col1']|highlight:0%}{%if $item['col1link']||$item['col1btn']%}</a>{%/if%}</td> {%/if%} {%if $item['col2']%} <td>{%if $item['col2link']%}<a href="{%$item['col2link']%}" target="_blank">{%elseif $item['col2btn']%}<a class="c-btn c-btn-mini" href="{%$item['col2btn']%}" target="_blank">{%/if%}{%$item['col2']|highlight:0%}{%if $item['col2link']||$item['col2btn']%}</a>{%/if%}</td> {%/if%} {%if $item['col3']%} <td>{%if $item['col3link']%}<a href="{%$item['col3link']%}" target="_blank">{%elseif $item['col3btn']%}<a class="c-btn c-btn-mini" href="{%$item['col3btn']%}" target="_blank">{%/if%}{%$item['col3']|highlight:0%}{%if $item['col3link']||$item['col3btn']%}</a>{%/if%}</td> {%/if%} {%if $item['col4']%} <td>{%if $item['col4link']%}<a href="{%$item['col4link']%}" target="_blank">{%elseif $item['col4btn']%}<a class="c-btn c-btn-mini" href="{%$item['col4btn']%}" target="_blank">{%/if%}{%$item['col4']|highlight:0%}{%if $item['col4link']||$item['col4btn']%}</a>{%/if%}</td> {%/if%} {%if $item['col5']%} <td>{%if $item['col5link']%}<a href="{%$item['col5link']%}" target="_blank">{%elseif $item['col5btn']%}<a class="c-btn c-btn-mini" href="{%$item['col5btn']%}" target="_blank">{%/if%}{%$item['col5']|highlight:0%}{%if $item['col5link']||$item['col5btn']%}</a>{%/if%}</td> {%/if%} </tr> {%/foreach%} </table> {%if $tplData.link[0]['linkurl']%} <div class="c-gap-top"> <a href="{%$tplData.link[0]['linkurl']%}" target="_blank"> {%$tplData.link[0]['linkcontent']|escape:'html'%} <span style="font-family:simsun">>></span> </a> </div> {%/if%} {%if $tplData.content2 || $tplData.docicon%} <table class="c-gap-top-small"> {%if $tplData.content2%} <tr> <td> {%if $tplData.icon[0]['iconaddress']%}<a class="c-gap-right-small"{%if $tplData.icon[0]['iconlink']%} href="{%$tplData.icon[0]['iconlink']%}"{%/if%} style="border:0;"><img src="{%$tplData.icon[0]['iconaddress']%}" style="width:21px;height:21px;vertical-align:middle;"></a>{%/if%} </td> <td>{%if $tplData.content2%}<span style="font-weight:bold">{%$tplData.content2|escape:'html'%}</span>{%/if%}</td> </tr> {%/if%} {%if $tplData.docicon%} <tr> <td> {%if $tplData.docicon[0]['dociconaddress']%}<a class="c-gap-right-small"{%if $tplData.docicon[0]['dociconlink']%} href="{%$tplData.docicon[0]['dociconlink']%}"{%/if%} style="border:0;"><img src="{%$tplData.docicon[0]['dociconaddress']%}" style="width:21px;height:21px;vertical-align:middle;"></a>{%/if%} </td> <td>{%if $tplData.docicon[0]['doctips']%}{%$tplData.docicon[0]['doctips']|escape:'html'%}{%/if%}</td> </tr> {%/if%} </table> {%/if%}{%/block%}