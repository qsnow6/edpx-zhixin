{%extends 'c_right_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css="btn"%}{%fe_fn_c_css css="input"%}{%fe_fn_c_css css="tabs"%}.op_hangban_table th{background:#fafafa;color:#666;height:22px;border-bottom:1px solid #f0f0f0;font-weight:normal}.op_hangban_table td{height:32px;line-height:32px;border-bottom:1px solid #f3f3f3;text-align:center}.op_hangban_table tr{width:100%}.op_outer{position:relative;width:100%;overflow:hidden;height:99px}.op_inner{position:absolute;left:0;top:0;height:990px}.op_hangban_table_search{width:100%}.op_hangban_exchange,.op_hangban_exchange2{display:block;padding-left:5px;padding-right:5px}.op_e{%*i*%}xchange_span1{float:left}.op_gray_line{border-bottom:1px solid #f3f3f3;height:0;overflow:hidden;position:relative;top:-1px;*top:-5px}.op_hangban_table th{text-align:center}.op_exchange_span{width:26px;height:26px}.op_hangban_title{font-size:14px;font-weight:bold}.op_hangban_start,.op_hangban_start2,.op_hangban_end,.op_hangban_end2,.op_hangban_number_ipt,.op_hangban_number_ipt2{color:#999}.op_right_hangban_color{color:#666}.opr_hangban_stend .op_hangban_fligh_input{width:170px}.opr_hangban_stend {%*i*%}.op_hangban_fligh_input input{width:60px}.opr_hangban_stend .op_hanban_pos_start,.opr_hangban_stend .op_hanban_pos_end{width:61px}.opr_hangban_stend .op_hanban_pos_start input,.opr_hangban_stend .op_hanban_pos_end input{width:40px}</style>{%if $tplData.fltitle%}<p class="c-gap-bottom-small op_hangban_title">{%$tplData.fltitle|limitlen:54%}</p>{%/if%}{%if $tplData.flight%}<table border="0" cellspacing="0" cellpadding="0" class="op_hangban_table"> <tr> {%if $tplData.flighttitle[0]['title1']%}<th width="33%">{%$tplData.flighttitle[0]['title1']%}</th>{%/if%} {%if $tplData.flighttitle[0]['title2']%}<th width="33%">{%$tplData.flighttitle[0]['title2']%}</th>{%/if%} {%if $tplData.flighttitle[0]['title3']%}<th width="33%">{%$tplData.flighttitle[0]['title3']%}</th>{%/if%} </tr></table><div class="op_outer" style="display:none"> <div class="op_inner"> {%if $tplData.flight%} <table border="0" cellspacing="0" cellpadding="0" class="op_hangban_table"> {%foreach $tplData.flight as $item%} <tr> <td width="33%">{%$item['flight1']%}</td> <td width="33%">{%$item['flight2']%}</td> <td width="33%">{%$item['flight3']%}</td> </tr> {%/foreach%} </table> {%/if%} </div></div><div class="op_gray_line"></div>{%/if%}{%if $tplData.fltip%}<p class="op_right_hangban_color">{%$tplData.fltip|limitlen:54%}</p>{%/if%}<div class="c-tabs c-gap-top"> <ul class="c-tabs-nav"> {%foreach $tplData.tab as $item%} <li class="c-tabs-nav-li {%if $item@first == 1%}c-tabs-nav-selected{%/if%}">{%$item.name%}</li> {%if $item@inext < $tplData.tab|count-1%} <li class="c-tabs-nav-sep"></li> {%/if%} {%/foreach%} <li class="c-tabs-nav-li c-tabs-nav-selected">国内航班</li> <li class="c-tabs-nav-sep"></li> <li class="c-tabs-nav-li">国际港澳台航班</li> </ul> <div class="c-tabs-content"> <table class="op_hangban_table_search" cellpadding="0" cellspacing="0"> <tr> <td class="c-clearfix opr_hangban_stend"> <div class="op_hangban_div c-gap-top op_exchange_span1"> <span class="c-input c-gap-right op_hangban_fligh_input"> <i class="c-icon c-icon-plane"></i> <form action="http://flight.qunar.com/schedule/fquery.jsp?" method{%*i*%}="get" class="op_hangban_form" target="_blank"> <input class="op_hangban_number_ipt" name="flightCode" type="text" value="航班号" /> <input type="hidden" name="ex_track" value="bd_aladding_flightsk_02" /> </form> </span> </div> <span class="c-gap-top op_exchange_span1"><a class="c-btn c-btn-primary op_hangban_flight_btn" href="javascript:;" onclick="return false;" hidefocus='true'>查询</a></span> </tr> <tr> <td class="c-clearfix opr_hangban_stend"> <span class="c-input c-input-xmini c-gap-right-small{%*i*%} op_hanban_pos_start op_exchange_span1 c-gap-top"> <i class="c-icon c-icon-map"></i> <input value="出发地" class="op_hangban_start" name="d" type="text"> </span> <span class="c-gap-right-small op_exchange_span op_exchange_span1 c-gap-top"><a href="javascript:;" class="c-btn op_hangban_exchange "><i class="c-icon c-icon-exchange"></i></a></span> <span class="c-input c-input-xmini c-gap-right op_hanban_pos_end op_exchange_span1 c-gap-top"> <i class="c-icon c-icon-map"></i> <input value="目的地" class="o{%*i*%}p_hangban_end" name="a" type="text"> </span> <span class="op_exchange_span1 c-gap-top"><a class="c-btn c-btn-primary op_hangban_line_btn OP_LOG_BTN" href="javascript:;" onclick="return false;" hidefocus='true'>查询</a></span> </td> </tr> </table> <form action="http://flight.qunar.com/schedule/fsearch_list.jsp" method="get" class="op_hangban_form2" target="_blank"> <input type="hidden" name="ex_track" value="bd_aladding_flightsk_01" /> <input type="hidden" name="departure" class="op_hangban_departu{%*i*%}re" value="" /> <input type="hidden" name="arrival" class="op_hangban_arrival" value="" /> </form> </div> <div class="c-tabs-content"> <table class="op_hangban_table_search" cellpadding="0" cellspacing="0"> <tr> <td class="c-clearfix opr_hangban_stend"> <div class="op_hangban_div c-gap-top op_exchange_span1"> <span class="c-input c-gap-right op_hangban_fligh_input"> <i class="c-icon c-icon-plane"></i> <form action="http://flight.qunar.com/schedule/international/fquery.jsp?" method="get" class="o{%*i*%}p_hangban_form3" target="_blank"> <input class="op_hangban_number_ipt2" name="flightCode" type="text" value="航班号" /> <input type="hidden" name="ex_track" value="bd_aladding_flightsk_02" /> </form> </span> </div> <span class="c-gap-top op_exchange_span1"><a class="c-btn c-btn-primary op_hangban_flight_btn2" href="javascript:;" onclick="return false;" hidefocus='true'>查询</a></span> </td> </tr> <tr> <td class="c-clearfix opr_hangban_stend"> <span class="c-input c-input-xmini c-gap-right-small op_ha{%*i*%}nban_pos_start op_exchange_span1 c-gap-top"> <i class="c-icon c-icon-map"></i> <input value="出发地" class="op_hangban_start2" name="d" type="text"> </span> <span class="c-gap-right-small op_exchange_span op_exchange_span1 c-gap-top"><a href="javascript:;" class="c-btn op_hangban_exchange2 "><i class="c-icon c-icon-exchange"></i></a></span> <span class="c-input c-input-xmini c-gap-right op_hanban_pos_end op_exchange_span1 c-gap-top"> <i class="c-icon c-icon-map"></i> <input value="目的地" class="op_ha{%*i*%}ngban_end2" name="a" type="text"> </span> <span class="op_exchange_span1 c-gap-top"><a class="c-btn c-btn-primary op_hangban_line_btn2 OP_LOG_BTN" href="javascript:;" onclick="return false;" hidefocus='true'>查询</a></span> </td> </tr> </table> <form action="http://flight.qunar.com/schedule/international/fsearch_list.jsp" method="get" class="op_hangban_form4" target="_blank"> <input type="hidden" name="ex_track" value="bd_aladding_flightsk_01" /> <input type="hidden" name="departure" class="op_han{%*i*%}gban_departure2" value="" /> <input type="hidden" name="arrival" class="op_hangban_arrival2" value="" /> </form> </div></div><script data-merge>A.setup(function(){var baidu = A.baidu, _this = this;var autotimer =null; A.use('tabs5', function(){A.ui.tabs5(_this.qq('c-tabs'));});this.qq('op_inner') && A.use('jquery', function(){var $ = A.ui.jquery;var oInner = $('.op_inner');var oTable = $('.op_inner table'); var num = 1;function autochange(){ oInner.animate({top:-99 * num},'slow',function(){var f{%*i*%}rontThreeTr = oTable.find('tr:lt(3)');frontThreeTr.appendTo(oTable);oInner.css({'top':'0'}); });} autotimer = window.setInterval(autochange,3000);oTable.hover(function(){window.clearInterval(autotimer);},function(){autotimer = window.setInterval(autochange,3000);}); }); var scIpt1 = _this.qq('op_hangban_start'); var ecIpt1 = _this.qq('op_hangban_end'); var exchange1 = _this.qq('op_hangban_exchange'); baidu.event.on(exchange1, 'click', function(){var tmp = ecIpt1.value;ecIpt1.value = scIpt1.value{%*i*%};scIpt1.value = tmp;});var scIpt2 = _this.qq('op_hangban_start2'); var ecIpt2 = _this.qq('op_hangban_end2'); var exchange2 = _this.qq('op_hangban_exchange2'); baidu.event.on(exchange2, 'click', function(){var tmp = ecIpt2.value;ecIpt2.value = scIpt2.value;scIpt2.value = tmp;});A.use('jquery', function(){var $ = A.ui.jquery;var val11 = $(".op_hangban_number_ipt").val();var val12 = $(".op_hangban_number_ipt2").val();var val21 = $(".op_hangban_start").val();var val22 = $(".op_hangban_start2").val(){%*i*%};var val31 = $(".op_hangban_end").val();var val32 = $(".op_hangban_end2").val();function focus(className, value){$(className).on('focus', function(){if($(this).val() == value){$(this).val('');}$(this).css({'color':'#000'});});};function blur(className, value){$(className).on('blur', function(){if($(this).val() == ''){$(this).val(value);$(this).css({'color':'#999'});}});};focus('.op_hangban_number_ipt', val11);blur('.op_hangban_number_ipt', val11);focus('.op_hangban_number_ipt2', val12);blur('.op{%*i*%}_hangban_number_ipt2', val12);focus('.op_hangban_start', val21);blur('.op_hangban_start', val21);focus('.op_hangban_start2', val22);blur('.op_hangban_start2', val22);focus('.op_hangban_end', val31);blur('.op_hangban_end', val31);focus('.op_hangban_end2', val32);blur('.op_hangban_end2', val32); });baidu.event.on(_this.qq("op_hangban_flight_btn"),'click',function(){if(_this.qq("op_hangban_number_ipt").value == ''){return false;} _this.qq("op_hangban_number_ipt").value = _this.qq("op_hangban_number{%*i*%}_ipt").value.toUpperCase(); _this.qq("op_hangban_form").submit(); });baidu.event.on(_this.qq("op_hangban_flight_btn2"),'click',function(){if(_this.qq("op_hangban_number_ipt2").value == ''){return false;} _this.qq("op_hangban_number_ipt2").value = _this.qq("op_hangban_number_ipt2").value.toUpperCase(); _this.qq("op_hangban_form3").submit(); });baidu.event.on(_this.qq("op_hangban_line_btn"),'click',function(){_this.qq("op_hangban_departure").value = _this.qq("op_hangban_start").value;_this.qq("op_{%*i*%}hangban_arrival").value = _this.qq("op_hangban_end").value;if(_this.qq("op_hangban_departure").value == '' || _this.qq("op_hangban_arrival").value == ''){return false;}else{_this.qq("op_hangban_form2").submit();} });baidu.event.on(_this.qq("op_hangban_line_btn2"),'click',function(){_this.qq("op_hangban_departure2").value = _this.qq("op_hangban_start2").value;_this.qq("op_hangban_arrival2").value = _this.qq("op_hangban_end2").value;if(_this.qq("op_hangban_departure2").value == '' || _this.qq("op_{%*i*%}hangban_arrival2").value == ''){return false;}else{_this.qq("op_hangban_form4").submit();} });});</script>{%/block%}