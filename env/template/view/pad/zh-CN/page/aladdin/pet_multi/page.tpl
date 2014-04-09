{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasBorder=true%}{%$pageNumber = 12%}{%function op_pet_multi_buildurl wd=''%}/s?wd={%$wd|escape:'html'%}&rsv_dl=0_left_pet_multi_{%$extData.resourceid%}{%/function%}{%/block%}{%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='content'%}<style data-merge>.op-pet-multi-title{font-weight:bold}.op-pet-multi-title-desc{font-weight:normal;font-size:.87em;font-size:13px\9}.op-pet-multi-option{cursor:pointer;color:#00c;display:inline-block;margin-right:7px}.op-pet-multi-option input{position:relative;vertical-align:bottom;vertical-align:middle\9;_vertical-align:text-bottom;top:-2px\9;*top:0}.op-pet-multi-typename{color:#999}.op-pet-multi-menu{border-bottom:1px solid #ebebeb}.op-pet-multi-menu p{margin:6px 0}.op-pet-multi-recommand{bor{%*i*%}der-top:1px solid #ebebeb;padding-top:5px}.op-pet-multi-name{display:block;padding:15px 0;position:relative}.op-pet-multi-name span{display:block;position:absolute;width:120%;left:-10%;top:5px;text-align:center}.op-pet-multi-name a{text-decoration:none}.op-pet-multi-name a:hover{text-decoration:underline}.op-pet-mulit-recommand-tip{display:none;position:absolute;width:130px;background:#fff;border:1px solid #e3e3e3;padding:5px 10px}.op-pet-mulit-recommand-tip span{display:block}.op-pet-multi-tip-{%*i*%}title{margin:0;font-size:1em}.op-pet-multi-tip-arrow{position:absolute;top:-6px;width:12px;height:12px;overflow:hidden}.op-pet-multi-tip-arrow span,.op-pet-multi-tip-arrow i{display:block;position:absolute;left:0;top:-4px;width:0;height:0;line-height:0;border:5px dashed transparent;border-bottom:5px solid #fff}.op-pet-multi-tip-arrow i{border-width:6px;border-bottom-color:#e3e3e3;left:-1px;top:-6px;z-index:-1}.op-pet-multi-noresult{display:none;padding:210px 0;text-align:center}.op-pet-multi-res{%*i*%}ult-hide .op-pet-multi-noresult{display:block}.op-pet-multi-result-hide .op-pet-multi-result{display:none}.op-pet-multi-title{font-size:1.17em;margin:0;padding:0}.op-pet-multi-for-log{display:none}.op-pet-mulit-recommand-tip h4{font-weight:bold}</style><style>.op-pet-mulit-list img{height:{%fe_fn_c_get_img_height border="1"%}px}</style>{%$type_data = $tplData.result[0]%}{%if !$type_data.noresult%}{%$type_data.noresult = '抱歉，没有找到符合条件的宠物，请尝试其它分类。'%}{%/if%}{%$tags=array_values($tplData.queryparser[0])%}<h4 class="op-pet-multi-title">{%$type_data.title|escape:'html'%}{%if $type_data.title_desc%}<span class="op-pet-multi-title-desc c-gray">{%build_search_url_limit_ubburl content=$type_data.title_desc%}</span>{%/if%}</h4>{%if $type_data.type%}<div class="op-pet-multi-menu">{%if !$type_data.type[0]%} {%$type_data.type = [ $type_data.type ]%}{%/if%}{%foreach $type_data.type as $item%} <p data-type="{%$item[ '@attr' ].type_code|escape:'html'%}"> <span class="c-gray">{%$item[ '@attr' ].text|escape:'html'%}</span>{%foreach $type_data.option as $ls%}{%if $ls[ '@attr' ].type_id === $item[ '@attr' ].type_id%}{%$selected = false%}{%if $tags[0] && in_array( $ls[ '@attr' ].name, $tags )%}{%$selected = true%}{%/if%}<label class="op-pet-multi-option" data-tip='{"name":"{%$ls[ '@attr' ].name|escape:'html'%}","desc1":"{%$ls[ '@attr' ].desc1|escape:'html'%}","desc2":"{%$ls[ '@attr' ].desc2|escape:'html'%}"}'><input {%if $selected%}checked{%/if%} value="{%$ls[ '@attr' ].name|escape:'html'%}" type="checkbox" />{%$ls[ '@attr' ].name|escape:'html'%}</label>{%/if%}{%/foreach%} </p>{%/foreach%}</div>{%/if%}<div class="op-pet-multi-result-box {%if count($tplData.result) == 0%}op-pet-multi-result-hide{%/if%}"> <div class="op-pet-multi-result c-row"> <ul class="op-pet-mulit-list"> {%foreach array_slice( $tplData.result, 0, $pageNumber ) as $item%} <li class="c-span6 c-gap-top-small{%if ($item@index + 1) % 4 == 0%} c-span-last{%/if%}"> <a title="{%$item.name|escape:'html'%}" href="{%op_pet_multi_buildurl wd=$item.word%}" target="_blank"><img class="c-img c-img6" src="{%$item.img%}" /><span class="op-pet-multi-for-log">{%$item.name|escape:'html'%}</span></a> <span class="op-pet-multi-name"><span><a href="{%op_pet_multi_buildurl wd=$item.word%}" title="{%$item.name|escape:'html'%}" target="_blank">{%$item.name|limitlen:20|escape:'html'%}</a></span></span> </li> {%/foreach%} </ul> </div> <div class="op-pet-multi-noresult"> <p><i class="c-icon c-icon-warning"></i>{%$type_data.noresult|escape:'html'%}</p> </div></div><div class="op-pet-multi-page c-gap-top c-gap-bottom"{%if $tplData.listNum > $pageNumber%}style="display:block;"{%/if%}></div>{%if $type_data.recommand && $type_data.re_link%}{%if !$type_data.re_link[0]%}{%$type_data.re_link = [ $type_data.re_link ]%}{%/if%}<div class="op-pet-multi-recommand c-gap-top-small"> <span class="c-gray">{%$type_data.recommand|escape:'html'%}</span> {%foreach $type_data.re_link as $item%} <a href="{%$item[ '@attr' ].url%}" class="c-gap-right-small" target="_blank">{%$item[ '@attr' ].name|escape:'html'%}</a> {%/foreach%}</div>{%/if%}<div class="op-pet-mulit-recommand-tip c-gray"></div><script >
    A.setup( {
        'dataNum': '{%$tplData.listNum|escape:'javascript'%}',
        'pageNumber': '{%$pageNumber|escape:'javascript'%}',
        'srcid': '{%$extData.resourceid%}',
        'query': '{%preg_replace('/\\$.+/','',$type_data.pet_typeclass)%}'
    });
</script><script data-merge>A.setup(function(){var _this = this,$resultCon = _this.find( '.op-pet-multi-result' ),$resultBox = _this.find( '.op-pet-multi-result-box' ),$menu = _this.find( '.op-pet-multi-menu' ),$types = $menu.find( 'p' ),$checkboxes = $menu.find( 'input' ),$tip = _this.find( '.op-pet-mulit-recommand-tip' ),$opt = _this.find( '.op-pet-multi-option'),$pageBox = _this.find( '.op-pet-multi-page' ),$listBox = _this.find( '.op-pet-mulit-list' ),$doc = $( document ),hideClass = 'op-pet{%*i*%}-multi-result-hide',srcid = _this.data.srcid,query = _this.data.query,IE6 = window.navigator.userAgent.search( /MSIE 6/i ) > -1,pageChange = false,dataNum = _this.data.dataNum,pageNumber = _this.data.pageNumber,dataUrl = 'http://opendata.baidu.com/api.php?format=json&ie=utf-8&oe=utf-8&query=' + encodeURIComponent( query ) + '&resource_id=' + srcid + '&rn=' + pageNumber + '&from_mid=1&pn=#{pageNum}&#{type}&t=#{t}',tipTimer,getTags,getData,renderPage,pager,buildUrl,renderList;getTags = function() {%*i*%}{var ret = [];$types.each(function( i, v ) {var checked = $( 'input:checked', v ),vals;vals = checked.map(function(){return this.value;});ret.push( v.getAttribute( 'data-type') + '=' + encodeURIComponent( vals.toArray().join(',' ) ));});return ret.join('&');};buildUrl = function( word ) {return '/s?wd=' + word + '&rsv_dl=0_left_pet_multi_' + srcid;};renderPage = function() {var top = $resultCon.offset().top;if ( dataNum <= pageNumber ) {pager && pager.dispose && pager.dispose();$pageBox.hide();r{%*i*%}eturn;};$pageBox.show();A.use('page', function(){pager = A.ui.page( $pageBox.get( 0 ), 1, Math.ceil( dataNum / pageNumber ), {onChange: function( curPage, endPage ){if ( $doc.scrollTop() > top ) {$doc.scrollTop( top );}getData( curPage, true );}});});};renderList = function( list ) {$listBox.html( $.map( list, function( v, i ) {return $.format( '<li class="c-span6 c-gap-top-small #{last}">\<a href="#{url}" title="#{title}" target="_blank"><img class="c-img c-img6" src="#{img}" /><span class="op-{%*i*%}pet-multi-for-log">#{title}</span></a>\<span class="op-pet-multi-name"><span><a href="#{url}" title="#{title}" target="_blank">#{name}</a></span></span>\</li>', {last: ( i + 1 ) % 4 == 0 ? 'c-span-last' : '',url: buildUrl( v.word ),img: v.img,name: $.subByte( v.name, 20 ),title: v.name});}).join('') );};getData = function( curPage, isPager ) {var url = $.format( dataUrl, {pageNum: curPage != undefined ? ( curPage - 1 ) * pageNumber : 0,type: getTags(),t: +new Date});$.ajax({url: url,dataType:"js{%*i*%}onp",jsonp:"cb",success: function( data ) {if ( pageChange ) {return;}if ( data.status == '0' && data.data[0].disp_data) {dataNum = data.data[0].listNum;if ( !isFinite( +dataNum ) || dataNum <= 0 ) {$resultBox.addClass( hideClass );} else if ( $resultCon.has( hideClass ) ) {$resultBox.removeClass( hideClass );}if ( !isPager ) {renderPage();}renderList( data.data[0].disp_data );}}});};$checkboxes.on( 'change', function() {getData( 1 );});renderPage();this.dispose = function() {pageChange = true;c{%*i*%}learTimeout( tipTimer );pager && pager.dispose && pager.dispose();};});</script>{%/block%}