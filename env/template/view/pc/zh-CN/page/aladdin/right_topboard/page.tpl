{%extends 'right_base.tpl'%} {%block name='content'%}<style>.opr-topboard{font-size:12px;color:#333}.opr-topboard a{text-decoration:none}.opr-topboard a:hover{text-decoration:underline}.container_l .opr-topboard{width:440px}.container_s .opr-topboard{width:270px}.container_l .opr-topboard-name{width:220px}.container_s .opr-topboard-name{width:120px}.opr-topboard-subtitle{position:relative;height:22px;line-height:22px;font-size:14px}.opr-topboard-subtitle-tip{position:absolute;padding-right:10px;background:#fff;font-weight:bold;z-index:2}.opr-topbo{%*i*%}ard-subtitle-line{position:absolute;top:11px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1}.opr-topboard ul{padding-top:5px}.opr-topboard li{border-bottom:1px solid #f5f5f5;height:32px;line-height:32px;overflow:hidden}.opr-topboard-listnumbg,.opr-topboard-trend,.opr-topboard-new{background:url("http://www.baidu.com/aladdin/img/topboard/topboard.png") no-repeat}.opr-topboard-listnumbg{width:13px;height:13px;margin:9px 13px 0 0}.opr-topboard-listnum1{background-position:-14px 0}.opr-t{%*i*%}opboard-listnum2{background-position:-32px 0}.opr-topboard-listnum3{background-position:-50px 0}.opr-topboard-listnum4{background-position:-67px 0}.opr-topboard-listnum5{background-position:-85px 0}.opr-topboard-listnum6{background-position:-14px -29px}.opr-topboard-listnum7{background-position:-32px -29px}.opr-topboard-listnum8{background-position:-50px -29px}.opr-topboard-listnum9{background-position:-67px -29px}.opr-topboard-listnum10{background-position:-85px -29px}.opr-topboard-up{backgroun{%*i*%}d-position:5px 12px}.opr-topboard-down{background-position:5px -13px}.opr-topboard-none{background-position:5px -33px}.opr-topboard li div{height:32px;line-height:32px;float:left;overflow:hidden}.opr-topboard-name{position:relative;float:left}.opr-topboard-new{display:inline-block;width:16px;height:12px;margin-bottom:5px;background-position:-104px 0}.opr-topboard .opr-topboard-hot{height:7px;margin:12px 0 0 5px;background:#e5e5e5}.opr-topboard-num{margin-left:5px;color:#666}.opr-topboard-more{ma{%*i*%}rgin-top:6px}.opr-topboard-more a{text-decoration:underline}.opr-topboard-more-left{float:left}.opr-topboard-more-right{float:right;color:#666}.opr-topboard-more-right a{color:#666}</style><div class="opr-topboard"> <div class="opr-topboard-subtitle"> <div class="opr-topboard-subtitle-tip">{%$tplData.bdlistTitle%}</div> <div class="opr-topboard-subtitle-line"></div> </div> <ul class="c-clearfix"> {%foreach $tplData.bdlist as $item%} {%if $item@index > 9%}{%break%}{%/if%} <li> <div class="opr-topboard-listnumbg opr-topboard-listnum{%$item@index + 1%}"></div> <div class="opr-topboard-name"> <a target="_blank" class="opr-topboard-song" href="{%if isset($item.basedata[0]['url'])&&trim($item.basedata[0]['url'])%}{%$item.basedata[0]['url']%}{%else%}{%build_search_url params="`$item.basedata[0].params`&zxmsap=1"%}{%/if%}" title="{%$item.basedata[0].content%}">{%$item.basedata[0].content|limitlen:16%}</a> {%if $item.basedata[0].isnew == '1'%} <span class="opr-topboard-new"></span> {%/if%} </div> <div style="width:{%$item.basedata[0].hot%}px" class="opr-topboard-hot"></div> <div style="display:none;" class="opr-topboard-num" {%if $item.basedata[0].num|strlen > 9%}title="{%$item.basedata[0].num%}"{%/if%}>{%$item.basedata[0].num|limitlen:6%}</div> </li> {%/foreach%} </ul> {%if $tplData.morelink&&$tplData.morelink[0]&&$tplData.morelink[0]['txt']%} <div class="opr-topboard-more"> <span class="opr-topboard-more-left"><a href="{%$tplData.morelink[0]['url']%}" target="_blank">{%$tplData.morelink[0]['txt']|escape%}</a></span> {%if isset($tplData.source[0]['txt1'])&&trim($tplData.source[0]['txt1'])%} <span class="opr-topboard-more-right">来源：<a href="{%$tplData.source[0]['url1']%}" target="_blank">{%$tplData.source[0]['txt1']|escape%}</a>{%if isset($tplData.source[0]['txt2'])&&trim($tplData.source[0]['txt2'])%} - <a href="{%$tplData.source[0]['url2']%}" target="_blank">{%$tplData.source[0]['txt2']|escape%}</a>{%/if%}</span> {%/if%} <div style="clear:both"></div> </div> {%/if%}</div><script>A.init(function(){var _this = this;var dom_song = _this.find('.opr-topboard-song');$.each(dom_song,function(i,item){$(item).on('click',function(){bds.event && bds.event.trigger('zhixin.zx_mussong_mbox_pause');});});});</script>{%/block%}