{%fis_widget%}<style>.sub_link_tb{margin-left:18px}.sub_link_a{line-height:24px;font-size:14px}.sub_link_td_1{padding-left:145px}</style><table class="sub_link_tb" cellspacing=0 cellpadding=0>{%foreach $res.dispData.sublink.sub_link as $alink%}{%if $alink@index%2%}<td class="sub_link_td_1">{%else%}<tr><td class="sub_link_td_0">{%/if%}<a class="sub_link_a" target="_blank" href="{%$alink.link%}">{%$alink.title|limitlen:20|vui_escape:'html'%}</a>{%if $alink@index%2%}</td></tr>{%else%}</td>{%/if%}{%/foreach%}</table>{%/fis_widget%}