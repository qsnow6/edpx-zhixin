<style type="text/css">.bds-list-tip{height:0;margin-bottom:0;overflow:hidden}.bds-list .bds-novel-tip{display:block;height:50px;line-height:50px;background-color:#f2f2f2;color:#666!important;font-size:16px;text-decoration:none;border-radius:3px;-webkit-border-radius:3px}.bds-novel-icon{background:url(http://s1.bdstatic.com/r/www/cache/pad/static/global/img/logo_icon_bed724f0.png) no-repeat;width:16px;height:17px;background-size:16px 17px;-webkit-background-size:16px 17px;background-position:0 0{%*i*%};display:inline-block;vertical-align:middle;margin:-6px 9px 0 18px}.bds-novel-tip-right{float:right;margin-right:14px;color:#000}.bds-list .bds-novel-right{border-top:2px solid #b4b8bf;border-right:2px solid #b4b8bf;-webkit-transform:rotate(45deg);-webkit-border-radius:2px;width:10px;height:10px;display:inline-block;vertical-align:middle;margin-top:-5px}</style><script>(function(){$(document).ready(function(){var storage = window.localStorage;if(!(storage.getItem("feTempNovelRcmd")=="0")&&bds.co{%*i*%}mm.query){var baseUrl = "/home/page/data/padcardsinfo";$.ajax({type: 'GET',url: baseUrl,data: { query: bds.comm.query},dataType: 'json',timeout: 1000,success: function(data){if(data &&data.errNo=="0"){if(data.testKeys && $.inArray("3",data.testKeys)!=-1){if(data.novelNotice[0] && data.novelNotice[0]['resName']){$('<li class="bds-list bds-list-tip"><a class="bds-novel-tip" href="http://www.baidu.com/#card_page" target="_blank"><span class="bds-novel-icon"></span><span>搜《'+data.novelNotice[0]['res{%*i*%}Name']+'》？去百度首页，自动搜索提醒。</span><div class="bds-novel-tip-right"><span>去看看</span><span class="bds-novel-right"></span></div></a></li>').insertBefore($(".bds-list")[0]);$(".bds-list-tip").animate({'height': '50px','margin-bottom':'22px'}, 500, 'ease-out');ns_c({action_name: "inlo",account: "tip_show"});$(".bds-novel-tip").bind("click",function(){ns_c({action_name: "inlo",account: "tip_click"});});}}else{storage.setItem("feTempNovelRcmd","0");}}},error: function(xhr, type){}});}}); })($); </script>