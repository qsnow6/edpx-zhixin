{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $extData.resourceid && $extData.resourceid lt 5999%}{%$extData.feData.fm='alvd7'%}{%/if%}{%$extData.feData.hasShowURLGap=true%}{%$alias=""%}{%if $tplData.allalias && (strpos($extData.OriginQuery, $tplData.originalname) === false)%} {%foreach $tplData.allalias as $item%} {%if strpos($extData.OriginQuery, $item) !== false%} {%$alias = $item%} {%/if%} {%/foreach%}{%/if%}{%/block%}{%block name='foot'%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='img'%}.op-movievideo-a{position:relative;display:block}.op-movievideo-poster{height:100%}.op-movievideo-playicon{width:42px;height:42px;position:absolute;top:50%;left:50%;margin-left:-21px;margin-top:-21px;cursor:pointer;z-index:2;background:url(http://www.baidu.com/aladdin/img/movievideo/playicon.png) no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/aladdin/img/movievideo/playicon.png")}.op-movievideo-mask{w{%*i*%}idth:100%;height:100%;position:absolute;top:0;left:0;background:#000;filter:alpha(opacity=20);opacity:.2;-moz-opacity:.2;cursor:pointer;display:none;z-index:1}.op-movievideo-over .op-movievideo-mask{display:block}.op-movievideo-right{position:relative}.op-movievideo-finish,.op-movievideo-update{padding:0 1px;text-align:center;color:#fff;font-size:.92em;background:#2b99ff}.op-movievideo-tvplay div{float:left;line-height:14px;margin-bottom:3px}.op-movievideo-first{width:62%;text-overflow:ellipsis;{%*i*%}overflow:hidden;white-space:nowrap}.op-movievideo-tip{color:#666}.op-movievideo-info{color:#666}.op-movievideo-rate{text-align:right;line-height:20px;position:absolute;right:0;top:-2px;color:#666}.op-movievideo-rateleft{text-align:left;line-height:20px}.op-movievideo-rate i,.op-movievideo-rateleft i{color:#ff4c2e;font-size:18px}.op-movievideo-split{color:#d8d8d8;margin:0 5px}.op-movievideo-left{float:left}.op-movievideo-info a{padding-left:5px}.op-movievideo-site a{padding-right:10px}.op-movievi{%*i*%}deo-site i,.op-movievideo-info i{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px}.op-movievideo-summary,.op-movievideo-season{padding-left:3em;text-indent:-3em}.op-movievideo-seasonEp{margin-right:24px;white-space:nowrap}</style><style>.op-movievideo-a{height:{%fe_fn_c_get_grid_height rate=161/121%}px}.op-movievideo-a img{height:{%fe_fn_c_get_img_height col=6 rate=161/121%}px}</style>{%if $tplData.type_new%} {%$tplData.type=$tplData.type_new%}{%/if%}{%if $tplData.area_new%} {%$tplData.area=$tplData.area_new%}{%/if%}<div> <div class="c-row op-movievideo"> <div class="c-span6 c-gap-bottom-small"> <a target="_blank" href="{%$tplData.url%}" class="op-movievideo-a"><img class="c-img6 op-movievideo-poster" src="{%$tplData.poster%}" /><span class="op-movievideo-playicon"></span><span class="op-movievideo-mask"></span></a> </div> <div class="c-span18 c-span-last op-movievideo-right"> {%if $tplData.totalEp || $tplData.latestEp || $tplData.season%} <div class="c-clearfix op-movievideo-tvplay"> {%if $tplData.finish || $tplData.totalEp == $tplData.latestEp%} {%if $tplData.season%}<div class="op-movievideo-update c-gap-icon-right-small">更新至</div><div>{%$tplData.season%}全</div>{%else%}<div class="op-movievideo-finish c-gap-icon-right-small">已完结</div><div>共{%$tplData.totalEp%}集</div>{%/if%} {%else%} <div class="op-movievideo-update c-gap-icon-right-small">更新至</div><div>{%if $tplData.season%}第{%$tplData.season%}{%else%}第{%$tplData.latestEp%}集&nbsp;/&nbsp;共{%$tplData.totalEp%}集{%/if%}</div> {%/if%} </div> {%/if%} {%$fistRowExist = $tplData.releaseTime || $tplData.duration || $tplData.area || $tplData.lang%} {%$fistInfoExist = false%} {%if $fistRowExist%} <div class="c-clearfix"> <div class="op-movievideo-first">{%if $tplData.releaseTime%}{%$tplData.releaseTime%}{%$fistInfoExist = true%}{%/if%}{%if $tplData.duration%}{%if $fistInfoExist%}<span class="op-movievideo-split">|</span>{%/if%}{%$tplData.duration%}{%$fistInfoExist = true%}{%/if%}{%if $tplData.area%}{%if $fistInfoExist%}<span class="op-movievideo-split">|</span>{%/if%}{%$tplData.area%}{%$fistInfoExist = true%}{%/if%}{%if $tplData.lang%}{%if $fistInfoExist%}<span class="op-movievideo-split">|</span>{%/if%}{%$tplData.lang%}{%$fistInfoExist = true%}{%/if%}</div> <div class="op-movievideo-rate">{%$tplData.rate[0].site%}<i class="c-gap-left-small">{%$tplData.rate[0].num%}</i></div> </div> <div class="c-clearfix"> <div> <span class="op-movievideo-tip">类型：</span>{%foreach  array_slice($tplData.type, 0, 3) as $item%}{%if $item.link%}<a target="_blank" href="{%$item.link%}">{%$item.name%}</a>{%else%}{%$item.name%}{%/if%}{%if !$item@last%}<span class="op-movievideo-split">|</span>{%/if%}{%/foreach%} </div> <div class="op-movievideo-rate">{%$tplData.rate[0].site%}<i class="c-gap-left-small">{%$tplData.rate[0].num%}</i></div> </div> {%elseif $tplData.type%} <div class="c-clearfix"><div> <span class="op-movievideo-tip">类型：</span>{%foreach  array_slice($tplData.type, 0, 3) as $item%}{%if $item.link%}<a target="_blank" href="{%$item.link%}">{%$item.name%}</a>{%else%}{%$item.name%}{%/if%}{%if !$item@last%}<span class="op-movievideo-split">|</span>{%/if%}{%/foreach%} </div> <div class="op-movievideo-rate">{%$tplData.rate[0].site%}<i>{%$tplData.rate[0].num%}</i></div> </div> {%elseif $tplData.rate[0]%} <div class="op-movievideo-rateleft">{%$tplData.rate[0].site%}<i>{%$tplData.rate[0].num%}</i></div> {%/if%} {%if $tplData.summary%} <div class="c-clearfix op-movievideo-summary"> {%$aliasLen = 0%} <span class="op-movievideo-tip">简介：</span><span class="op-movievideo-cnt">{%if $alias%}{%$aliasLen = (strlen($tplData.alias) + mb_strlen($tplData.alias,'utf-8'))/2 + 8%}（别名：<em>{%$alias|escape:'html'%}</em>）{%/if%}{%$tplData.summary[0].content|limitlen:(140-$aliasLen)%}{%if $tplData.summary[0].link && $tplData.summary[0].content|trim != $tplData.summary[0].content|limitlen:(140-$aliasLen)%}<a target="_blank" href="{%$tplData.summary[0].link%}" style="padding-left:5px;">更多&gt;&gt;</a>{%/if%}</span> </div> {%/if%} <div class="c-clearfix{%if $tplData.seasonEp%} op-movievideo-season{%/if%}"> {%*完结多季部电视剧*%} {%if $tplData.seasonEp%} {%if $tplData.seasonEp[10]%} {%$tplData.seasonEp[9].name="更多剧集>>"%} {%$tplData.seasonEp[9].link=$tplData.url%} {%/if%} <span class="op-movievideo-tip">剧集：</span>{%foreach array_slice($tplData.seasonEp, 0, 10) as $item%}<span class="op-movievideo-seasonEp{%if ($item@index + 1) % 3 == 0%}{%/if%}"{%if $item@index == 9%} style="margin-right:0"{%/if%}>{%if $item.link%}<a target="_blank" href="{%$item.link%}" title="{%$item.name%}">{%$item.name|limitlen:10%}</a>{%else%}<span>{%$item.name|limitlen:10%}</span>{%/if%}</span> {%/foreach%} {%else%} {%*正版电影*%} {%if $tplData.videoPlay[0]%} {%if !isset($tplData.btntext)%} {%$tplData.btntext='立即播放'%} {%/if%} <div class="c-clearfix c-gap-top {%if $tplData.videoPlay|count <= 1%} c-gap-bottom-small{%/if%}"> <div class="op-movievideo-left"><a class="c-btn c-btn-primary c-btn-large" target="_blank" href="{%$tplData.videoPlay[0].link%}"><i class="c-icon c-icon-play-white" style="margin-top:8px;margin-right:1px;"></i>{%$tplData.btntext%}</a></div> <div class="op-movievideo-info op-movievideo-left c-gap-left c-gap-top-small">来源：<a target="_blank" href="{%$tplData.videoPlay[0].link%}"><i style="background:url({%$tplData.videoPlay[0].icon%}) no-repeat 0 0;"></i>{%$tplData.videoPlay[0].name%}</a></div> </div> {%if $tplData.videoPlay|count > 1%} <div class="c-clearfix c-gap-top-small op-movievideo-site">其它： {%foreach array_slice($tplData.videoPlay, 1, 4) as $item%} <a target="_blank" href="{%$item.link%}"><i style="background:url({%$item.icon%}) no-repeat 0 0;"></i>{%$item.name%}</a> {%/foreach%} </div> {%/if%} {%*盗版电影/电视剧*%} {%else%} {%if !isset($tplData.btntext)%} {%$tplData.btntext='前往观看'%} {%/if%} <div class="c-clearfix c-gap-top c-gap-bottom-small"> <div class="op-movievideo-left"><a class="c-btn c-btn-primary c-btn-large" target="_blank" href="{%$tplData.url%}">{%if $tplData.hasbtnicon=='true'%}<i class="c-icon c-icon-play-white" style="margin-top:8px;margin-right:1px;"></i>{%/if%}<span class="op-movievideo-btntxt">{%$tplData.btntext|limitlen:20|escape:html%}</span></a></div> {%if $tplData.videoinfo%}<div class="op-movievideo-info op-movievideo-left c-gap-left c-gap-top-small">{%$tplData.videoinfo%}</div>{%/if%} </div> {%/if%} {%/if%} </div> <div>{%fe_fn_c_showurl%}</div> </div> </div></div><script data-compress='off'>A.setup({"platform":"{%$extData.feData.platform|escape:'html'|escape:'javascript'%}","isvip":{%if $tplData.isvip[0]%}{"link":"{%$tplData.isvip[0].link%}","viptxt":"{%$tplData.isvip[0].viptxt%}","othertxt":"{%$tplData.isvip[0].othertxt%}"}{%else%}""{%/if%}});</script><script data-merge>A.setup(function(){var _this = this;var isvip=_this.data.isvip;if(isvip){$.ajax({url:isvip.link,dataType:"jsonp",timeout:6000,success: function(data){var $btn=_this.find('.op-movievideo-btntxt');if(data.isvalid==1){$btn.html($.subByte(isvip.viptxt,20));}else{$btn.html($.subByte(isvip.othertxt,20));}}});}if(_this.data.platform!='ipad'){var $aDom = _this.find('.op-movievideo-a');$aDom.on('mouseover',function(){$aDom.addClass('op-movievideo-over');});$aDom.on('mouseou{%*i*%}t',function(){$aDom.removeClass('op-movievideo-over');});}});</script>{%/block%}