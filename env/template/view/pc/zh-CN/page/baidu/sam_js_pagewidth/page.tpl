{%extends file='baidu/page.tpl'%} {%block name="layout_warpper_start"%}<div id='gcw'></div><script>var SCW = G('gcw').offsetWidth;</script><div id="out"><div id="in"><div id="wrapper">{%/block%}{%block name="layout_container_start"%}<div id="container" class="container_s"><script>if(SCW > 1207){G('container').className = 'container_l'};bds.ready(function(){baidu.on(window,"resize",function(){bds.util.setContainerWidth();});});</script>{%/block%}{%block name="__fis_page_header_block__"%}{%include file="widget/baidu/module_static_include/module_static_include.tpl" caching%}{%/block%}