{%extends 'c_right_base.tpl'%} {%block name='content'%}<style data-merge>.opr-educourse-title{background:url('http://www.baidu.com/aladdin/img/right_relainfo/horizon.png') repeat-x 0 bottom}.opr-educourse-title span{background:#fff;padding-right:10px;font-size:1.077em;font-weight:bold;color:#333}.opr-educourse-content{margin-top:8px}.opr-educourse-item{padding:5px 0}.opr-educourse-item-title{position:relative;left:-21px;padding-left:21px;line-height:20px;height:20px;background:url('http://www.baidu.com/aladdin/img/right_pregnancyv/tlv.png') no-repea{%*i*%}t;white-space:nowrap;text-overflow:ellipsis;overflow:hidden}.opr-educourse-item-name{display:inline-block;height:21px;line-height:21px;background:#92b2f1;padding:0 13px 0 10px;color:#fff;cursor:pointer;margin-left:2px}.opr-educourse-desc{color:#666;margin-left:6px}.opr-educourse-itemlist{display:none;margin-top:3px}.opr-educourse-itemlink{display:block;line-height:24px;padding-left:15px}.opr-educourse-itemlink a{text-decoration:none}.opr-educourse-item-show .opr-educourse-itemlist{display:block}{%*i*%}.opr-educourse-item-show .opr-educourse-item-title{background-position:0 -40px}.opr-educourse-item-show .opr-educourse-item-name{background:#fa7d7d}.opr-educourse-item-show .opr-educourse-desc{color:#333}.opr-educourse-arrow{display:inline-block;position:relative;top:-1px;left:5px;font-size:0;height:0;width:0;overflow:hidden;line-height:0;border:4px dashed transparent;border-bottom:0 none;border-top:4px solid #fff;vertical-align:middle}.opr-educourse-item-show .opr-educourse-arrow{border-top:0 n{%*i*%}one;border-bottom:4px solid #fff;*border-bottom:5px solid #fff}</style>{%if $extData.feData.hasOffset%}<style>.opr-educourse-item-title{left:-28px}</style>{%/if%}<div class="opr-educourse"> <div class="opr-educourse-title"> <span>{%$tplData.title|escape:'html'%}</span> </div> <div class="opr-educourse-content"> {%if $tplData.version.name%} {%$tplData.version = array( $tplData.version )%} {%/if%} {%$listLength = $tplData.version|count%} {%if !$tplData.default || $tplData.default < 1 || $tplData.default > $listLength%} {%$tplData.default = 1%} {%/if%} {%foreach array_slice( $tplData.version, 0, 5 ) as $item%} {%$isDefault = ( $item@index + 1 == $tplData.default )%} <div class="opr-educourse-item{%if $isDefault%} opr-educourse-item-show{%/if%}"> <div class="opr-educourse-item-title"> <span class="opr-educourse-item-name OP_LOG_BTN" data-click="{fm:'beha'}">{%$item.name|escape:'html'%}<span class="opr-educourse-arrow"></span></span><span class="opr-educourse-desc">{%$item.desc|escape:'html'%}</span> </div> <div class="opr-educourse-itemlist"> {%* 只加载首屏 *%} {%if $isDefault%} {%foreach $item.chapter as $ls%} <span class="opr-educourse-itemlink"><a href="{%$ls.link%}" title="{%$ls.name|escape:'html'%}" target="_blank">{%$ls.name|limitlen:36|escape:'html'%}</a></span> {%/foreach%} {%/if%} </div> </div> {%/foreach%} </div> {%if $tplData.source%} {%$source = $tplData.source[0]%} <p class="opr-educourse-source">{%$source.text|escape:'html'%}{%if $source.linkurl && $source.linktext%}<a href="{%$source.linkurl%}" target="_blank">{%$source.linktext|escape:'html'%}</a>{%/if%}</p> {%/if%}</div><script >
  A.setup({
    'defaultIndex': '{%$tplData.default|escape:'javascript'%}',
    'query': '{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)|escape:"javascript"%}',
    'srcid': '{%$extData.resourceid%}'
  });
</script><script data-merge>A.setup(function() {var _this = this,load,oldIndex = _this.data.defaultIndex - 1,query = _this.data.query,srcid = _this.data.srcid,loaded = false,showClass = 'opr-educourse-item-show',wrapList = _this.find( '.opr-educourse-item' ),btnList = _this.find( '.opr-educourse-item-name' ),linkWrap = _this.find('.opr-educourse-itemlist' );var ajaxFinished = false;load = function( callback ) {if ( loaded ) {callback();return;}loaded = true;var url = 'http://opendata.baidu.com/a{%*i*%}pi.php?resource_id=#{srcid}&query=#{query}&ie=utf8&oe=gbk&format=json&limit=#{limit}&t=#{t}';url = $.format( url, {srcid: srcid,query: encodeURIComponent(query),limit: 'version.*.chapter.name:36',t: +new Date()});$.ajax({url:url+'&cb=reducourse',dataType:'jsonp',success:function(data){if(ajaxFinished) return;var version = data.data[0].version, tpl;if(!version.length){version = [version];};tpl = '<span class="opr-educourse-itemlink"><a href="#{link}" title="#{name}" target="_blank">#{name}</a></s{%*i*%}pan>';$.each( linkWrap, function( index, v ) {var i, l, links = version[ index ].chapter, html = [];for ( i = 0, l = links.length; i < l; i++ ) {html.push( $.format( tpl, {link: links[i].link,name: links[i].name}));}v.innerHTML = html.join('');});callback();},timeout:5000,jsonpCallback:'reducourse'});};$.each( btnList, function( i, v ) {$(v).on('click', function() {var e = window.event;e && (e.returnValue = false);load(function() {if ( oldIndex != i ) {if ( wrapList[ oldIndex ] ) {$(wrapList[ ol{%*i*%}dIndex ]).removeClass( showClass );}$(wrapList[ i ]).addClass( showClass );oldIndex = i;} else if ( oldIndex == i ) {$(wrapList[ oldIndex ]).removeClass( showClass );oldIndex = -1;}});});});this.dispose = function(){if(!ajaxFinished){ajaxFinished = true;}};});</script>{%/block%}