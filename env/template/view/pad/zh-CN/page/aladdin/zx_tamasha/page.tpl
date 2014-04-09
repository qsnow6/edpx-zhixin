{%extends 'c_base.tpl'%} {%block name='data_modifier'%}{%if $tplData.result|@count<=1%} {%if strstr($tplData.queryparser[0].episode_num,'最新一期')%} {%$tplData.result[0].showdate=$tplData.result[0].showdate|cat:'最新一期'%} {%elseif $tplData.queryparser[0].episode_num && (mb_strlen($tplData.queryparser[0].episode_num,'utf-8')+strlen($tplData.queryparser[0].episode_num))/2<4%} {%$tplData.article='第'%} {%$tplData.result[0].showdate=$tplData.article|cat:$tplData.queryparser[0].episode_num|cat:'期'|cat:$tplData.result[0].showdate%} {%/if%} {%if $tplData.queryparser[0].guests%} {%if strstr($tplData.result[0].scenes,$tplData.queryparser[0].guests)%} {%$tplData.suffix=$tplData.result[0].showdate|cat:'_'|cat:$tplData.result[0].scenes|cat:'_'%} {%else%}{%$tplData.suffix=$tplData.result[0].showdate|cat:'_'|cat:$tplData.queryparser[0].guests|cat:'_'|cat:$tplData.result[0].scenes|cat:'_'%} {%/if%} {%elseif $tplData.queryparser[0].scenes%} {%$tplData.suffix=$tplData.result[0].showdate|cat:'_'|cat:$tplData.queryparser[0].scenes|cat:'_'%} {%else%} {%$tplData.suffix=$tplData.result[0].showdate|cat:'_'|cat:$tplData.result[0].scenes|cat:'_' %} {%/if%}{%else%} {%$tplData.result[0].title=$tplData.result[0].title|cat:'_'%} {%if $tplData.queryparser[0].guests%} {%$tplData.suffix=$tplData.queryparser[0].guests%} {%elseif $tplData.queryparser[0].scenes%} {%$tplData.suffix=$tplData.queryparser[0].scenes%} {%/if%}{%/if%}{%$tplData.title=$tplData.result[0].title|cat:$tplData.suffix|cat:'更多正版视频在线观看_百度视频'%}{%$tplData.showurl=$tplData.result[0].showurl%}{%$tplData.date=$tplData.result[0].date%}{%/block%}{%block name='content'%}<style data-merge>{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='img'%}{%fe_fn_c_css css='tabs'%}.op_zx_tamasha_left{float:left}.op_zx_tamasha_a{display:block;position:relative;overflow:hidden;background-color:#000;text-decoration:none}.op_zx_tamasha_info{padding-left:18px}.op_zx_tamasha_site i{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden;padding-right:3px}.op_zx_tamasha_split{color:#d8d8d8}.op_zx_tamasha_ratebg,.op_zx_tamasha_rate{height:20px;position:absolute;bottom:0;left:0}.op_zx_tamasha_ratebg{background:#000;filter:alpha(opac{%*i*%}ity=70);opacity:.7;-moz-opacity:.7}.op_zx_tamasha_rate{color:#fff}.op_zx_tamasha_summary{padding-left:3em;text-indent:-3em}.op_zx_tamasha_play{float:left;margin-top:2px}.op_zx_tamasha_cont{height:20px;overflow:hidden}.op_zx_tamasha_rlt .op_zx_tamasha_su{margin-top:18px}</style><style>.op_zx_tamasha_a{height:{%fe_fn_c_get_grid_height rate=3/4%}px}.op_zx_tamasha_ratebg,.op_zx_tamasha_rate{width:{%fe_fn_c_get_img_height%}px}</style><div class="c-tabs"> {%if $tplData.result|@count>1%} <ul class="c-tabs-nav c-gap-bottom"> {%foreach  array_slice($tplData.result, 0, 5) as $item %} <li class="c-tabs-nav-li  {%if $item@first%}c-tabs-nav-selected{%/if%}">{%$item.playdate|escape:'html'%}</li> {%if !$item@last%}<li class="c-tabs-nav-sep"></li>{%/if%} {%/foreach%} </ul> {%/if%} {%foreach  array_slice($tplData.result, 0, 5) as $item %} {%if $item.videoPlay && !$item.videoPlay[0]%} {%$item.videoPlay=array($item.videoPlay)%} {%/if%} <div class="c-tabs-content" {%if $item@index!=0%}style="display:none;"{%/if%}> <div class="c-row"> <div class="c-span6"> <a href="{%$item.videoPlay[0]['@attr'].link%}" target="_blank" class="op_zx_tamasha_a"> {%if $item@first%} <img class="c-img6" src="{%$item.poster%}" /> <span class="op_zx_tamasha_ratebg">&nbsp;</span> {%else%} <span class="op_zx_tamasha_ratebg" data-img="{%$item.poster%}">&nbsp;</span> {%/if%} <span class="op_zx_tamasha_rate"> <i class="c-icon c-icon-play-black c-gap-left-small c-gap-right op_zx_tamasha_play"></i>{%$item.playdate|escape:'html'%} </span> </a> </div> <div class="c-span18 c-span-last {%if $item.videoPlay|@count<=1%}op_zx_tamasha_rlt{%/if%}"> {%if $item.content1 || $item.content2%} <p class="op_zx_tamasha_cont"> {%if $item.content1['@attr'].dtl%} <span class="c-gray">{%$item.content1['@attr'].name|escape:'html'%}：</span><span class=" c-gap-right">{%$item.content1['@attr'].dtl|limitlen:36|highlight:0%}</span> {%/if%} {%if $item.content2['@attr'].dtl%} <span class="c-gray">{%$item.content2['@attr'].name|escape:'html'%}：</span><span>{%$item.content2['@attr'].dtl|limitlen:20|highlight:0%}</span> {%/if%} </p> {%/if%} <div class="c-clearfix  c-gap-top-small c-gap-bottom-small "> <div class="op_zx_tamasha_left"> <a class="c-btn c-btn-primary c-btn-large" target="_blank" href="{%$item.videoPlay[0]['@attr'].link%}"><i class="c-icon c-icon-play-white" style="margin-top:8px;margin-right:1px;"></i>立即播放</a> </div> <div class=" op_zx_tamasha_left c-gap-left-small c-gap-top-small"><p><span class="c-gray">来源：</span><a target="_blank" href="{%$item.videoPlay[0]['@attr'].link%}" class="op_zx_tamasha_info" style="background:url({%$item.videoPlay[0]['@attr'].icon%}) no-repeat 0 0;">{%$item.videoPlay[0]['@attr'].name|limitlen:52|escape:'html'%}</a></p> </div> </div> {%if $item.videoPlay|@count>1%} <p class="op_zx_tamasha_site"><span class="c-gray">其他：</span> {%foreach array_slice($item.videoPlay,1,5)  as $itemSite%} <a target="_blank" href="{%$itemSite['@attr'].link%}"  class=" c-gap-right-small"> <i style="background:url({%$itemSite['@attr'].icon%}) no-repeat 0 0;"></i> {%$itemSite['@attr'].name|limitlen:52|escape:'html'%} </a> {%/foreach%} </p> {%/if%} <p class="op_zx_tamasha_su">{%fe_fn_c_showurl%}</p> </div></div> </div> {%/foreach%}</div><script data-merge>A.setup(function(){var _this = this;if(_this.find('.c-tabs-nav').length>0){var $nowCont=_this.find('.op_zx_tamasha_ratebg');A.use('tabs5', function(){A.ui.tabs5(_this.find('.c-tabs')[0],{onChange:function(){var tab=this,$nowDom=$nowCont.eq(tab.current);nowSrc=$nowDom.attr('data-img');if(nowSrc){var $oImg=$('<img class="c-img6" src="'+nowSrc+'" />');$oImg.insertBefore($nowDom);$nowDom.attr('data-img','');}}});});}});</script>{%/block%}{%block name='foot'%}{%/block%}