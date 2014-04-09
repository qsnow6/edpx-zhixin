{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%/block%}{%block name="title"%}<h3 class="t c-gap-bottom"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url%}">{%$tplData.title|limitlen:56|highlight:'1'%} </a> <span class="tsuf tsuf-op"></span></h3>{%/block%}{%block name='foot'%}<div{%if $extData.feData.hasBorder || $extData.feData.hasShowURLGap%} class="c-gap-top-small"{%/if%}>{%fe_fn_c_showurl%}</div> {%/block%}{%block name='content'%}<style type="text/css">.op-{%$escaped_tpl%}-header-title{background-image:url('http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png');background-position:0 center;background-repeat:no-repeat;padding-left:20px}.op-{%$escaped_tpl%}-footersafe{color:#4bad37;font-weight:bold}.op-{%$escaped_tpl%}-tab_main .c-tabs-nav li{font-size:14px;line-height:24px}.op-{%$escaped_tpl%}-tab_table{border-collapse:collapse;border-spacing:0;margin:2px 0 4px}.op-{%$escaped_tpl%}-tab_table .op-{%$escaped_tpl%}-tab_span2{width:26px;display:block}.op-{%$escaped_tpl%}-tab_table td{padding:0;padding-top:5px}.op-{%$escaped_tpl%}-tab_safetip{color:#4bad37;font-weight:bold}.op-{%$escaped_tpl%}-tab_safetip .c-icon{_vertical-align:middle}.op-{%$escaped_tpl%}-tab td{padding:0 5px;height:28px;text-align:left;vertical-align:middle}.op-{%$escaped_tpl%}-tab_hilight{color:#f00}.op-{%$escaped_tpl%}-tab_btns a{float:left;padding:0 19px}.op-{%$escaped_tpl%}-tab_pos_start,.op-{%$escaped_tpl%}-tab_pos_end,.op-{%$escaped_tpl%}-tab_exchange{float:left}.op-{%$escaped_tpl%}-tab_exchange{padding-left:5px;padding-right:5px}.op-{%$escaped_tpl%}-tab_table .c-input-large{width:213px}.op-{%$escaped_tpl%}-tab_table .op-{%$escaped_tpl%}-tab_mark{float:left;padding:4px 3px 0 0;line-height:18px}.op-{%$escaped_tpl%}-tab_disableintput{background:#fcfcfc;border-color:#dcdcdc #f4f4f4 #f4f4f4 #dcdcdc}.op-{%$escaped_tpl%}-tab_disableintput .op-{%$escaped_tpl%}-tab_time2{background:#fcfcfc;color:#fcfcfc}.op-{%$escaped_tpl%}-tab_disableintput .op-{%$escaped_tpl%}-tab_mark{color:#898989}.op-{%$escaped_tpl%}-tab_none,.op-{%$escaped_tpl%}-tab_input2{display:none}.op-{%$escaped_tpl%}-recommend-title{background-color:#fafafa;border-bottom:1px solid #d9d9d9;height:27px;padding:0 9px;font-size:13px;position:relative}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-recommend-tit{float:left;display:block;line-height:27px}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-recommend-rt{position:absolute;right:0;top:0;_top:auto;_bottom:-2px}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-recommend-rtint{position:absolute;right:52px;_top:auto;_bottom:-2px;width:300px}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-recommend-rtint .c-tabs-nav{float:left}.op-{%$escaped_tpl%}-recommend-title .c-tabs-nav{float:right;display:block}.op-{%$escaped_tpl%}-recommend-title .c-tabs-nav li{padding-left:7px;padding-right:7px;*padding-left:7px;*padding-right:0}.op-{%$escaped_tpl%}-recommend-title .c-tabs-nav li.c-tabs-nav-sep{padding:0}.op-{%$escaped_tpl%}-recommend-title .c-tabs-nav .c-tabs-nav-selected{font-weight:bold}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-sel-panel{display:inline}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-select-box{float:right;display:block;width:78px;height:20px;position:relative;white-space:nowrap;word-break:break-all;font-family:tahoma;cursor:pointer}.op-{%$escaped_tpl%}-select-hd{height:20px;line-height:20px;position:absolute;left:0;top:0;width:100%;padding:3px 0;color:#666;font-size:13px;_font-size:12px}.op-{%$escaped_tpl%}-select-hd .op-{%$escaped_tpl%}-select-input{padding-left:6px}.op-{%$escaped_tpl%}-select-hd .c-icon{position:absolute;right:3px;top:5px}.op-{%$escaped_tpl%}-select-sug{border:1px solid #c9c9c9;background:#fff;position:absolute;padding:23px 0 0;width:76px;display:none}.op-{%$escaped_tpl%}-select-sug li a{display:block;height:22px;line-height:22px;padding:0 6px;color:#666;text-decoration:none;font-size:13px;_font-size:12px}.op-{%$escaped_tpl%}-select-sug li a:hover,.op-{%$escaped_tpl%}-select-sug li.cur a{background:#0069ca;color:#fff}.op-{%$escaped_tpl%}-select-sug li .sp{padding-right:10px}.op-{%$escaped_tpl%}-select-box-on .op-{%$escaped_tpl%}-select-hd .op-{%$escaped_tpl%}-select-arr{background-position:0 -20px}.op-{%$escaped_tpl%}-select-box-on .op-{%$escaped_tpl%}-select-sug{display:block}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-select-box-month{width:82px}.op-{%$escaped_tpl%}-recommend-title .op-{%$escaped_tpl%}-select-box-month .op-{%$escaped_tpl%}-select-sug{width:80px}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-col1,.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-col2{float:left;display:block;width:242px;padding:0 8px;white-space:nowrap}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-col1{border-right:1px solid #dedede}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-lnk{text-decoration:none;height:28px;line-height:28px}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-lnk:hover{color:#f60}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-time{float:right;display:block;text-align:right}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-prz{float:left;display:block;width:50px;color:#ff8a00;line-height:28px}.op-{%$escaped_tpl%}-recommend-detail .op-{%$escaped_tpl%}-recommend-prz .fb{font-style:normal;font-weight:bold;padding-left:2px}.op-{%$escaped_tpl%}-tab_pos_start input.op_ticket_tab_start,.op-{%$escaped_tpl%}-tab_pos_end input.op_ticket_tab_end,.op-{%$escaped_tpl%}-tab_input1 input.op-{%$escaped_tpl%}-tab_time1,.op-{%$escaped_tpl%}-tab_span3 input.op-{%$escaped_tpl%}-tab_time2{width:180px}</style>{%$escaped_random="{%$smarty.now%}{%math equation=rand(100, 999)%}"%}<img src="http://wx.flight.qunar.com/01/f.gif?_t={%$escaped_random%}&q={%$tplData.q%}&qId={%$tplData.qId%}" style="position:absolute;top:-100px;left:0px;z-index:-1000"/><div class="c-border c-gap-bottom-small"> <div class="c-tabs op-{%$escaped_tpl%}-tab_main"> <ul class="c-tabs-nav c-tabs-nav-movetop"> <li data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-tab_tab c-tabs-nav-li c-tabs-nav-selected OP_LOG_BTN">国内机票</li> <li data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-tab_tab c-tabs-nav-li OP_LOG_BTN">国际&bull;港澳台机票</li> </ul> <table class="op-{%$escaped_tpl%}-tab_table"> <tr> <td><span class="c-gap-right">类型</span></td> <td><form style="position:static" autocomplete="off"> <label> <input data-click="{fm:'beha'}" class="OP_LOG_BTN op-{%$escaped_tpl%}-tab_type2" checked="checked" type="radio" name="op_ticket_tab_type" value="1" /> 单程</label> <label> <input data-click="{fm:'beha'}" class="OP_LOG_BTN op-{%$escaped_tpl%}-tab_type1" type="radio" name="op_ticket_tab_type" value="0" /> 往返</label> </form></td> <td colspan="2"></td> </tr> <tr> <td><span class="c-gap-right">城市</span></td> <td colspan="3"> <span class="c-input c-input-large c-gap-right-small op-{%$escaped_tpl%}-tab_pos_start"> <i class="c-icon c-icon-map"></i> <span class="op-{%$escaped_tpl%}-tab_mark">从</span> <input value="{%$tplData.dep%}" class="op-{%$escaped_tpl%}-tab_text op_ticket_tab_start" name="op_ticket_tab_start" type="text" /> </span> <a data-click="{fm:'beha'}" href="javascript:;" class="c-btn op-{%$escaped_tpl%}-tab_exchange c-gap-right-small"><i class="c-icon c-icon-exchange"></i></a> <span class="c-input c-input-large op-{%$escaped_tpl%}-tab_pos_end"><i class="c-icon c-icon-map"></i> <span class="op-{%$escaped_tpl%}-tab_mark">到</span> <input value="{%$tplData.arr%}" class="op-{%$escaped_tpl%}-tab_text op_ticket_tab_end" name="op_ticket_tab_end" type="text" /> </span> </td> </tr> <tr> <td><span class="c-gap-right">日期</span></td> <td><span class="c-input c-input-large c-gap-right op-{%$escaped_tpl%}-tab_input1 OP_LOG_BTN"> <i data-click="{fm:'beha'}" class="c-icon c-icon-calendar op-{%$escaped_tpl%}-tab_cbtn1"></i> <span class="op-{%$escaped_tpl%}-tab_mark">往</span> <input data-click="{fm:'beha'}" readonly="readonly" type="text" class="op-{%$escaped_tpl%}-tab_time1" /> </span></td> <td><span class="op-{%$escaped_tpl%}-tab_span2">&nbsp;</span></td> <td><span class="c-input op-{%$escaped_tpl%}-tab_disableintput op-{%$escaped_tpl%}-tab_span3 c-input-large OP_LOG_BTN"> <i data-click="{fm:'beha'}" class="c-icon c-icon-calendar op-{%$escaped_tpl%}-tab_cbtn2"></i> <span class="op-{%$escaped_tpl%}-tab_mark">返</span> <input data-click="{fm:'beha'}" readonly="readonly" autocomplete="off" tabindex="-1" type="text" class="op-{%$escaped_tpl%}-tab_time2" /> </span></td> </tr> <tr class="op-{%$escaped_tpl%}-tab_large"> <td></td> <td colspan="3"> <div class="OP_LOG_BTN op-{%$escaped_tpl%}-tab_btns c-gap-right"> <a class="c-btn c-btn-primary op-{%$escaped_tpl%}-tab_b1" href="javascript:void(0)">查询</a> </div> </td> </tr> </table> </div> <div class="op-{%$escaped_tpl%}-tab_cc1"> </div> <div class="op-{%$escaped_tpl%}-tab_cc2"> </div> </div><script >A.setup({areaFlag: 0,ex_track: {searchForDomestic: 'bd_zhixin_flight_fgn_search01',searchForInter: 'bd_zhixin_flight_fgn_search02'}}); A.setup(function() {var _this = this,areaFlag = this.data.areaFlag,$exchange = _this.find('.op-{%$escaped_tpl%}-tab_exchange');var ex_track = this.data.ex_track;var sugUrl = areaFlag === 0 ?'http://opendata.baidu.com/ala_sug/ala_sug.php?oe=gbk&ie=utf-8&sug_type=flight_guonei' :'http://opendata.baidu.com/ala_sug/ala_s.php?oe=gbk&ie=utf-8&sug_type=flight_ticket';var $scIpt = _this.find('.op_ticket_tab_start');var op_ticket_tab_gsvalue = $scIpt.val(),$ecIpt = _this.find('.op_ticket_tab_end'),op_ticket_tab_gevalue = $ecIpt.val(),ipflags = 1,ipflage = 1,set_focus1 = false,set_focus2 = false;$exchange.on('clic{%*i*%}k', function(){var tmp = $ecIpt.val();$ecIpt.val($scIpt.val());$scIpt.val(tmp);});var curTabClass = 'c-tabs-nav-selected';function changeTabs(e, i) {if (i === 1) {areaFlag = 1;sugUrl = 'http://opendata.baidu.com/ala_sug/ala_s.php?oe=gbk&ie=utf-8&sug_type=flight_ticket';} else {areaFlag = 0;sugUrl = 'http://opendata.baidu.com/ala_sug/ala_sug.php?oe=gbk&ie=utf-8&sug_type=flight_guonei';}_this.find('.' + curTabClass).removeClass(curTabClass);var $jE = $(e);$jE.addClass(curTabClass);$ecIpt.val('');i{%*i*%}f (start) {start.dispose();}if (end) {end.dispose();}sug.view = function() {var $s = _this.find('.op-{%$escaped_tpl%}-tab_pos_start');var p = $s.offset();return {top: p.top + 26,left: p.left,width: $s.outerWidth()};};start = A.ui.suggestion(sug);sug.view = function() {var $s = _this.find('.op-{%$escaped_tpl%}-tab_pos_end');var p = $s.offset();return {top: p.top + 26,left: p.left,width: $s.outerWidth()};};end = A.ui.suggestion(sug);start.render(_this.find('.op_ticket_tab_start')[0]);end.render(_this.find('.op_ticket_tab_end')[0]);}_this.find('.op-{%$escaped_tpl%}-tab_tab').each(function(index, ele){$(ele).on('click', function(){changeTabs(ele, index);});});$scIpt.on('focus', function(){$scIpt.select();});$scIpt.on('mouseup', function(e){if (!set_focus1) {e.preventDefault();set_focus1 = true;} else {$scIpt.focus();set_focus1 = false;}});$scIpt.on('blur', function(){set_focus1 = false;});$ecIpt.on('focus', function(){$ecIpt.select();});$ecIpt.on('mouseup', function(e){if (!set_focus2) {e.preventDefault();set_focus2 = true;} else {$ecIpt.focus();set_focus2{%*i*%} = false;}});$ecIpt.on('blur', function(){set_focus2 = false;});var citys = [];var s_szm = '';var e_szm = '';var sug = {getData: function(word) {var _this = this;var fn = function(data) {var SD = [];if (data.status == 0) {var datas = data.data;var len = datas.length;if (len > 0) { $.each(datas, function(i, o){SD.push(o.s);});} else {SD.push('dataerror');}fnSuccess(SD);}};$.ajax(sugUrl, {data: {query: word,t: new Date().getTime()},dataType: 'jsonp',jsonp: 'cb',success: function(data){fn(data);}}){%*i*%};function fnSuccess(sd) {var FD = [];citys = [];if (sd[0] == 'dataerror') {FD.push('<p class="op-{%$escaped_tpl%}-tab_red">对不起，不支持该地点</p>');citys.push('');} else {$.each(sd, function(i, o){var da = o.split('|'),w = word.toLowerCase(),w1 = word.toUpperCase();if (areaFlag === 0) {var str = da[0] + '(' + da[1].toLowerCase() + ')',str2 = da[0] + '(' + da[2].toUpperCase() + ')';citys.push(da[0] + '|' + da[3]);if (w && str.indexOf(w) != -1) {FD.push(str.replace(w, "<span class='op-{%$escaped_tpl%}-tab_hilight'>" + w + '</span>'));} else if (w1 && str2.indexOf(w1) != -1) {FD.push(str2.replace(w1, "<span class='op-{%$escaped_tpl%}-tab_hilight'>" + w1 + '</span>'));}} else {var str = da[0] + '(' + da[1] + ')',str2 = da[0] + '(' + da[2].toLowerCase() + ')',str3 = da[0] + '(' + da[3] + ')';citys.push(da[0] + '|' + da[4]);if (w && str.indexOf(w) != -1) {FD.push(str.replace(w, "<span class='op-{%$escaped_tpl%}-tab_hilight'>" + w + '</span>'));} else if (w && str2.indexOf(w) != -1) {FD.push(str2.replace(w, "<span class='op-{%$escaped_tpl%}-tab_hilight'>" + w + '</span>'));} else if (w1 && o.indexOf(w1) != -1) {FD.push(str3.replace(w1, "<span class='op-{%$escaped_tpl%}-tab_hilight'>" + w1 + '</span>'));}} });}_this.show(word, FD);_this.highLight(0);}},onpick: function(ev) {if (isNaN(ev.data.index)) {return;} else {var cs = citys[ev.data.index].split('|');ev.data.item.value = cs[0];if ((this.getTarget().className).indexOf('op_ticket_tab_start') > -1) {s_szm = cs[1];} else if ((this.getTarget().className).indexOf('op_ticket_tab_end') > -1) {e_szm = cs[1];}}}};var start, end;function sugInit() {sug.view = function() {var $s = _this.find('.op-{%$escaped_tpl%}-tab_pos_start');var p = $s.offset();return {top: p.top + 26,left: p.left,width: $s.outerWidth()};};start = A.ui.suggestion(sug);sug.view = function() {var $s = _this.find('.op-{%$escaped_tpl%}-tab_pos_end');var p = $s.offset();return {top: p.top + 26,left: p.left,width: $s.outerWidth()};};end = A.ui.suggestion(sug);}var setTimeObj;$(function() {A.use('suggestion', function() {sugInit();setTimeObj = setTimeout(function() {start.render(_this.find('.op_ticket_tab_start')[0]);end.render(_this.find('.op_ticket_tab_end')[0]);}, 100);});});var $b1 = _this.find('.op-{%$escaped_tpl%}-tab_b1');$b1.on('click', function(){btnFn(this, 'qunar');});function btnFn(obj, w) {if (!D1) return false;var s = $.trim(start.getTargetValue()),e = $.trim(end.getTargetValue()),s1 = $.trim(s_szm),e1 = $.trim(e_szm);if (s == '' || e == '') {var url = {'qunar': 'http://flight.qunar.com/?ex_track=' + (areaFlag === 1 ? ex_track.searchForInter : ex_track.searchForDomestic) +'&q=' + encodeURIComponent('{%$tplData.q%}')};obj.href = url[w];obj.target = '_blank';} else {var info = {tt: $t2[0].checked ? 0 : 1,a1: s,a2: e,s1: s1,s2: e1,d1: D1.toString().replace(/^(\d+)(\d\d)(\d\d)\b/, function(a, b, c, d) {return [b, c, d].join('-');}),d2: D2.toString().replace(/^(\d+)(\d\d)(\d\d)\b/, function(a, b, c, d) {return [b, c, d].join('-');})};var url = {};if (areaFlag == 0) {url['qunar'] = ['http://www.qunar.com/twell/flight/Search.jsp?fromCity=' + encodeURIComponent(info.a1) + '&toCity=' + encodeURIComponent(info.a2){%*i*%} + '&fromDate=' + info.d1 + '&q=' + encodeURIComponent('{%$tplData.q%}') + '&toDate=&searchType=OnewayFlight&charset=utf8&ex_track=' + ex_track.searchForDomestic, 'http://www.qunar.com/twell/flight/Search.jsp?fromCity=' + encodeURIComponent(info.a1) + '&q=' + encodeURIComponent('{%$tplData.q%}') + '&toCity=' + encodeURIComponent(info.a2) + '&fromDate=' + info.d1 + '&toDate=' + info.d2 + '&searchType=RoundtripFlight&charset=utf8&ex_track=' + ex_track.searchForDomestic];} else {url['qunar'] = ['http://www.qunar.com/twell/flight/Search.jsp?fromCity=' + encodeURIComponent(info.a1) + '&toCity=' + encodeURIComponent(info.a2) + '&fromDate=' + info.d1 + '&q=' + encodeURIComponent('{%$tplData.q%}') + '&toDate=&searchType=OnewayFlight&charset=utf8&ex_track=' + ex_track.searchForInter, 'http://www.qunar.com/twell/flight/Search.jsp?fromCity=' + encodeURIComponent(info.a1) + '&toCity=' + encodeURIComponent(info.a2) + '&fromDate=' + info.d1 + '&toDate=' + info.d2 + '&q=' + encodeURIComponent('{%$tplData.q%}') + '&searchType=RoundtripFlight&charset=utf8&ex_track=' + ex_track.searchForInter];}obj.href = url[w][info.tt];obj.target = '_blank';}}var $in1 = _this.find('.op-{%$escaped_tpl%}-tab_time1'),$in2 = _this.find('.op-{%$escaped_tpl%}-tab_time2'),$el1 = _this.find('.op-{%$escaped_tpl%}-tab_cc1'),$el2 = _this.find('.op-{%$escaped_tpl%}-tab_cc2');var $t1 = _this.find('.op-{%$escaped_tpl%}-tab_type1'),$t2 = _this.find('.op-{%$escaped_tpl%}-tab_type2'),$span3 = _this.find('.op-{%$escaped_tpl%}-tab_span3'),$input2 = _this.find('.op-{%$escaped_tpl%}-tab_input2');var getD = function(dom) {var a = dom.value.match(/^(\d+)-(\d\d)-(\d\d)/);if (a && a.length == 4) return parseInt('' + a[1] + a[2] + a[3]);else return false;};var getS = function(d) {d = d.toString().match(/^(\d+)(\d\d)(\d\d)\b/);d = new Date(d[1], d[2] - 1, d[3]);return '' + d.getFullYear() + '-' + ('0' + (d.getMonth() + 1)).slice( - 2) + '-' + ('0' + d.getDate()).slice( - 2) + '(' + '周' + ('日一二三四五六'.charAt(d.getDay())) + ')';};function hiDate() {var d = [D1];if ($t1.attr('checked{%*i*%}')) {d.push(D2);}this.setDay(d, function(td) {this.addClass(td, 'op-{%$escaped_tpl%}-tab_cell_seledted');});}var c0,c1,D1,D2,bdate,Today;function getNormalDate(date) {return '' + date.getFullYear() + '-' + ('0' + (date.getMonth() + 1)).slice( - 2) + '-' + ('0' + date.getDate()).slice( - 2);}function getRightDate(str) {str = str.toString().match(/^(\d+)(\d\d)(\d\d)/);str.shift();return new Date(str[0], str[1] - 1, str[2]);}var newDate = new Date(bdServerTime * 1000);var oTimer = setTimeout(function() {Today = newDate.getFullYear() * 10000 + (newDate.getMonth() + 1) * 100 + newDa{%*i*%}te.getDate();$in1.val(getS(Today + 1));$in2.val(getS(Today + 3));D1 = getD($in1[0]);D2 = getD($in2[0]);function calendarInit() {c0 = A.ui.calendar({input: $in1[0],position: _this.find('.op-{%$escaped_tpl%}-tab_input1')[0],element: $el1[0],count: 2,date: 20090921,today: Today,between: [Today, 99999999],onShow: function() {this.setHtml(D1);c1.hide();hiDate.call(this);},onChange: function() {hiDate.call(this);},onSelectDay: function(date, week) {D1 = date;c1.setBetween([date, 99999999]);if (D2 <= D1) {D2 = getNormalDate(getRightDate(date + 3)).replace(/-/g, '');$in2.val(getS(D2));}}});c1 = A.ui.calendar({input: $in2[0],position: _this.find('.op-{%$escaped_tpl%}-tab_span3')[0],element: $el2[0],count: 2,today: Today,onShow: function() {$t1[0].checked = 'checked';cancelDisable();this.setHtml(D2);c0.hide();this.setBetween([getD($in1[0]), 99999999]);hiDate.call(this);},onChange: function() {hiDate.call(this);},onSelectDay: function(date, week) {D2 = date;}});c0.addEvent(_this.find('.op-{%$escaped_tpl%}-tab_cbtn1')[0], 'click', function() {c0.show();}, true);c1.addEvent(_this.find('.op-{%$escaped_tpl%}-tab_cbtn2')[0], 'click', function() {c1.show();}, true);}A.use('calendar', calendarInit);}, 1);function cancelDisable() {$span3.removeClass('op-{%$escaped_tpl%}-tab_disableintput');$in2.removeAttr('tabindex');}$t1.on('click', function(){cancelDisable();});$t2.on('click', function(){$span3.addClass('op-{%$escaped_tpl%}-tab_disableintput');$in2.attr('tabindex', '-1');});this.dispose = function(){window.clearInterval(setTimeObj);window.clearInterval(oTimer);start && start.dispose && start.dispose();end && end.dispose && end.dispose();c0 && c0.dispose && c0.dispose();c1 && c1.dispose && c1.dispose();};});</script>{%/block%}