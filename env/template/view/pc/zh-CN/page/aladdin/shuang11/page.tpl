{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.op-shuang11-title{font-size:16px;font-family:'宋体';margin-bottom:10px}.op-shuang11-title a{color:#00c}.op-shuang11-title a em{color:#c00}.op-shuang11-head{overflow:hidden;zoom:1;margin-bottom:10px}.op-shuang11-logo{float:left;width:121px;height:91px;overflow:hidden}.op-shuang11-logo img{border:0}.op-shuang11-intro{margin-left:10px;float:left;width:407px;height:91px;overflow:hidden;font-family:'宋体';font-size:13px;color:#333}.op-shuang11-intro p{text-indent:2em;line-height:140%}.op-shuang11{%*i*%}-body{width:538px;margin-bottom:5px}.op-shuang11-body a:hover{text-decoration:underline}.op-shuang11-table-head{text-align:left;font-size:13px}.op-shuang11-table-head a{color:#666;margin-left:10px;text-decoration:none}.op-shuang11-table-head th{text-align:left;font-weight:normal;height:28px;line-height:28px;border:0;background:#fafafa;font-size:13px;border-bottom:solid 1px #dfdfdf}.op-shuang11-table-body td{padding-left:10px;text-align:left;font-size:13px;height:30px;line-height:30px;border:0;bo{%*i*%}rder-bottom:1px solid #dfdfdf;white-space:nowrap}.op-shuang11-table-body td a{padding-left:10px;background:url('http://ecma.bdimg.com/adtest/34fe77df809e197a3304ff033c21f5a7.jpg') left center no-repeat;text-decoration:none;color:#00c}</style><div class="op-shuang11-title">{%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}</div><div class="op-shuang11-main">  <div class="op-shuang11-head"> <div class="op-shuang11-logo"> <a href="{%$tplData.url2%}" target="_blank"> <img src="{%$tplData.logo%}" /> </a> </div> <div class="op-shuang11-intro"> <p>{%$tplData.intro1%}</p> <p>{%$tplData.intro2%}</p> </div> </div> <div class="op-shuang11-body"> <table width="100%" cellspacing="0" cellpadding="0"> <tr class="op-shuang11-table-head"> <th colspan="3"> <a href="{%$tplData.url2%}" target="_blank">{%$tplData.title2%}</a> </th> </tr> {%for $op_loop_count_tr=0 to 2%} <tr class="op-shuang11-table-body"> {%for $op_loop_count_td=0 to 2%} <td> <a href="{%$tplData.links.link[3*$op_loop_count_tr+$op_loop_count_td]['linkurl']%}" target="_blank"> {%$tplData.links.link[3*$op_loop_count_tr+$op_loop_count_td]['linkcontent']%} </a> </td> {%/for%} </tr> {%/for%} </table> </div></div><div>{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div><script>A.init(function(){var T = A.baidu, _this = this;});</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}