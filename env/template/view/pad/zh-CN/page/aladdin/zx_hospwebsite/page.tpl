{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasTitleGap=false%}{%$tplData.showgw=1%}{%/block%}{%block name='content'%}<style type="text/css" data-merge>.op-zx-hospwebsite-phonesep{color:#d8d8d8;margin:0 6px 0 3px}.op-zx-hospwebsite-viconcont{float:left;position:relative;margin:0 3px 0;*margin:3px 3px 0}.op-zx-hospwebsite-showurl{float:left}.op-zx-hospwebsite-rzcont{position:absolute;z-index:999;left:0;top:18px;display:none}.op-zx-hospwebsite-hint_arrow{position:absolute;top:0;*top:0;left:-2px;z-index:1}.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowout,.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowin{col{%*i*%}or:#ccc;position:absolute;top:1px;left:5px;font-size:12px;font-family:Simsun;font-weight:normal;display:block;z-index:1}.op-zx-hospwebsite-rzcont .op-zx-hospwebsite-arrowin{color:#fff;margin-top:1px}.op-zx-hospwebsite-hitcon{font-size:12px;line-height:22px;color:#575757;min-width:230px;_width:230px;position:absolute;border:1px solid #CCC;padding:3px 10px 5px;background:#fff;top:9px;left:0;box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;white-space{%*i*%}:nowrap}.op-zx-hospwebsite-rzcont .hinticon{height:22px;margin-right:6px}.op-zx-hospwebsite-rzcont img{vertical-align:middle}</style><div> {%if $tplData.type%}<p><span class="c-gray">类 型</span>：<span>{%$tplData.type%}</span></p>{%/if%} {%if $tplData.info%}<p><span class="c-gray">简 介</span>：<span>{%$tplData.info|limitlen:142|highlight:0%}</span>{%if $tplData.morelink%} <a target="_blank" href="{%$tplData.morelink%}">查看百科<span>&gt;&gt;</span></a>{%/if%}</p>{%/if%} {%if $tplData.phone%} <p> <span class="c-gray">电 话</span>： {%foreach $tplData.phone as $item%} {%if $item@index > 2%}{%break%}{%/if%} <span class="">{%if $item@index > 0%}<span class="op-zx-hospwebsite-phonesep">|</span>{%/if%}<span>{%$item.num%}{%if $item.type%}({%$item.type%}){%/if%}</span></span> {%/foreach%} </p> {%/if%} {%if $tplData.showurl%}<p><span class="op-zx-hospwebsite-showurl">{%fe_fn_c_showurl%}</span></p>{%/if%} <div class="op-zx-hospwebsite-viconcont"> {%*<span class="c-icon c-icon-v op-zx-hospwebsite-vicon"></span>*%} <div class="op-zx-hospwebsite-rzcont"> <div class="op-zx-hospwebsite-hint_arrow"> <span class="op-zx-hospwebsite-arrowout">◆</span> <em class="op-zx-hospwebsite-arrowin">◆</em> </div> <div class="op-zx-hospwebsite-hitcon"> <strong>百度提示您，该网站：</strong> <p><img src="http://s1.bdstatic.com/r/www/cache/certification/img/hospital-logo.png" class="hinticon">国家卫生主管部门评定的{%$tplData.type%}医院</p> </div> </div> </div> <div style="clear:both; height:0; font-size:0; overflow:hidden;"></div></div><script data-merge>A.setup(function(){var _this = this;var $floating=_this.find('.op-zx-hospwebsite-rzcont');var $vicon=_this.find('.op-zx-hospwebsite-vicon');var timer=null;$vicon.hover(function(){clearTimeout(timer);$floating.css('display','block');},function(){timer=setTimeout(function(){$floating.css('display','none');},50);});$floating.hover(function(){clearTimeout(timer);},function(){ti{%*i*%}mer=setTimeout(function(){$floating.css('display','none');},50);});this.dispose = function(){clearTimeout(timer);};});</script> {%/block%}{%block name="foot"%}{%/block%}