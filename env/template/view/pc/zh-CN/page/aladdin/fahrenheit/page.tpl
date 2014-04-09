{%extends 'c_base.tpl'%} {%block name='foot'%}{%/block%}{%block name='content'%}<table cellspacing="0" cellpadding="0"><tr>{%if $tplData.imgurl!=""%}<td valign="top" class="op_cvt_i"> <img src="{%$tplData.imgurl|escape:'html'%}" style="width:64px;height:64px;"/></td>{%/if%}<td style="padding-top:6px">{%if $tplData.subTitle!=""%}<div class="op_cvt_t">{%$tplData.subTitle|escape:'html'%}</div>{%/if%}<div class="op_cvt_r_box">{%if $tplData.content1!=""%}<div class="op_cvt_r"><span>{%$tplData.content1|escape:'html'%}</span></div>{%/if%}{%if $tplData.content2!=""%}<div class="op_cvt_r"><span>{%$tplData.content2|escape:'html'%}</span></div>{%/if%}{%if $tplData.content3!=""%}<div class="op_cvt_r"><span>{%$tplData.content3|escape:'html'%}</span></div>{%/if%}</div><div class="op_cvt"><table class="op_cvt_table" cellspacing="0" cellpadding="0"><tr><td><span><select class="op_cvt_type">{%if $tplData.type!=""%}<option>{%$tplData.type|escape:'html'%}</option>{%/if%}</select></span></td><td><span><input class="op_cvt_txt" type="text" value="1" maxlength="13"></span></td><td><span><select class="op_cvt_from">{%if $tplData.unit1!=""%}<option>{%$tplData.unit1|escape:'html'%}</option>{%/if%}</select></span></td><td><span><b>转换为</b></span></td><td><span><select class="op_cvt_to">{%if $tplData.unit2!=""%}<option>{%$tplData.unit2|escape:'html'%}</option>{%/if%}</select></span></td><td><a class="op_cvt_btn OP_LOG_BTN" href="#" onclick="return false;">转换</a></td></tr><tr><td><span class="op_cvt_type_e e">请选择度量类型</span></td><td><span class="op_cvt_txt_e e">请输入非0数字</span></td><td><span class="op_cvt_from_e e">请选择度量类型</span></td><td></td><td><span class="op_cvt_to_e e">请选择度量类型</span></td></tr></table></div><div class="op_cvt_s">支持长度、面积、体积、质量、温度、压力、功率、功、能和热量单位换算</div><div><span style="color:#008000;">open.baidu.com/</span><span> - </span><a target="_blank" {%*i*%}href="http://open.baidu.com/"  class="op_LAMP" >{%$FE_GBVAR.aladdin_txt%}</a></div></td></tr></table><script >A.setup(function() {var _this = this;var fatimer = null;(function(){var m = document.uniqueID && document.compatMode && !window.XMLHttpRequest && document.execCommand;try{if(!!m){m("BackgroundImageCache", false, true) }}catch(oh){};})();var op_cvt_type = '{%if $tplData.type!=""%}{%$tplData.type|escape:'html'%}{%/if%}';var op_cvt_unit1 = '{%if $tplData.unit1!=""%}{%$tplData.unit1|escape:'html'%}{%/if%}';var op_cvt_unit2 = '{%if $tplData.unit2!=""%}{%$tplData.unit2|escape:'html'%}{%/if%}';var $btn = _this.find('.op_cvt_btn');var txt = _this.find('.op_cvt_txt')[0];var unitType = _this.find('.op_cvt_type')[0];var unit1 = _this.find('.op_cvt_from')[0];var unit2 = _this.find('.op_cvt_to')[0];var txt_e = _this.find('.op_cvt_txt_e')[0];var type_e = _this.find('.op_cvt_type_e')[0];var unit1_e = _this.find('.op_cvt_from_e')[0];var unit2_e = _this.find('.op_cvt_to_e')[0];var resultDOM = _this.find('.op_cvt_r_box')[0];var typeData = ['请选择度量类型', '长度', '面积', '体积', '质量', '温度', '压力', '功率', '{%*i*%}功、能和热量'];var unitData = new Array();unitData['长度'] = [{flag: 'group', label: '公制', values: ['千米', '米', '分米', '厘米', '毫米', '微米']},{flag: 'group', label: '英制', values: ['英尺', '英寸', '码', '英里', '海里', '英寻', '弗隆']},{flag: 'group', label: '市制', values: ['里', '丈', '尺', '寸', '分', '厘', '毫']}];unitData['面积'] = [{flag: 'group', label: '公制', values: ['平方千米', '公顷', '公亩', '平方米', '平方分米', '平方厘米', '平方毫米']},{flag: 'group', label: '英制', values: ['英亩', '平方英里', '平方码', '平方英尺', '平方英寸', '平方竿']},{flag: 'group', label: '市制{%*i*%}', values: ['顷', '亩', '平方尺', '平方寸']}];unitData['体积'] = [{flag: 'group', label: '公制', values: ['立方米', '立方分米', '立方厘米', '立方毫米', '升', '分升', '毫升', '厘升', '公石']},{flag: 'group', label: '英制', values: ['立方英尺', '立方英寸', '立方码', '亩英尺', '英制加仑', '美制加仑']}];unitData['质量'] = [{flag: 'group', label: '公制', values: ['千克', '克', '毫克', '吨', '公担']},{flag: 'group', label: '英制', values: ['磅', '盎司', '克拉', '格令', '长吨', '短吨', '英担', '美担', '英石', '打兰']},{flag: 'group', label: '市制', values: ['担', '斤', '两', '钱']}];unitData['温度'] ={%*i*%} ['摄氏度', '华氏度', '开氏度', '兰氏度', '列氏度'];unitData['压力'] = ['帕斯卡', '千帕', '百帕', '标准大气压', '毫米汞柱', '英寸汞柱', '巴', '毫巴', '磅力/平方英尺', '磅力/平方英寸', '毫米水柱', '公斤力/平方厘米', '公斤力/平方米'];unitData['功率'] = ['瓦', '千瓦', '英制马力', '米制马力', '公斤·米/秒', '千卡/秒', '英热单位/秒', '英尺·磅/秒', '焦耳/秒', '牛顿·米/秒'];unitData['功、能和热量'] = ['焦耳', '卡', '千卡', '公斤·米', '米制马力·时', '英制马力·时', '千瓦·时', '英热单位', '英尺·磅'];unitData['请选择度量类型'] = ['　　　　'];var converterJSON = {};converterJSON.getData = function(data){var str1 = data.number1 ? (data.number1 + data.stand{%*i*%}ard1 + (data.unitName1 ? '(' + data.unitName1 + ')' : '') + (data.otherUnit ? '(' + data.otherUnit + ')' : '')+ '='+ data.number2 + (data.exponent ? '*10<sup>' + data.exponent + '</sup>' : '') + data.standard2 + (data.unitName2 ? '(' + data.unitName2 + ')' : '') + '<br/>') : '';var str2 = data.OtherNumber ? ('1' + data.standard2 + (data.unitName2 ? '(' + data.unitName2 + ')' : '')+ '='+ data.OtherNumber + (data.otherExpnonent ? '*10<sup>' + data.otherExpnonent + '</sup>' : '') + data.standard1 +{%*i*%} (data.unitName1 ? '(' + data.unitName1 + ')' : '')) : '';resultDOM.innerHTML = str1 + str2;};converterJSON.errorData = function() {resultDOM.innerHTML = "<span style='color:red;'>抱歉没有此次换算的结果</span>";};function trim(str) {str = str.replace(/(\u3000+)|(\u3000+)/g, '');str = str.replace(/( +)|( +)/g, '');return str;}$btn.click(function(){var enable = true;if (unitType.value == '请选择度量类型') {type_e.style.display = 'inline';enable = false;}else {type_e.style.display = 'none';}if (isNaN(txt.value) || p{%*i*%}arseInt(txt.value) === 0) {txt_e.style.display = 'inline';enable = false;}else {txt_e.style.display = 'none';}if (trim(txt.value) === '') {txt.value = 1;}if (enable) {var floatValue = parseFloat(txt.value);if (isNaN(floatValue)) floatValue = 1;var query = floatValue + unit1.value + '等于多少' + unit2.value;getResult(query);}});function getResult(query) {var resourceId = 6008;_this.ajax(query, resourceId, {success: function(data) {if (data) {var d = data[0];if (d) {converterJSON.getData(d);}else {con{%*i*%}verterJSON.errorData();}}},error: function() {converterJSON.errorData();},timeout: function() {converterJSON.errorData();}});}function bindData(obj, data, key) {if (!obj || !data) return;var frag = document.createDocumentFragment();for (var i = 0, len = data.length; i < len; i++) {var item = data[i];if (item['flag'] == undefined) {var opt = document.createElement('option');opt.innerHTML = opt.value = item;opt.selected = (item == key);frag.appendChild(opt);}else {if (item.flag == 'value') {var op{%*i*%}t = document.createElement('option');opt.innerHTML = opt.value = item.value;opt.selected = (item.value == key);frag.appendChild(opt);}else if (item.flag == 'group') {var optgroup = document.createElement('optgroup');optgroup.label = item.label;bindData(optgroup, item.values, key);frag.appendChild(optgroup);}}}obj.innerHTML = '';obj.appendChild(frag);} $(unitType).change(function(){bindData(unit1, unitData[unitType.value]);bindData(unit2, unitData[unitType.value]);fatimer = setTimeout(function() {%*i*%}{if (unit2.options && unit2.options[1]) unit2.options[1].selected = true;},1);});function initConverter(){bindData(unitType, typeData, op_cvt_type);if (op_cvt_type && op_cvt_unit1 && op_cvt_unit2){bindData(unit1, unitData[op_cvt_type], op_cvt_unit1);bindData(unit2, unitData[op_cvt_type], op_cvt_unit2);}}initConverter();function numFormat(num) {return (parseInt(num) == num) ? parseInt(num) : parseFloat(num);}this.dispose = function(){clearTimeout(fatimer);};});</script>{%/block%}