{%fis_widget%}{%function name=weibotype%}{%if $type == 't.qq'%}腾讯{%/if%}{%if $type == 't.sohu'%}搜狐{%/if%}{%if $type == 't.163'%}网易{%/if%}{%if $type == 't.sina'%}新浪{%/if%}微博{%/function%}{%function name=weibourltype%}{%if $type == 't.sina'%}?c=spr_qdhz_bd_baidusmt_weibo_s{%/if%}{%/function%}{%$weiboFactor.needmerge = "//<a href=\"%s?c=spr_qdhz_bd_baidusmt_weibo_s\" target=\"_blank\" data-click=\"{'rsv_wb':'weibo_nick'}\">@%s</a>："%}{%$weiboFactor.needmergecall = "<a href=\"%s?c=spr_qdhz_bd_baidusmt_weibo_s\" target=\"_blank\" data-click=\"{'rsv_wb':'weibo_nick'}\">@%s</a> "%}{%$weiboFactor.url = "<a href=\"%s?c=spr_qdhz_bd_baidusmt_weibo_s\" target=\"_blank\" data-click=\"{'rsv_wb':'weibo_link'}\">%s</a>"%}{%$weiboFactor.picurl = "<a href=\"%s?c=spr_qdhz_bd_baidusmt_weibo_s\" target=\"_blank\" class=\"weibo_img c-gap-left-small\" data-click=\"{'rsv_wb':'weibo_img'}\"><i class='c-icon c-icon-pic c-gap-icon-left-small c-gap-icon-right-small'></i></a>"%}{%$weiboFactor.picurl_qq = "<a href=\"%s/460\" target=\"_blank\" class=\"weibo_img c-gap-left-small\" data-click=\"{'rsv_wb':'weibo_img'}\"><i class='c-icon c-icon-pic c-gap-icon-left-small c-gap-icon-right-small'></i></a>"%}{%$weiboFactor.videourl = "<a href=\"%s\" target=\"_blank\" data-click=\"{'rsv_wb':'weibo_video'}\"><i class='c-icon c-icon-video c-gap-icon-left-small c-gap-icon-right-small'></i></a>"%}{%$weiboFactor.topicurl = "#<a href=\"%s\" target=\"_blank\" data-click=\"{'rsv_wb':'weibo_topic\">%s</a>#"%}{%$weiboUrl["t.sohu"] = "http://t.sohu.com/n/%s"%}{%$weiboUrl["t.qq"] = "http://t.qq.com/%s"%}{%$weiboUrl["t.163"] = "http://t.163.com/?nickName=%s"%}{%$weiboUrl["t.sina"] = "http://weibo.com/n/%s"%}{%function name=display_weibo_factor%}{%if $pusher == "t.qq"%}{%$urlComponent=$cont|vui_escape:'html'%}{%else%}{%$urlComponent=$url|vui_escape:'html'%}{%/if%}{%if $type == "needmerge"%}{%sprintf($weiboFactor.needmerge,sprintf($weiboUrl[$pusher],$urlComponent),$url|vui_escape:'html')%}{%/if%}{%if $type == "needmergecall"%}{%sprintf($weiboFactor.needmergecall,sprintf($weiboUrl[$pusher],$urlComponent),$url|vui_escape:'html')%}{%/if%}{%if $type == "url"%}{%sprintf($weiboFactor.url,$url,$url|vui_escape:'html')%}{%/if%}{%if $type == "picurl"%}{%if $pusher == "t.sina"%}{%$url =  str_replace("thumbnail","bmiddle",$url)%}{%/if%}{%if $pusher == "t.qq"%}{%sprintf($weiboFactor.picurl_qq,$wurl|vui_escape:'html')%}{%else%}{%sprintf($weiboFactor.picurl,$wurl|vui_escape:'html')%}{%/if%}{%/if%}{%if $type == "videourl"%}{%sprintf($weiboFactor.videourl,$url|vui_escape:'html')%}{%/if%}{%if $type == "topicurl"%}{%sprintf($weiboFactor.topicurl,$url|vui_escape:'html',$cont|vui_escape:'html')%}{%/if%}{%/function%}{%function name=display_weibo_content%}{%$_weiBoUrl = $data.WeiBoUrl%}{%$contArray = split("\21",$data[$contName]|highlight:3)%}{%$_count = "`$prefix`Num"%}{%$offset = 1%}{%foreach $contArray as $cont%}{%$cont%}{%if $offset<=$data[$_count]%}{%$_url = "`$prefix`Url`$offset`"%}{%$_type = "`$prefix`Type`$offset`"%}{%$_cont = "`$prefix`Cont`$offset`"%}{%display_weibo_factor pusher=$data.WeiBoPusherName type=$data[$_type] wurl=$_weiBoUrl url=$data[$_url] cont=$data[$_cont]%}{%/if%}{%$offset = $offset + 1%}{%/foreach%}{%/function%}<table cellpadding="0" cellspacing="0" class="result-op xpath-log{%if $isSameSize==1%} c-res{%/if%}" id="{%$resIndex%}" srcid="{%$res.dispData.StdStg%}" mu="{%$res.offsetInfo.url%}" tpl="se_sp_weibo"  data-click="{'rsv_bdr':'{%$res.burstFlag%}','fm':'{%enc_str str="alwb"%}'}"><tr><td class="c-default"><style >.weibo a{text-decoration:none}.weibo a:hover{text-decoration:underline}.weibo li{min-height:55px;height:auto!important;height:55px;overflow:visible}.weibo li .info{padding-top:2px}.weibo li .info .c{text-decoration:none}.weibo_info{color:#666}.weibo_info .weibo_pz{float:right;color:#999}.weibo_img{font-family:"宋体";color:#77c;text-decoration:none;zoom:1}.weibo_face{position:relative;float:left}.weibo_face img{height:52px}.weibo_level_icon{background-image:url{%*i*%}(/cache/midpage/baiduwb/img/weibo_level_icon.png);width:16px;height:14px;background-repeat:no-repeat;display:inline-block;vertical-align:text-bottom;margin:0 5px}.weibo_level_icon_1{background-position:-20px 0}.weibo_level_icon_2{background-position:0 0}.weibo_level_icon_3{background-position:-40px 0}.weibo_level_icon_11{background-position:-80px 0}.weibo_level_icon_12{background-position:-60px 0}.weibo_level_icon_13{background-position:-100px 0}.weibo_more a{text-decoration:underline}.weibo_inf{%*i*%}o .m a{color:#666}.weibo_all{white-space:nowrap;display:inline-block}{%fe_fn_ui_c_css css='img'%}</style><h3 class="t"><a href="{%enc_url url=$res.offsetInfo.urlEncoded%}" target="_blank" data-click="{'rsv_wb':'title'}"><em>{%$query|limitlen:49|vui_escape:'html'%}</em>的最新微博结果</a>{%fis_widget_inline%}{%if $isUserLogin == 1 && $isFavoOn == 1%}{%if $res.favoFlag == 1%}<span class="tsuf"><span class="fav fav_add" data-fav="1" data-id="{%$res.favoItemId%}" title="点击取消收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%else%}<span class="tsuf"><span class="fav fav_nor" data-fav="0" data-id="0" title="点击收藏" onmousedown="return c({'fm':'bfav','url':this.getAttribute('data-url'),'title':this.getAttribute('data-title'),'p1':bds.se.favo.favPos(this),'p2':0,'p3':1,tab:this.getAttribute('data-fav')});"></span></span>{%/if%}{%/if%}{%/fis_widget_inline%}</h3>{%if $res.dispData.Result%}<div class="weibo c-gap-top-small" id="weibo"><ul>{%for $index = 0 to 1%}{%$weiboData = $res.dispData.Result[$index]%}{%$sina_args =($weiboData.WeiBoPusherName=="t.sina")?"?c=spr_qdhz_bd_baidusmt_weibo_s":""%}<li class="c-row {%if $index === 0%}c-gap-bottom{%/if%}"><div class="weibo_face c-span3"><a target="_blank" data-click="{'rsv_wb':'weibo_face'}" href=
                {%if $weiboData.WeiBoUserID || $weiboData.WeiBoNick%}
                {%if $weiboData.WeiBoPusherName == 't.qq'%}"{%enc_url url="http://t.qq.com/`$weiboData.WeiBoUserID`"%}"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.sohu'%}"{%enc_url url="http://t.sohu.com/n/`$weiboData.WeiBoNick`"%}"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.163'%}"{%enc_url url="http://t.163.com/?nickName=`$weiboData.WeiBoNick`"%}"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.sina'%}"{%enc_url url="http://weibo.com/n/`$weiboData.WeiBoNick`?c=spr_qdhz_bd_baidusmt_weibo_s"%}"{%/if%}
                {%/if%}
                ><img src="{%if $weiboData.weibo_head_pic.icon%}{%$weiboData.weibo_head_pic.icon|vui_escape:'html'%}{%else%}/cache/midpage/baiduwb/img/weibo_face_default.png{%/if%}" class="c-img c-img3" /></a></div><div class="weibo_detail c-span21 c-span-last"><p>{%if $weiboData.WeiBoUserID || $weiboData.WeiBoNick%}{%if $weiboData.WeiBoPusherName == 't.qq'%}<a href="{%enc_url url="http://t.qq.com/`$weiboData.WeiBoUserID`"%}" target="_blank" data-click="{'rsv_wb':'weibo_rootnick'}">{%$weiboData.WeiBoNick%}</a>{%/if%}{%if $weiboData.WeiBoPusherName == 't.sohu'%}<a href="{%enc_url url="http://t.sohu.com/n/`$weiboData.WeiBoNick`"%}" target="_blank" data-click="{'rsv_wb':'weibo_rootnick'}">{%$weiboData.WeiBoNick|vui_escape:'html'%}</a>{%/if%}{%if $weiboData.WeiBoPusherName == 't.163'%}<a href="{%enc_url url="http://t.163.com/?nickName=`$weiboData.WeiBoNick`"%}" target="_blank" data-click="{'rsv_wb':'weibo_rootnick'}">{%$weiboData.WeiBoNick%}</a>{%/if%}{%if $weiboData.WeiBoPusherName == 't.sina'%}<a href="{%enc_url url="http://weibo.com/n/`$weiboData.WeiBoNick`?c=spr_qdhz_bd_baidusmt_weibo_s"%}" target="_blank" data-click="{'rsv_wb':'weibo_rootnick'}">{%$weiboData.WeiBoNick%}</a>{%/if%}{%if $weiboData.weibo_head_pic.userLevel%}<span class="weibo_level_icon weibo_level_icon_{%$weiboData.weibo_head_pic.userLevel|vui_escape:'html'%}"></span>{%/if%}：{%/if%}{%display_weibo_content data=$weiboData contName="WeiBoContent" prefix="WeiBoContIn" %}<a class="weibo_all c-gap-left-small" data-click="{'rsv_wb':'weibo_detail'}" target="_blank" href="{%enc_url url="`$weiboData.WeiBoUrl|encodeURI``$sina_args`"%}">查看全文>></a></p>{%$sina_suffix_comment = ($weiboData.WeiBoPusherName=="t.sina")?"?c=spr_qdhz_bd_baidusmt_weibo_s&type=comment":""%}{%$sina_suffix_repost = ($weiboData.WeiBoPusherName=="t.sina")?"?c=spr_qdhz_bd_baidusmt_weibo_s&type=repost":""%}<div class="weibo_info"><div class="weibo_pz"><a href="{%enc_url url="`$weiboData.WeiBoUrl|encodeURI``$sina_suffix_repost`"%}" data-click="{'rsv_wb':'weibo_trans'}" target="_blank">转发({%if isset($weiboData.weibo.trans)%}{%$weiboData.weibo.trans|vui_escape:'html'%}{%else%}0{%/if%})</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="{%enc_url url="`$weiboData.WeiBoUrl|encodeURI``$sina_suffix_comment`"%}" target="_blank" data-click="{'rsv_wb':'weibo_ping'}">评论({%if isset($weiboData.weibo.review)%}{%$weiboData.weibo.review|vui_escape:'html'%}{%else%}0{%/if%})</a></div><div class="m"><a target="_blank" href="{%enc_url url="`$weiboData.WeiBoUrl|encodeURI``$sina_args`"%}">{%display_time serverTime=$serverTime second=$weiboData.WeiBoPubTime%}</a>&nbsp;-&nbsp;<a target="_blank" href=
                {%if $weiboData.WeiBoUserID || $weiboData.WeiBoNick%}
                {%if $weiboData.WeiBoPusherName == 't.qq'%}"http://t.qq.com/"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.sohu'%}"http://t.sohu.com/"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.163'%}"http://t.163.com/"{%/if%}
                {%if $weiboData.WeiBoPusherName == 't.sina'%}"http://weibo.com/?c=spr_qdhz_bd_baidusmt_weibo_s"{%/if%}
                {%/if%}
                >{%weibotype type=$weiboData.WeiBoPusherName%}</a></div></div></div></li>{%/for%}</ul><div class="weibo_more c-gap-top-small"><a href="{%enc_url url=$res.offsetInfo.urlEncoded%}" target="_blank" data-click="{'rsv_wb':'more'}">查看更多相关微博>></a></div></div>{%/if%}</td></tr></table>{%/fis_widget%}