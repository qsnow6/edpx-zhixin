{%extends 'c_base.tpl'%} {%block name='data_modifier'%} {%$escaped_tpl="{%basename($smarty.current_dir)%}"%}{%/block%}{%block name="title"%}<style type="text/css">.op-qunar_hotel05-header-title{color:#00c}.op-qunar_hotel05-header-title .op-qunar_hotel05-icon-qunar{display:inline-block;vertical-align:text-bottom;font-style:normal;overflow:hidden;width:16px;height:16px;background:url(http://bcscdn.baidu.com/fcnp-ip/1013/pic/283772069bc05b531cbb6d45cf2b91a1.png) no-repeat left top}.op-qunar_hotel05-footersafe{color:#4bad37;font-weight:bold}.op-qunar_hotel05-input{float:left;display:inline}.op-qunar_hotel05-form{font-size:13px;padding-b{%*i*%}ottom:10px;border-bottom:1px solid #eaeaea}.op-qunar_hotel05-form .op-qunar_hotel05-cityrow{width:156px}.op-qunar_hotel05-form .op-qunar_hotel05-queryrow{width:352px}.op-qunar_hotel05-form .op-qunar_hotel05-queryrow input{width:204px}.op-qunar_hotel05-hotcity{font-size:12px;position:absolute;left:-9999px;top:-9999px;border:1px solid #d0d0d0;color:#666;background:#fff;width:270px;z-index:2;*zoom:1;padding-bottom:5px}.op-qunar_hotel05-hotcity h4{border-bottom:1px solid #d0d0d0;color:#000;backgroun{%*i*%}d:#fff;line-height:28px;height:28px;font-size:12px;margin:0 10px;font-weight:400}.op-qunar_hotel05-hotcity .op-qunar_hotel05-hotcitytitle{color:#666}.op-qunar_hotel05-hotcity .op-qunar_hotel05-hotcitycount{color:#000}.op-qunar_hotel05-hotcity ul{*zoom:1;padding:5px 0 5px 0}.op-qunar_hotel05-hotcity ul:before,.op-qunar_hotel05-hotcity ul:after{content:"";display:table}.op-qunar_hotel05-hotcity ul:after{clear:both}.op-qunar_hotel05-hotcity li{float:left;width:20%;height:22px;line-height:22px}.op-q{%*i*%}unar_hotel05-hotcity a{display:block;text-align:left;padding-left:10px;text-decoration:none}.op-qunar_hotel05-hotcity a:visited{color:#00c}.op-qunar_hotel05-hotcity a:link{color:#00c}.op-qunar_hotel05-hotcity a:hover{color:#00c;background-color:#f5f5f5;text-decoration:underline}.op-qunar_hotel05-hotcity a:active{color:#00c}.op-qunar_hotel05-hotkey{background:none repeat scroll 0 0 #fff;border:1px solid #d0d0d0;color:#666;left:-9999px;position:absolute;top:-9999px;z-index:2}.op-qunar_hotel05-hotk{%*i*%}ey .showblock{background:none repeat scroll 0 0 #fff;font-size:12px;line-height:22px;margin:0;padding:5px 10px;width:275px}.op-qunar_hotel05-hotkey .showblock b.oymTitle{display:block;font-size:12px;font-weight:400;color:#333}.op-qunar_hotel05-hotkey .showblock p{border-bottom:1px solid #e3e3e3;margin-bottom:5px;padding-bottom:5px;word-spacing:12px}.op-qunar_hotel05-hotkey .showblock p.last{border-bottom:0 none;margin-bottom:0;padding-bottom:0}.op-qunar_hotel05-hotkey .showblock a{color:#00c;cur{%*i*%}sor:pointer;white-space:nowrap}.op-qunar_hotel05-hotkey .showblock a:hover{color:#00c;text-decoration:underline}.op-qunar_hotel05-hotkey b{background:0;cursor:default;float:none;height:100%;width:100%}.op-qunar_hotel05-placeholder{width:200px;height:24px;line-height:24px;color:#ccc;position:absolute;padding-left:5px;top:-9999px;left:-9999px}.op-qunar_hotel05-find{font-size:13px;height:26px;line-height:26px}.op-qunar_hotel05-find a:hover{text-decoration:none}.op-qunar_hotel05-find .op-qunar_hotel{%*i*%}05-nolimit{float:left;padding:0;margin:0}.op-qunar_hotel05-find-price{padding-top:5px}.op-qunar_hotel05-find ul{float:right;height:26px;width:410px;overflow:hidden}.op-qunar_hotel05-find span{float:left;margin-right:0;color:#666}.op-qunar_hotel05-find li{float:left;white-space:nowrap;margin-right:6px;*margin-right:4px}.op-qunar_hotel05-find li a,.op-qunar_hotel05-find .op-qunar_hotel05-nolimit a{display:inline-block;color:#00c;text-decoration:none;padding:0 4px;height:18px;line-height:18px;margi{%*i*%}n:4px 0}.op-qunar_hotel05-find .op-qunar_hotel05-active a{color:#fff;text-decoration:none;background-color:#388bff}.op-qunar_hotel05-find .op-qunar_hotel05-active a:hover{text-decoration:none;background-color:#388bff}.op-qunar_hotel05-find .op-qunar_hotel05-disabled a{text-decoration:none;color:#666;cursor:default}.op-qunar_hotel05-find .op-qunar_hotel05-disabled a:hover{text-decoration:none;color:#666;cursor:default}.op-qunar_hotel05-find .op-qunar_hotel05-filtermore{float:right;position:relati{%*i*%}ve}.op-qunar_hotel05-filtermorectn{border:1px solid #eaeaea;font-size:12px}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreleft{float:left}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright{float:right;width:442px;padding:3px 10px}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermore-moretype{background-color:#fafafa;width:53px;height:30px;line-height:30px;color:#666;border-top:1px solid #eaeaea;border-right:1px solid #eaeaea;text-align:center}.op-qunar_hotel05-{%*i*%}filtermorectn .op-qunar_hotel05-filtermoreleft .op-qunar_hotel05-active{background-color:#fff;border-right:0}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermore-moretype a{color:#666;text-decoration:none}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreleft .op-qunar_hotel05-filtermore-noborder{border-top:0}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright li{float:left;margin-right:10px;line-height:24px;height:24px;white-space:nowrap}.op-qunar_hotel05-filterm{%*i*%}orectn .op-qunar_hotel05-filtermoreright a{color:#4242d3;text-decoration:none;display:inline-block;padding:0 4px;height:16px;line-height:16px;margin:4px 0}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright a:hover{text-decoration:underline}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright .op-qunar_hotel05-active a{color:#fff;text-decoration:none;background-color:#388bff}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright .op-qunar_hotel05-active a:ho{%*i*%}ver{text-decoration:none}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright .op-qunar_hotel05-disabled a{text-decoration:none;color:#666;cursor:default}.op-qunar_hotel05-filtermorectn .op-qunar_hotel05-filtermoreright .op-qunar_hotel05-disabled a:hover{text-decoration:none;color:#666;cursor:default}.op-qunar_hotel05-hide{display:none}.op-qunar_hotel05-clearfix:after{clear:both;display:block;height:0;visibility:hidden;content:"."}.op-qunar_hotel05-clearfix{zoom:1}.op-qunar_hotel05-{%*i*%}title{float:left;height:26px;line-height:26px}.op-qunar_hotel05-querybtn{float:right}.op-qunar_hotel05-hide{display:none}.op-qunar_hotel05-b_hotelSort{background:#fafafa;color:#000;height:28px;border-bottom:1px solid #d9d9d9}.op-qunar_hotel05-b_hotelSort .op-qunar_hotel05-b_hotelSort_lf{float:left}.op-qunar_hotel05-b_hotelSort_lf .op-qunar_hotel05-allhotels{float:left;color:#666;padding:3px 0 0 10px;height:22px;line-height:22px}.op-qunar_hotel05-e_hotelSort_sortSel{float:left;display:block;paddi{%*i*%}ng-top:3px;display:inline}.op-qunar_hotel05-e_hotelSort_sortSel li{float:left;position:relative;z-index:1;background:0;height:22px;line-height:22px;padding:0 10px 0 0;*padding:0 3px 0 0}.op-qunar_hotel05-e_hotelSort_sortSel li a{color:#000;cursor:pointer;display:inline-block;height:22px;line-height:22px;outline:0;text-decoration:none}.op-qunar_hotel05-e_hotelSort_sortSel li span{display:inline-block;height:22px;line-height:22px}.op-qunar_hotel05-e_hotelSort_sortSel .op-qunar_hotel05-defaultsort{{%*i*%}padding:0 18px 0 20px;*padding:0 8px 0 10px}.op-qunar_hotel05-e_hotelSort_sortSel .op-qunar_hotel05-active{background:0;font-weight:bold}.op-qunar_hotel05-e_hotelSort_sortSel li .op-qunar_hotel05-sort_title span{background:0;padding-right:0}.op-qunar_hotel05-e_hotelSort_sortSel li span em{font-family:Arial,Helvetica,sans-serif}.op-qunar_hotel05-hotels{padding:10px 0 0 0;height:55px;font-size:13px}.op-qunar_hotel05-hotels0{padding:7px 0 0 0;_padding:10px 0 0 0}.op-qunar_hotel05-star1{width:11px}.{%*i*%}op-qunar_hotel05-star2{width:23px}.op-qunar_hotel05-star3{width:35px}.op-qunar_hotel05-star4{width:47px}.op-qunar_hotel05-star5{width:59px}.op-qunar_hotel05-hotelimage img{height:55px;color:#00c;vertical-align:middle}.op-qunar_hotel05-hotels img{margin-top:3px;_margin-top:0}.op-qunar_hotel05-hotelintro .op-qunar_hotel05-hoteltitle a{color:#00c;text-decoration:none}.op-qunar_hotel05-hotelintro .op-qunar_hotel05-hoteltitle a:hover{color:#00c;text-decoration:underline}.op-qunar_hotel05-hotelintro .{%*i*%}op-qunar_hotel05-hoteldangci{color:#000}.op-qunar_hotel05-hotelintro p{color:#000;height:18px;line-height:18px;overflow:hidden}.op-qunar_hotel05-hotelintro b{color:#6b6b6b}.op-qunar_hotel05-hotelreview{color:#00c}.op-qunar_hotel05-hotelreview p{height:18px;line-height:18px}.op-qunar_hotel05-hotelreview a{color:#00c;text-decoration:none}.op-qunar_hotel05-hotelreview a:hover{color:#00c;text-decoration:underline}.op-qunar_hotel05-hotelreview .op-qunar_hotel05-hotelnoscore{color:#666}.op-qunar_hotel{%*i*%}05-hotelprice{color:#ff8315}.op-qunar_hotel05-hotels .op-qunar_hotel05-detail{padding-top:3px}.op-qunar_hotel05-hotels .op-qunar_hotel05-detailbtn{padding:0 12px}.op-qunar_hotel05-hotellook p{height:18px;line-height:18px;text-align:right}.op-qunar_hotel05-more{border-top:1px solid #eaeaea;line-height:16px;height:16px;font-size:13px;padding:9px 0 0;text-align:center;margin-top:13px}.op-qunar_hotel05-more a{color:#00c;text-decoration:none}.op-qunar_hotel05-more a:hover{color:#00c;text-decoration:u{%*i*%}nderline}.op-qunar_hotel05-nohotels{padding-top:10px}.op-qunar_hotel05-nohotels span{height:23px;line-height:23px;font-size:13px;width:308px}.op-qunar_hotel05-nohotels p{padding-left:10px}.op-qunar_hotel05-nohotelsfilter{color:#666}.op-qunar_hotel05-nohotelstips{color:#c2c2c2}.op-qunar_hotel05-random{position:absolute;top:-9999px;left:-9999px}</style><h3 class="t c-gap-bottom-small"> <a class="op-{%$escaped_tpl%}-header-title" target="_blank" href="{%$tplData.url%}"><span class="c-gap-icon-right-small op-{%$escaped_tpl%}-icon-qunar"></span>{%$tplData.title|limitlen:56|highlight:0%}</a> </h3>{%/block%}{%block name='foot'%}<div class="c-gap-top-small">{%fe_fn_c_showurl%}</div> {%/block%}{%block name='content'%}{%$qunarurltemp="?"|explode:$tplData.url%}{%$escaped_qunarurl=$qunarurltemp[0]%}{%$escaped_qhfptemp="&"|explode:$tplData.url%}{%$escaped_qhfp="{%$escaped_qhfptemp[1]%}&queryid={%$tplData.queryid%}"%}{%if $tplData.hotellinks%} {%if $tplData.hotellinks|@count < 1%} {%$status=0%} {%else%} {%$status=1%} {%/if%}{%else%}{%$status=0%}{%/if%}<div class="c-border"> {%$escaped_random="{%$smarty.now%}{%math equation=rand(100, 999)%}"%} <img class="op-{%$escaped_tpl%}-random" src="http://hotel.qunar.com/zhixin_trans.gif?type=5&_t={%$escaped_random%}&key={%urlencode($tplData.key)%}&srcid={%$tplData.StdStg%}&queryid={%$tplData.queryid%}&source=pc"/><div class="op-{%$escaped_tpl%}-container op-{%$escaped_tpl%}-form"> <div class="c-row"> <div class="c-span8 op-{%$escaped_tpl%}-cityrow"> <span class="op-{%$escaped_tpl%}-title c-gap-right">目的地</span> <div class="op-{%$escaped_tpl%}-input "> <input class="c-input c-input-mini op-{%$escaped_tpl%}-city-input" autocomplete="off" type="text" maxlength="50" value="{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%elseif $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}" /> <div class="op-{%$escaped_tpl%}-hotcity" data-click="{fm:'beha'}"> <h4>国内城市top<em class="c-gap-left-small c-gap-right op-{%$escaped_tpl%}-hotcitycount">{%$tplData.hotcity|@count%}</em><span class="c-gap-left op-{%$escaped_tpl%}-hotcitytitle">更多城市可直接输入搜索</span></h4> <ul> {%foreach $tplData.hotcity as $item%} <li><a data-city="{%$item['name']|escape:'html'%}" href="return false;">{%$item['name']|escape:'html'%}</a></li> {%/foreach%} </ul> </div> </div> </div> <div class="c-span16 c-span-last op-{%$escaped_tpl%}-queryrow"> <span class="op-{%$escaped_tpl%}-title c-gap-right">关键词</span> <div class="op-{%$escaped_tpl%}-input "> <input autocomplete="off" class="op-{%$escaped_tpl%}-keyword-input c-input c-input10" type="text" maxlength="50" value="{%$tplData.queryForRequest|escape%}"/> <div class="op-{%$escaped_tpl%}-placeholder" data-click="{fm:'beha'}">酒店名、地标、商圈，可组合搜索</div> <div class="op-{%$escaped_tpl%}-hotkey" data-click="{fm:'beha'}"></div> </div> <a class="op-{%$escaped_tpl%}-querybtn op-{%$escaped_tpl%}-jsquerybtn c-btn c-btn-primary c-btn-small OP_LOG_BTN" href="http://hotel.qunar.com/search.jsp" target="_blank">快速查询</a> </div> </div></div><div class="op-{%$escaped_tpl%}-container"> {%if $tplData.pricelinks and $tplData.pricelinks|@count>0%} {%$escaped_hide=""%} {%else%} {%$escaped_hide="op-{%$escaped_tpl%}-hide"%} {%/if%} <div data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jspricepanel {%$escaped_hide%}"> <div class="op-{%$escaped_tpl%}-find op-{%$escaped_tpl%}-find-price op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsfilterPanel"> <span>价格范围：</span> <div class="op-{%$escaped_tpl%}-nolimit op-{%$escaped_tpl%}-active op-{%$escaped_tpl%}-jsnolimit"><a href="#" onclick="return false;">不限</a></div> <ul class="op-{%$escaped_tpl%}-jsfilter"> {%foreach $tplData.pricelinks as $link%} {%$escaped_name=str_replace("%26","&","{%$link.name|escape%}")%} <li><a href="#" onclick="return false;" data-count="9999" data-filter="{%$link.value|escape%}" data-name="{%$escaped_name|escape%}">{%$escaped_name%}</a></li> {%/foreach%} </ul> </div> </div> {%if $tplData.dangcilinks and $tplData.dangcilinks|@count>0%} {%$escaped_hide=""%} {%else%} {%$escaped_hide="op-{%$escaped_tpl%}-hide"%} {%/if%} <div data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsdangcipanel {%$escaped_hide%}"> <div class="op-{%$escaped_tpl%}-find op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsfilterPanel"> <span>酒店级别：</span> <div class="op-{%$escaped_tpl%}-nolimit op-{%$escaped_tpl%}-active op-{%$escaped_tpl%}-jsnolimit"><a href="#" onclick="return false;">不限</a></div> <ul class="op-{%$escaped_tpl%}-jsfilter"> {%foreach $tplData.dangcilinks as $link2%} <li class="{%if $link2.count == 0%}op-{%$escaped_tpl%}-disabled{%/if%}"><a href="#" onclick="return false;" data-count="{%$link2.count|escape%}" data-filter="{%$link2.value|escape%}" data-name="{%$link2.name|escape%}">{%$link2.name|escape%}</a></li> {%/foreach%} </ul> </div> </div> {%if $tplData.hoteltypelinks and $tplData.hoteltypelinks|@count>0%} {%$escaped_hide=""%} {%else%} {%$escaped_hide="op-{%$escaped_tpl%}-hide"%} {%/if%} <div data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jshoteltype {%$escaped_hide%}"> <div class="op-{%$escaped_tpl%}-find op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsfilterPanel"> <span>酒店类型：</span> <div class="op-{%$escaped_tpl%}-nolimit op-{%$escaped_tpl%}-active op-{%$escaped_tpl%}-jsnolimit"><a href="#" onclick="return false;">不限</a></div> <ul class="op-{%$escaped_tpl%}-jsfilter"> {%foreach $tplData.hoteltypelinks as $link1%} <li class="{%if $link1.count == 0%}op-{%$escaped_tpl%}-disabled{%/if%}"><a href="#" onclick="return false;" data-count="{%$link1.count|escape%}" data-filter="{%$link1.value|escape%}" data-name="{%$link1.name|escape%}">{%$link1.name|escape%}</a></li> {%/foreach%} </ul> </div> </div> {%if $tplData.facilitylinks and $tplData.facilitylinks|@count>0%} {%$escaped_hide=""%} {%else%} {%$escaped_hide="op-{%$escaped_tpl%}-hide"%} {%/if%} <div data-click="{fm:'beha'}" class="op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsfacility {%$escaped_hide%}"> <div class="op-{%$escaped_tpl%}-find op-{%$escaped_tpl%}-clearfix op-{%$escaped_tpl%}-jsfilterPanel"> <span>入住要求：</span> <div class="op-{%$escaped_tpl%}-nolimit op-{%$escaped_tpl%}-active op-{%$escaped_tpl%}-jsnolimit"><a href="#" onclick="return false;">不限</a></div> <ul class="op-{%$escaped_tpl%}-jsfilter"> {%foreach $tplData.facilitylinks as $link%} <li class="{%if $link.count == 0%}op-{%$escaped_tpl%}-disabled{%/if%}"><a href="#" onclick="return false;" data-count="{%$link.count|escape%}" data-filter="{%$link.value|escape%}" data-name="{%$link.name|escape%}">{%$link.name|escape%}</a></li> {%/foreach%} </ul> </div> </div> <div class="op-{%$escaped_tpl%}-b_hotelSort c-gap-top-small op-{%$escaped_tpl%}-clearfix"> <div class="op-{%$escaped_tpl%}-b_hotelSort_lf" data-click="{fm:'beha'}"> <span class="op-{%$escaped_tpl%}-allhotels op-{%$escaped_tpl%}-jshotelcount">在{%$tplData.hotelcount%}家酒店中</span> <ul class="op-{%$escaped_tpl%}-e_hotelSort_sortSel op-{%$escaped_tpl%}-sortShortCut op-{%$escaped_tpl%}-jssort"> <li class="op-{%$escaped_tpl%}-defaultsort op-{%$escaped_tpl%}-active"><a href="#" onclick="return false;" class="op-{%$escaped_tpl%}-sort_title op-{%$escaped_tpl%}-jsdefault OP_LOG_OTHER" data-sorttype="def" data-type="default" data-sort="no" hidefocus="on" title="点击按综合排序"><span>综合排序</span></a></li> <li><a href="#" onclick="return false;" hidefocus="on" data-sorttype="two" class="op-{%$escaped_tpl%}-jsstars OP_LOG_OTHER" data-type="stars" data-sort="asc" title="点击按星级从低到高排序"><span>星级</span><i class="c-icon c-icon-sort-gray"></i></a></li> <li><a href="#" onclick="return false;" hidefocus="on" data-sorttype="one" class="op-{%$escaped_tpl%}-jsscore OP_LOG_OTHER" data-sort="desc" title="点击按评分从高到低排序" data-type="score"><span>评分</span><i class="c-icon c-icon-down-gray"></i></a></li> <li><a href="#" onclick="return false;" hidefocus="on" data-sorttype="two" class="op-{%$escaped_tpl%}-jsprice OP_LOG_OTHER" data-sort="asc" title="点击按价格从低到高排序" data-type="price"><span>价格</span><i class="c-icon c-icon-sort-gray"></i></a></li> </ul> </div> </div> {%$starsarray=['', '国家旅游局评定为一星级','国家旅游局评定为二星级','国家旅游局评定为三星级','国家旅游局评定为四星级','国家旅游局评定为五星级']%} <div class="op-{%$escaped_tpl%}-jshotels"> {%if $status eq 1%} {%foreach $tplData.hotellinks as $hotel%} {%if $hotel@index>2%} {%break%}{%/if%} {%$temp="_"|explode:$hotel.hotelseq%} {%$len = $temp|@count%} {%$cityurl=""%} {%foreach $temp as $escaped_t%} {%if $escaped_t@index >= ($len-1)%}{%break%}{%/if%} {%$cityurl="{%$cityurl%}{%$escaped_t%}"%} {%if $escaped_t@index < ($len-2)%}{%$cityurl="{%$cityurl%}_"%}{%/if%} {%/foreach%} {%$escaped_seq="{%$temp[$len-1]%}"%} {%$escaped_url="http://hotel.qunar.com/city/{%$cityurl%}/"%} <div class="c-row op-{%$escaped_tpl%}-hotels op-{%$escaped_tpl%}-hotels{%$hotel@index%}"> {%$escaped_hotelurlimage= "{%$escaped_url%}dt-{%$escaped_seq%}?ex_track=bd_zhixin_hotel_typ_image&{%$escaped_qhfp%}"%} <div class="c-span4 op-{%$escaped_tpl%}-hotelimage"> <a target="_blank" href="{%$escaped_hotelurlimage%}"><img class="c-img c-img4" src="{%$hotel.img|escape:'html'%}"/></a> </div> <div class="c-span12 op-{%$escaped_tpl%}-hotelintro"> <p class="op-{%$escaped_tpl%}-hoteltitle"> {%if intval($hotel.star)>0%} {%$escaped_limitlen=24%} {%elseif $hotel.dangci%} {%$escaped_limitlen=28%} {%else%} {%$escaped_limitlen=34%} {%/if%} {%$hoteltitlesub = $hotel.title|limitlen:$escaped_limitlen%} {%$escaped_hotelurltitle= "{%$escaped_url%}dt-{%$escaped_seq%}?ex_track=bd_zhixin_hotel_typ_hotelname&{%$escaped_qhfp%}"%} <a href="{%$escaped_hotelurltitle%}" target="_blank" {%if $hoteltitlesub != $hotel.title%}title="{%$hotel.title|escape%}"{%/if%}>{%$hotel.title|limitlen:$escaped_limitlen|escape%}</a>{%if intval($hotel.star)>0%}<i class="c-icon c-icon-star c-gap-left-small op-{%$escaped_tpl%}-star{%$hotel.star|escape%}" title="{%$starsarray[$hotel.star]|escape%}"></i>{%elseif $hotel.dangci%}<span class="c-gap-left-small op-{%$escaped_tpl%}-hoteldangci" title="去哪儿网用户评定为{%$hotel.dangci|escape%}酒店">{%$hotel.dangci|escape%}</span>{%/if%} </p> {%if $hotel.address%}{%$escaped_address= $hotel.address|limitlen:28%}<p {%if $escaped_address != $hotel.address%}title="{%$hotel.address|escape%}"{%/if%}>地址：{%$escaped_address|escape%}</p>{%/if%} {%if $hotel.review%}{%$escaped_review= $hotel.review|limitlen:28%}<p {%if $escaped_review != $hotel.review%}title="{%$hotel.review|escape%}"{%/if%}>评价：{%$escaped_review|escape%}</p>{%/if%} </div> <div class="c-span4 op-{%$escaped_tpl%}-hotelreview"> <p>&nbsp;</p> {%$escaped_hotelurlscore= "{%$escaped_url%}dt-{%$escaped_seq%}?ex_track=bd_zhixin_hotel_typ_score&{%$escaped_qhfp%}"%} {%$escaped_hotelurlcomment= "{%$escaped_url%}dt-{%$escaped_seq%}/comments.html?ex_track=bd_zhixin_hotel_typ_comment&{%$escaped_qhfp%}"%} <p class="op-{%$escaped_tpl%}-hotelscore">{%if floatval($hotel.score)>0%}<a href="{%$escaped_hotelurlscore%}" target="_blank">{%$hotel.score|string_format:"%.1f"%}/5分</a>{%else%}<span class="op-{%$escaped_tpl%}-hotelnoscore">暂无评分</span>{%/if%}</p> <p>{%if $hotel.reviewcount> 0%}<a href="{%$escaped_hotelurlcomment%}" target="_blank">{%$hotel.reviewcount|escape%}条点评</a>{%/if%}</p> </div> <div class="c-span4 c-span-last op-{%$escaped_tpl%}-hotellook"> <p class="op-{%$escaped_tpl%}-hotelprice">{%if $hotel.price>=0%}<b>&yen;{%$hotel.price|escape%}</b>起{%/if%}</p> {%$escaped_hotelurlbtn= "{%$escaped_url%}dt-{%$escaped_seq%}?ex_track=bd_zhixin_hotel_typ_viewdetail&{%$escaped_qhfp%}"%} <p class="op-{%$escaped_tpl%}-detail"><a class="op-{%$escaped_tpl%}-detailbtn c-btn c-btn-primary c-btn-small OP_LOG_BTN" href="{%$escaped_hotelurlbtn%}" target="_blank">查看详情</a></p> </div> </div> {%/foreach%} {%/if%} </div> <p class="op-{%$escaped_tpl%}-more c-gap-top op-{%$escaped_tpl%}-jshotelmore {%if $tplData.hotelcount <= 3%}op-{%$escaped_tpl%}-hide{%/if%}"><a href="http://hotel.qunar.com/search.jsp" target="_blank">点击查看更多酒店信息&gt;&gt;</a></p> {%if $status eq 0%} {%$escaped_hide=""%} {%else%} {%$escaped_hide="op-{%$escaped_tpl%}-hide"%} {%/if%} <div class="op-{%$escaped_tpl%}-jsnohotels op-{%$escaped_tpl%}-nohotels {%$escaped_hide%}"> <p class="op-{%$escaped_tpl%}-nohotelsfilter op-{%$escaped_tpl%}-jsnohotelsfilter"></p> <p class="op-{%$escaped_tpl%}-nohotelstips"><span>看看是否输入的文字有误，或减少筛选的条件再试试</span></p> </div></div></div><script >
A.setup({
    TPL_NAME: '{%$escaped_tpl%}',
    QHFP: '{%$escaped_qhfp%}',
    FILTERSELECTED: {%json_encode($tplData.selected)%},
    HOTELTYPELINKS: {%json_encode($tplData.hoteltypelinks)%},
    FACILITYLINKS: {%json_encode($tplData.facilitylinks)%},
    PRICELINKS: {%json_encode($tplData.pricelinks)%},
    DANGCILINKS: {%json_encode($tplData.dangcilinks)%},
    HOTQUERY: '{%$tplData.queryForRequest|escape%}',
    CITY_NAME: "{%if $tplData.curcity%}{%$tplData.curcity|escape:'html'%}{%elseif $tplData.ipcity%}{%$tplData.ipcity|escape:'html'%}{%else%}北京{%/if%}",
    QUERYID: "{%$tplData.queryid%}"
});
</script>{%/block%}