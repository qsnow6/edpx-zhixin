{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasTitleGap=false%}{%$extData.feData.hasShowURLGap=true%}{%/block%}{%block name='content'%} <style>{%fe_fn_c_css css='table'%}</style><table cellspacing="0" cellpadding="0" class="c-table"> <tr> {%foreach array_slice($tplData.site,0,5) as $item%} <td>{%if $item.sitename%}<a href="{%if $item.siteurl%}{%$item.siteurl%}{%else%}{%$tplData.url%}{%/if%}" target="_blank">{%$item.sitename|limitlen:12|escape:'html'%}</a>{%/if%}</td> {%/foreach%} </tr> <tr> {%foreach array_slice($tplData.site,5,5) as $item%} <td>{%if $item.sitename%}<a href="{%if $item.siteurl%}{%$item.siteurl%}{%else%}{%$tplData.url%}{%/if%}" target="_blank">{%$item.sitename|limitlen:12|escape:'html'%}</a>{%/if%}</td> {%/foreach%} </tr> <tr> {%foreach array_slice($tplData.site,10,5) as $item%} <td>{%if $item.sitename%}<a href="{%if $item.siteurl%}{%$item.siteurl%}{%else%}{%$tplData.url%}{%/if%}" target="_blank">{%$item.sitename|limitlen:12|escape:'html'%}</a>{%/if%}</td> {%/foreach%} </tr> </table>{%/block%}