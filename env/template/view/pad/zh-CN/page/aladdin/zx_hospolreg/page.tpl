{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='content'%}<style data-merge>.op-zx-hospolreg{position:relative;z-index:10}.op-zx-hospolreg-hide{visibility:hidden}.op-zx-hospolreg .op-zx-hospolreg-safetip{background:url(http://www.baidu.com/aladdin/img/safe/safetip.png) no-repeat 0 2px;color:#6fba2c;font-weight:bold;padding:0 10px 0 18px;margin-bottom:2px}.op-zx-hospolreg-select{float:left;position:relative;width:181px;height:24px;line-height:24px;border-top:1px solid #999;border-right:1px solid #d8d8d8;border-bottom:1px solid #d8d8d8;border-left:1px so{%*i*%}lid #999;cursor:pointer}.op-zx-hospolreg-select-val{padding:0 24px 0 5px;display:inline-block;height:24px;overflow:hidden}.op-zx-hospolreg-select-btn{position:absolute;top:0;right:0;width:23px;height:24px;line-height:24px;background:#fbfbfb;border-left:1px solid #d8d8d8;text-align:center}.op-zx-hospolreg-select-box{position:absolute}.op-zx-hospolreg-select-list{position:absolute;top:26px;left:0;width:390px;max-height:300px;_height:300px;overflow:hidden;background:white;border:1px solid #bbb;box-{%*i*%}shadow:1px 1px #f0f0f0;cursor:default}.op-zx-hospolreg-select-list span{width:90px;padding-left:7px;display:inline-block;line-height:24px;float:left;overflow:hidden}.op-zx-hospolreg-select-list span:hover{background:#f5f5f5}.op-zx-hospolreg-select-li{border-bottom:1px solid #f3f3f3;margin-left:2px;padding:5px}.op-zx-hospolreg-select-li td{padding:0;font-size:.923em}.op-zx-hospolreg-select-li a{text-decoration:none}.op-zx-hospolreg-select-li a:hover{text-decoration:underline}.op-zx-hospolreg .op-{%*i*%}zx-hospolreg-select-scroll{position:absolute;left:382px;top:27px;margin-top:27px\9}.op-zx-hospolreg-btn,.op-zx-hospolreg-btn:link{display:inline-block;width:67px;height:24px;border:1px solid #bdc0c3;text-decoration:none;text-align:center;line-height:24px;color:#333;background:#fafafa}.op-zx-hospolreg-btn:hover{border:1px solid #279cf1;box-shadow:0 1px #e0e0e0;background:#f5f5f5;background:-moz-linear-gradient(top,#fff,#ececec);background:-webkit-gradient(linear,0 0,0 bottom,from(#fff),to(#ececec{%*i*%}))}.op-zx-hospolreg-btn:active{border:1px solid #a7aaaf;box-shadow:0 1px #c7c7c7 inset;background:#f0f0f0;background:-moz-linear-gradient(top,#ebebeb,#f5f5f5);background:-webkit-gradient(linear,0 0,0 bottom,from(#ebebeb),to(#f5f5f5))}</style><div class="op-zx-hospolreg c-clearfix"> <p class="op-zx-hospolreg-safetip"> 已通过百度认证，请放心使用 </p> <p class="c-gap-bottom-small">经卫生部批准的全国健康平台，覆盖全国超过400家三甲医院22万名专家</p> <div class="op-zx-hospolreg-select"> <span class="op-zx-hospolreg-select-val OP_LOG_BTN" data{%*i*%}-click="{fm:'beha'}" val="{%if $tplData.selectedroom[0]%}{%$tplData.selectedroom[0].id%}{%/if%}">{%if $tplData.selectedroom[0]%}{%$tplData.selectedroom[0].tip|limitlen:22%}{%else%}请选择科室{%/if%}</span> <span class="op-zx-hospolreg-select-btn OP_LOG_BTN" data-click="{fm:'beha'}"><img src="http://www.baidu.com/aladdin/img/zxhospital/arrow.png" class="c-gap-top c-gap-bottom"/></span> </div> <a target="_blank" class="c-gap-left op-zx-hospolreg-btn" href="{%$tplData.url%}"> 免费预约 </a> <div class="op-zx-hospolreg-select-box"> {%foreach $tplData.room as $item%} {%$tmpData.room[$item.pid][]= $item%} {%/foreach%} <div class="op-zx-hospolreg-select-list op-zx-hospolreg-hide" data-click="{fm:'beha'}"> <ul> {%foreach $tplData.department as $item%} <li class="c-gap-right op-zx-hospolreg-select-li"> <table> <tr> <td style="width:70px"> {%$item.tip%} </td> <td> {%foreach $tmpData.room[$item.id] as $ls%} <span><a href="javascript:;" class="op-zx-hospolreg-select-a" title="{%$ls.tip%}" hidefocus="true" data-value="{%$ls.tip|escape:'html'%}" data-did="{%$ls.id|escape:'html'%}">{%$ls.tip|limitlen:14|escape:'html'%}</a></span> {%/foreach%} </td> </tr> </table> </li> {%/foreach%} </ul> </div> <div class="op-zx-hospolreg-select-scroll op-zx-hospolreg-hide"></div> </div></div><script >
    A.setup('hospitalid','{%$tplData.hospitalId%}');
    A.setup('selectedroom',{%json_encode($tplData.selectedroom)%});
</script><script data-merge>A.setup(function(){var _this = this;var hospitalid = _this.data.hospitalid,selectedroom = _this.data.selectedroom;var $dom_select = _this.find('.op-zx-hospolreg-select'),$dom_select_val = _this.find('.op-zx-hospolreg-select-val'),$dom_select_box = _this.find('.op-zx-hospolreg-select-box'),$dom_select_scroll = _this.find('.op-zx-hospolreg-select-scroll'),$dom_select_list = _this.find('.op-zx-hospolreg-select-list'),$dom_select_lis = _this.find('.op-zx-hospolreg-select-{%*i*%}li'),$dom_select_as = _this.find('.op-zx-hospolreg-select-a'),$dom_submit = _this.find('.op-zx-hospolreg-btn');var selectScrollbar;if(selectedroom){seturl(selectedroom[0].id);}$dom_select_box.css('top',$dom_select.get(0).offsetTop);$dom_select_box.css('left',$dom_select.get(0).offsetLeft);A.use('scrollbarv',function(){var scrollheight = $dom_select_list.get(0).clientHeight - 1;selectScrollbar = A.ui.scrollbarv({scrollbar : $dom_select_scroll.get(0),content : $dom_select_list.get(0),length : scro{%*i*%}llheight});$dom_select_scroll.attr('data-click','{fm:"beha"}');if($dom_select_list.get(0).offsetHeight < $dom_select_list.find('ul').get(0).offsetHeight){selectScrollbar.render();}else{$dom_select_lis.css('margin-right','2px');}});$dom_select.click(function(e){e. stopPropagation(e);$dom_select_scroll.toggleClass('op-zx-hospolreg-hide');$dom_select_list.toggleClass('op-zx-hospolreg-hide');});var zhclickfn = function(e){$dom_select_list.addClass('op-zx-hospolreg-hide');$dom_select_scroll.addClass({%*i*%}'op-zx-hospolreg-hide');};$(document).click(zhclickfn);$dom_select_scroll.click(function(e){e. stopPropagation(e);});$dom_select_box.click(function(e){e. stopPropagation(e);});$dom_select_as.click(function(){$dom_select_val.html($(this).attr('data-value'));seturl($(this).attr('data-did'));$dom_select_list.addClass('op-zx-hospolreg-hide');$dom_select_scroll.addClass('op-zx-hospolreg-hide');});function seturl(id){var urlstr = 'http://home.guahao.cn/expert/fastorder/list?clinicTypeId=all&doctorTitl{%*i*%}eId=all&hospitalId='+hospitalid+'&hospDeptId='+id;$dom_submit.attr('href',urlstr);}this.dispose = function(){$(document).unbind("click", zhclickfn); selectScrollbar&&selectScrollbar.dispose&&selectScrollbar.dispose();};});</script>{%/block%}