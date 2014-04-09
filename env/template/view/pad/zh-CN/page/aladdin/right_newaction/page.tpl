{%extends 'c_right_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='table'%}{%fe_fn_c_css css='img'%}.opr-newaction-subtitle{padding:4px 0;background:#fafafa;border-bottom:1px solid #f3f3f3}.opr-newaction-change{float:right}.opr-newaction-center{text-align:center}.opr-newaction-video{position:relative}.opr-newaction-video .c-icon{position:absolute;left:5px;bottom:5px}.opr-newaction-share-pre{float:left;line-height:2}.opr-newaction-lastspan{display:none}.container_l .opr-newaction-lastspan{display:block}</style><style>.opr-newaction-img{height:{%fe_fn_c_get_img_height col=4%}px}</style><div class="cr-title c-gap-bottom">{%$tplData.title%}</div><div class="c-row"> {%foreach array_slice($tplData.li, 0, 4) as $escaped_li%} <a target="_blank" href="{%$escaped_li.link%}" class="c-span4 {%if $escaped_li@index == 2%}c-span-last-s{%elseif $escaped_li@index == 3%}c-span-last opr-newaction-lastspan{%/if%}" data-click="{'rsv_re_ename':'{%$escaped_li.text%}'}"> <img {%$escaped_li.img|img_base64_render%} class="c-img c-img4 opr-newaction-img"/> <div class="c-gap-top-small opr-newaction-center">{%$escaped_li.text%}</div> </a> {%/foreach%}</div><div class="opr-newaction-card"> <div class="opr-newaction-subtitle c-gap-top"><a href="javascript:;" class="opr-newaction-change" data-click="{'fm':'beha'}">其他推荐</a><span class="opr-newaction-subtitle-cont c-gray"></span></div> <div class="opr-newaction-card-content"></div></div><div class="opr-newaction-share-p c-clearfix"><div class="c-gap-right c-gray opr-newaction-share-pre">{%$tplData.share.title%}</div><div class="opr-newaction-share" data-title="{%$tplData.share.content%}" data-desc="{%$tplData.share.reason%}"></div></div><script >
    //为阿拉丁单条结果实例创建数据
	//此标签用来准备注释，不需要添加 data-merge
    A.setup({card: {%json_encode($tplData.card)%}, platform:'{%$extData.feData.platform%}'});
</script><script data-merge>A.setup(function(){var _this = this,cards = _this.data.card,length = cards.length,html = [],$subtitle = _this.find(".opr-newaction-subtitle-cont"),$change = _this.find(".opr-newaction-change"),$card = _this.find(".opr-newaction-card-content").eq(0),$share = _this.find(".opr-newaction-share"),shareUI,shareHideMore = false,shareIconSize = 16,rand = function(da){return Math.ceil(Math.random()*da);};var index = rand(length);showCard(cards[index-1]);function showCard(data){%*i*%}{var showNum, fragment,item = data.item,arr = {}; $subtitle.text(data.title);html = []; if(data.displayType === "text"){showNum = 2;fragment = '<tr><td><strong>#{subtitle}</strong><div>#{abs}</div></td></tr>';html.push('<table class="c-table">');setHtml(data, arr, showNum, fragment);html.push('</table>');}else if(data.displayType === "pic"){for(var i=0; i<2; i++){showNum = 4;fragment = '<a target="_blank" href="#{link}" class="c-span4 #{lastClass} opr-newaction-center" data-click="{\'rsv_re_enam{%*i*%}e\':\'#{text}\'}"><img src="#{img}" class="c-img c-img4 opr-newaction-img"/><div class="c-gap-top-small">#{text}</div></a>'; html.push('<div class="c-row c-gap-top">');setHtml(data, arr, showNum, fragment);html.push('</div>');}}else if(data.displayType === "video"){showNum = 3;fragment = '<tr class=""><td><a target="_blank" href="#{link}" class="c-span4 opr-newaction-video c-gap-top"><img src="#{img}" class="c-img c-img4 opr-newaction-img"/><div><i class="c-icon c-icon-play-black"></i></div></a>{%*i*%}</td><td><div class="c-gap-top"><a target="_blank" href="#{link}">#{text}</a><div class="c-gray">来源：#{from}</div><div class="c-gray">时长：#{time}</div></div></td></tr>';html.push('<table class="opr-newaction-video-table">');setHtml(data, arr, showNum, fragment);html.push('</table>');}html.push($.format('<div class="c-gap-top"><a target="_blank" href="#{link}">#{text}</a></div>', {link:data.more.link, text:data.more.text}));$card.html(html.join(''));} function setHtml(data, arr, num, frag){var cur,{%*i*%}len = data.item.length;var args = frag.match(/#{\w+}/g),newArgs = [],arg,val = {},i = 0;if(args && args.length){while(arg=args.pop()){newArgs.push(arg.replace(/#|\{|\}/g, ''));}}while(i < num){if(!arr[cur = (rand(len)-1)]){arr[cur] = 1;var item = data.item[cur];for(var j=0; j<newArgs.length; j++){if(newArgs[j] === 'cur'){val[newArgs[j]] = cur;}else if(newArgs[j] !== 'lastClass'){val[newArgs[j]] = item[newArgs[j]];}}if(data.displayType === 'pic'){if(i===(num-1)){val.lastClass = "c-span-last opr-n{%*i*%}ewaction-lastspan";}else if(i===(num-2)){val.lastClass = "c-span-last-s";}}html.push($.format(frag, val));i++;}}}A.use("share", function(){if(_this.data.platform == "ipad"){shareHideMore = true;}shareUI = A.ui.share($share.get(0), {text:$share.attr("data-title"), desc: $share.attr("data-desc"), hideMore:shareHideMore, iconSize:shareIconSize}); });$change.bind("click", function(){showCard(cards[rand(length)-1]);});_this.dispose = function(){shareUI&&shareUI.dispose&&shareUI.dispose();};});</scrip{%*i*%}t>{%/block%}