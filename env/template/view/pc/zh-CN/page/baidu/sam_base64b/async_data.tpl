{%extends file='baidu/async_data.tpl'%} {%* ************************************************************* *%}{%* base64 *%}{%block name="global_header_vars_ext"%}{%$PDC_ID = 602%}{%* base64小流量试验直接命中性能监控 by lizhouquan *%}{%$PDC = true%}{%/block%}{%block name="content_right_bottom"%}<script>if(bds.base64){bds.base64.setDomLoad("right");}</script>{%/block%}{%block name="content_script_ext"%}<script>var bds = bds || {};bds.base64 = (function () {var _rightDomId = "content_right"; var init = function(){_reqStart = new Date()*1;};var setRightLoad = function(){var imgs = document.getElementById(_rightDomId).getElementsByTagName("IMG");var hasrp = 0;var onlyrp = 1;for(var i=0;i<imgs.length;i++){if(imgs[i].className.indexOf("relaperson")>0){hasrp = 1;}else{onlyrp = 0;}}bds.comm.cusval = "b64b_" + imgs.length + "_" + hasrp + "_" + onlyrp;};return {init : init,rightReady : setRightLoad}})({%*i*%});bds.base64.init();</script>{%/block%}