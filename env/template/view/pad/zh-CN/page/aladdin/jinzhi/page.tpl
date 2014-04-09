{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$extData.feData.hasBorder=true%}{%$tplData.showurl='open.baidu.com/'%}{%/block%}{%block name='title'%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='tool'%}{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='input'%}{%fe_fn_c_css css='dropdown2'%}.op_jinzhi_sub_title{font-family:"微软雅黑" arial;font-size:1.23em}.op_jinzhi_result{font-family:"微软雅黑" arial;font-size:1.69em;word-break:break-all;word-wrap:break-word}.op_jinzhi_table .c-dropdown2{width:120px}.op_jinzhi_table td{vertical-align:top}.op_jinzhi_table td.op_jinzhi_td_sp{vertical-align:middle;font-weight:bold}.op_jinzhi_errors span,.op_jinzhi_roundingtip{display:none;color:#f00}</style><div class="c-row"> <div class="c-span3"> <i class="c-tool c-tool-conversion"></i> </div> <div class={%*i*%}"c-span21 c-span-last"> <div class="op_jinzhi_sub_title">进制转换</div> <div class="op_jinzhi_result">{%$tplData.originNumber|escape:'html'%}({%$tplData.jinzhiFrom|escape:'html'%}) = {%$tplData.finalNumber|escape:'html'%}({%$tplData.jinzhiTo|escape:'html'%})</div> <div class="op_jinzhi_roundingtip" {%if $tplData.isRounding%}style="display:block;"{%/if%}>超出计算精度，结果保留十六位小数</div> </div></div><div class="c-gap-top"> <table class="op_jinzhi_table" cellpadding="0" cellspacing="0"> <tr> <td><input class="c-input c-input-mini c-gap-right op_jinzhi_txt" type="text" value="{%if $tplData.originNumber!=''%}{%$tplData.originNumber%}{%/if%}" maxlength="76"></td> <td> <div class="c-dropdown2 c-gap-right op_jinzhi_from OP_LOG_BTN"  data-click="{fm:'beha'}"> <div class="c-dropdown2-btn-group"> <div class="c-dropdown2-btn">{%if $tplData.jinzhiFrom%}{%$tplData.jinzhiFrom%}{%else%}所持转换类型{%/if%}</div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <ul  class="c-dropdown2-menubox"> </ul> </div> </div> </div> </td> <td class="op_jinzhi_td_sp"><span class="c-gap-right">转换为</span></td> <td> <div class="c-dropdown2 c-gap-right op_jinzhi_to OP_LOG_BTN" data-click="{fm:'beha'}"> <div class="c-dropdown2-btn-group"> <div class="c-drop{%*i*%}down2-btn">{%if $tplData.jinzhiTo%}{%$tplData.jinzhiTo%}{%else%}转换类型{%/if%}</div> <div class="c-dropdown2-btn-icon"> <div class="c-dropdown2-btn-icon-border"> <i class="c-icon c-icon-triangle-down"></i> </div> </div> </div> <div class="c-dropdown2-menu"> <div class="c-dropdown2-menu-inner"> <ul  class="c-dropdown2-menubox"> </ul> </div> </div> </div> </td> <td><button class="c-btn c-btn-primary op_jinzhi_exchange">转换</button></td> </tr> <tr class="op_jinzhi_errors"> <td>{%if $tplData.errcode=='2'%}<span class="op_jinzhi_txt_e" style="display:inline;">超出计算范围</span>{%else%}<span class="op_jinzhi_txt_e"></span>{%/if%}</td> <td><span class="op_jinzhi_from_e"></span></td> <td></td> <td><span class="op_jinzhi_to_e"></span></td> <td></td> </tr> <tr> <td colspan="5" class="op_jinzhi_errors"><span class="op_jinzhi_rtxt"></span></td> </tr> </table></div><div class="c-gap-top" style="color:#666;">可进行2-36进制之间的整数、小数等快速转换。</div><script >
    A.setup({
        currency1: '{%$tplData.jinzhiFrom|escape:'javascript'%}',
        currency2: '{%$tplData.jinzhiTo|escape:'javascript'%}',
        errcode: '{%$tplData.errcode|escape:'javascript'%}',
        number1: '{%$tplData.originNumber|escape:'javascript'%}'
    });
</script><script  data-merge>A.setup(function() {var _this = this;var ie6=!-[1,]&&!window.XMLHttpRequest;var btn = _this.find('.op_jinzhi_exchange')[0];var txt = _this.find('.op_jinzhi_txt')[0];var txt_e = _this.find('.op_jinzhi_txt_e')[0];var cur1_e = _this.find('.op_jinzhi_from_e')[0];var cur2_e = _this.find('.op_jinzhi_to_e')[0];var resultDOM = _this.find('.op_jinzhi_result')[0];var rTxt = _this.find('.op_jinzhi_rtxt')[0];var rTip=_this.find('.op_jinzhi_roundingtip')[0];if (ie6) {try {documen{%*i*%}t.execCommand('BackgroundImageCache', false, true);} catch (err) {}}var cur1Container = _this.find('.op_jinzhi_from')[0];var cur2Container = _this.find('.op_jinzhi_to')[0];var cur1={value:_this.data.currency1};var cur2={value:_this.data.currency2};var cur1ListOptions=[];var cur2ListOptions=[];var currencyArray = ['二进制|二进制', '三进制|三进制', '四进制|四进制', '五进制|五进制', '六进制|六进制', '七进制|七进制', '八进制|八进制', '九进制|九进制', '十进制|十进制', '十一进制|十一进制', '十二进制|十二进制', '十三进制|十三进制', '十四进制|十四进制', '十五进制|十五进制', '十六进制|十六进制', '十七进制|十七{%*i*%}进制', '十八进制|十八进制', '十九进制|十九进制', '二十进制|二十进制', '二十一进制|二十一进制', '二十二进制|二十二进制', '二十三进制|二十三进制', '二十四进制|二十四进制', '二十五进制|二十五进制', '二十六进制|二十六进制', '二十七进制|二十七进制', '二十八进制|二十八进制', '二十九进制|二十九进制', '三十进制|三十进制', '三十一进制|三十一进制', '三十二进制|三十二进制', '三十三进制|三十三进制', '三十四进制|三十四进制', '三十五进制|三十五进制', '三十六进制|三十六进制'];for (var i = 0, len = currencyArray.length; i < len; i++) {var items = currencyArray[i].split('|');cur1ListOptions.push(['<li class="c-dropdown2-option" data-value="',items[0],'"',_this.data.currency1===items[1]?' data{%*i*%}-selected="selected"':'','>',items[1],'</li>'].join(''));cur2ListOptions.push(['<li class="c-dropdown2-option" data-value="',items[0],'"',_this.data.currency2===items[1]?' data-selected="selected"':'','>',items[1],'</li>'].join(''));}cur1Container.getElementsByTagName('ul')[0].innerHTML=cur1ListOptions.join('');cur2Container.getElementsByTagName('ul')[0].innerHTML=cur2ListOptions.join('');var jinzhiJSON = {};jinzhiJSON.getData = function(data) {rTip.style.display = data.isRounding ? 'block' : 'n{%*i*%}one';rTxt.style.display='none';rTxt.innerHTML = '';resultDOM.innerHTML = [data.originNumber, '(', data.jinzhiFrom, ')', ' = ', data.finalNumber, '(', data.jinzhiTo, ')'].join('');};jinzhiJSON.errorData = function() {rTip.style.display = 'none';rTxt.style.display = 'inline';rTxt.innerHTML = txt.value + '并非' + cur1.getValue() + '的有效数值，请重新输入';};function getResult(query) {var resourceId = 6013;_this.ajax(query, resourceId, {success: function(data) {if (data && data[0]) {jinzhiJSON.getData(data[0]);}{%*i*%}else {jinzhiJSON.errorData();}},error: function() {jinzhiJSON.errorData();},timeout: function() {jinzhiJSON.errorData();}});}function trim(s) {var trimer = new RegExp('[\\s\\t\\xa0\\u3000]+', 'g');return s.replace(trimer, '');}function checkOpt(c1, c2, err1, err2) {var enable = false;if (c1.getValue() == '') {err1.innerHTML = '请选择转换类型';err1.style.display = 'inline';rTxt.style.display='none';rTxt.innerHTML = '';}else if (c1.getValue() === c2.getValue()) {err1.innerHTML = '请选择不同的进制类型';err1.style.d{%*i*%}isplay = 'inline';rTxt.style.display='none';rTxt.innerHTML = '';}else {err1.style.display = 'none';if (c2.getValue() != '') {err2.style.display = 'none';}enable = true;}return enable;}function checkVal(o, err) {var enable = true;var val = trim(o.value);if (!val) {o.value = val = 1;}if (!(new RegExp('^([0-9a-zA-Z\.\-])+\x24')).test($.trim(o.value))) {err.innerHTML = '请输入有效字符';err.style.display = 'inline';rTxt.style.display='none';rTxt.innerHTML = '';enable = false;}else {err.style.display = 'none{%*i*%}';}return enable;}$(txt).blur(function(){checkVal(txt, txt_e);});$(btn).click(function(){var s1 = checkVal(txt, txt_e),s2 = checkOpt(cur1, cur2, cur1_e, cur2_e),s3 = checkOpt(cur2, cur1, cur2_e, cur1_e);if (s1 && s2 && s3) {var floatValue = $.trim(txt.value);var query = floatValue + cur1.getValue() + '转换为' + cur2.getValue();getResult(query);}});A.use('dropdown21',function(){cur1 = A.ui.dropdown21(cur1Container,{onchange:function(e){checkOpt(cur1, cur2, cur1_e, cur2_e);}});cur2 = A.ui.dropdown21({%*i*%}cur2Container,{onchange:function(e){checkOpt(cur2, cur1, cur2_e, cur1_e);}}); });this.dispose = function(){cur1&&cur1.dispose&&cur1.dispose();cur2&&cur2.dispose&&cur2.dispose();};});</script>{%/block%}