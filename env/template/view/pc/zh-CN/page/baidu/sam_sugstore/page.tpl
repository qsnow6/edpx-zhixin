{%extends file='baidu/page.tpl'%} {%block name="foot_script_logic_ext"%}{%if $isUserLogin == 1%}{%else%}<script>$(function(){$('#head form') && $('#head form').addClass('showsugstore');$('#form1 form') && $('#form1 form').addClass('showsugstore');var prefurl = 'http://www.baidu.com/gaoji/preferences_s.html';$('#u1 a:first') && $('#u1 a:first').attr('href',prefurl);$('#u a:first') && $('#u a:first').attr('href',prefurl);});</script>{%/if%}{%/block%}