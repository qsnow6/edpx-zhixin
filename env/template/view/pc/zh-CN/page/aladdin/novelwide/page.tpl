{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op_novelwide_title{background:url("http://www.baidu.com/cache/global/img/bg-1.0.8.png") no-repeat left -619px;padding-left:20px;line-height:18px;margin:0 15px 10px 0;width:516px;font-weight:bold;font-size:14px}.op_novelwide_table{border:0;margin-top:9px}.op_novelwide_table th{white-space:nowrap;padding:0 10px 0 8px;text-align:left;font-weight:normal;height:26px;line-height:26px;font-size:13px;color:#000;background:url("http://www.baidu.com/aladdin/img/table/bg.gif") 0 -36px repeat-x;bord{%*i*%}er:0}.op_novelwide_table td{white-space:nowrap;padding:0 18px 0 8px;height:33px;font-size:14px;border-bottom:#eee 1px solid}.op_novelwide_table a{text-decoration:none}.op_novelwide_table em{text-decoration:none}.op_novelwide_table .op_novelwide_more{display:none}.op_novelwide_open,.op_novelwide_close{display:inline-block;font-weight:bold;color:#261cdc;text-decoration:underline;cursor:pointer;margin:3px 0;font-size:13px}.op_novelwide_close{display:none}.op_novelwide_close b{background-position:-1{%*i*%}8px -24px}.op_novelwide_open b,.op_novelwide_close b{background:url(http://www.baidu.com/aladdin/img/newvideotvplay/newvideo_new.png) 0 -24px;height:13px;width:14px;overflow:hidden;float:left;margin:3px 3px 0 0}</style><h3 class="op_novelwide_title">百度为您推荐:</h3><font size="-1"> <table cellpadding="0" cellspacing="0" width="540px" class="op_novelwide_table"> <thead> <tr> <th>{%$tplData.tabletitle[0]['title1']%}</th> <th>{%$tplData.tabletitle[0]['title2']%}</th> <th>{%$tplData.tabletitle[0]['title3']%}</th> {%if $tplData.tabletitle[0]['title4']!=""%}<th>{%$tplData.tabletitle[0]['title4']%}</th>{%/if%} </tr> </thead> <tbody> {%for $loop_index=0 to 4%} <tr> <td><a href="{%$tplData.content[$loop_index]['title1linker']%}" target="_blank">{%$tplData.content[$loop_index]['title1']|limitlen:22%}</a></td> <td> {%if $tplData.tabletitle[0]['title2linker']!=""%} <a href="{%$tplData.content[$loop_index]['title2linker']%}" target="_blank">{%$tplData.content[$loop_index]['title2']|limitlen:16|highlight:0%}</a> {%else%} {%$tplData.content[$loop_index]['title2']|limitlen:16|highlight:0%} {%/if%} </td> {%if $tplData.content[$loop_index]['title3']!=""%} <td>{%$tplData.content[$loop_index]['title3']|limitlen:18|highlight:0%}</td> {%else%} <td>-</td> {%/if%} {%if $tplData.tabletitle[0]['title4']!=""%} {%if $tplData.content[$loop_index]['title4']!=""%} <td>{%$tplData.content[$loop_index]['title4']|limitlen:6%}</td> {%else%} <td>-</td> {%/if%} {%/if%} </tr> {%/for%} </tbody> <tfoot class="op_novelwide_more"> {%$loop_maxcount=count($tplData.content)%} {%for $loop_index1=5 to 14%} {%if $loop_index1<$loop_maxcount%} <tr> <td><a href="{%$tplData.content[$loop_index1]['title1linker']%}" target="_blank">{%$tplData.content[$loop_index1]['title1']|limitlen:22%}</a></td> <td> {%if $tplData.tabletitle[0]['title2linker']!=""%} <a href="{%$tplData.content[$loop_index1]['title2linker']%}" target="_blank">{%$tplData.content[$loop_index1]['title2']|limitlen:16|highlight:0%}</a> {%else%} {%$tplData.content[$loop_index1]['title2']|limitlen:16|highlight:0%} {%/if%} </td> {%if $tplData.content[$loop_index1]['title3']!=""%} <td>{%$tplData.content[$loop_index1]['title3']|limitlen:18|highlight:0%}</td> {%else%} <td>-</td> {%/if%} {%if $tplData.tabletitle[0]['title4']!=""%} {%if $tplData.content[$loop_index1]['title4']%} <td>{%$tplData.content[$loop_index1]['title4']|limitlen:6%}</td> {%else%} <td>-</td> {%/if%} {%/if%} </tr> {%else%} {%break%} {%/if%} {%/for%} </tfoot> </table> <div class="OP_LOG_BTN op_novelwide_open"><b></b>查看更多推荐</div> <div class="OP_LOG_BTN op_novelwide_close"><b></b>收起</div></font><script>A.setup(function(){var _this = this;var more = _this.find(".op_novelwide_more")[0],open = _this.find(".op_novelwide_open")[0],close = _this.find(".op_novelwide_close")[0];if(open){open.onclick = function(){more.style.display = "table-footer-group";close.style.display = "block";open.style.display = "none";};close.onclick = function(){more.style.{%*i*%}display = "";close.style.display = "";open.style.display = "";};}});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}