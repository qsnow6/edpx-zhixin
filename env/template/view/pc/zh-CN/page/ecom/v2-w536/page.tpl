{%extends 'base_div.tpl'%}
{%block name='content'%}
<style type="text/css">.ecl-pc-gmgg-header{margin:0;margin-bottom:5px;width:538px;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;white-space:nowrap;*font-family:\5b8b\4f53}.ecl-pc-gmgg-header a{font-size:16px;font-weight:400}.ecl-pc-gmgg{font-size:12px}.ecl-pc-gmgg .last-item{clear:left;height:0;font-size:0}.ecl-pc-gmgg .games-panel{padding-bottom:10px}.ecl-pc-gmgg .games-panel a{text-decoration:none}.ecl-pc-gmgg .games-panel .sub-border-wrap{border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;-khtml-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-icab-box-shadow:1px 2px 1px rgba(0,0,0,0.072);background:#FFF\9;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color="#E2E2E2")\9;margin-bottom:-2px\9;-ms-box-shadow:1px 2px 1px rgba(0,0,0,0.072);box-shadow:1px 2px 1px rgba(0,0,0,0.072);width:536px}
.ecl-pc-gmgg .games-panel .sub-width-wrap{width:538px}.ecl-pc-gmgg .games-querytag{padding-bottom:8px;*padding-top:1px}.ecl-pc-gmgg .games-type{height:26px;overflow:hidden}.ecl-pc-gmgg .games-type-expand{height:auto;overflow:hidden}.ecl-pc-gmgg .games-type-subject{float:left;width:54px;color:#333;line-height:26px;height:26px;margin-right:-11px}.ecl-pc-gmgg .games-type-list,.ecl-pc-gmgg .games-subject-list{float:left;width:438px;margin-right:10px;overflow:hidden;line-height:26px;color:#d8d8d8}.ecl-pc-gmgg .games-type-list a,.ecl-pc-gmgg .games-subject-list a{padding:0 5px 1px 6px;*padding:2px 4px;_padding-bottom:0;margin:0 13px;*margin:0 14px;text-decoration:none;white-space:nowrap;*white-space:normal;*word-break:keep-all;color:#00C;*font-family:\5b8b\4f53}
.ecl-pc-gmgg .games-type-list a:hover,.ecl-pc-gmgg .games-subject-list a:hover{text-decoration:underline}.ecl-pc-gmgg .games-type-list .games-type-selected,.ecl-pc-gmgg .games-subject-list .games-type-selected{background:#388bff;color:#FFF}.ecl-pc-gmgg .games-type-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-subject-list .games-subject-disabled:hover,.ecl-pc-gmgg .games-type-list .games-subject-disabled,.ecl-pc-gmgg .games-subject-list .games-subject-disabled{color:#CCC;text-decoration:none;cursor:text}
.ecl-pc-gmgg .games-subject-more,.ecl-pc-gmgg .games-type-more{float:left;width:47px;line-height:26px;height:26px}.ecl-pc-gmgg .games-subject-more .icon-down,.ecl-pc-gmgg .games-type-more .icon-down,.ecl-pc-gmgg .games-subject-more .icon-up,.ecl-pc-gmgg .games-type-more .icon-up{display:block;width:7px;height:4px;position:absolute;margin-top:11px;*margin-top:4px;_margin-top:5px;margin-left:34px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -6px -32px no-repeat}.ecl-pc-gmgg .games-subject-more .icon-wrap,.ecl-pc-gmgg .games-type-more .icon-wrap{color:#333;padding:1px 16px 2px 5px;*padding-top:2px;_padding-top:3px;border:1px solid transparent;_border-color:tomato;_filter:chroma(color=#ff6347)}
.ecl-pc-gmgg .games-subject-more .icon-hover,.ecl-pc-gmgg .games-type-more .icon-hover,.ecl-pc-gmgg .games-subject-more .icon-wrap:hover,.ecl-pc-gmgg .games-type-more .icon-wrap:hover{background:#f2f8ff;border-color:#67a5eb}.ecl-pc-gmgg .games-subject-more .icon-down:hover,.ecl-pc-gmgg .games-type-more .icon-down:hover{cursor:pointer}.ecl-pc-gmgg .games-subject-more .icon-up,.ecl-pc-gmgg .games-type-more .icon-up{background-position:-20px -32px}.ecl-pc-gmgg .games-list{padding-top:10px;padding-left:10px;min-height:160px;_height:160px}
.ecl-pc-gmgg .games-list-loading{text-align:center;padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-loading .loading-text{height:28px;line-height:28px;color:#333}.ecl-pc-gmgg .games-list-err{padding-top:76px;padding-bottom:76px}.ecl-pc-gmgg .games-list-err .loading-text{color:#333;padding-left:32px;height:28px;line-height:28px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat;width:280px;margin:0 auto}.ecl-pc-gmgg .games-list-item-mark{position:absolute;width:13px;height:27px;padding-right:14px;font:normal bold 15px/15px '宋体';letter-spacing:-2px;text-align:center;color:#FFF;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -154px -80px no-repeat}
.ecl-pc-gmgg .games-list-item{float:left;width:104px;height:191px;overflow:hidden;color:#666;position:relative}.ecl-pc-gmgg .games-list-item img{width:100px;height:140px;display:block}.ecl-pc-gmgg .games-list-item-text{text-align:center;margin-top:6px;width:100px}.ecl-pc-gmgg .games-list-item-text a{font-size:13px}.ecl-pc-gmgg .games-list-item-text a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-text a.game-gift-link{display:inline-block;*display:inline;*zoom:1;width:14px;height:14px;margin-left:4px;margin-bottom:-2px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') -24px -130px no-repeat}
.ecl-pc-gmgg .games-list-star{padding:3px 0 0 7px;font-size:12px}.ecl-pc-gmgg .games-list-star span{position:absolute;margin:-1px 0 0 67px;color:#333}.ecl-pc-gmgg .games-list-star .star-bg,.ecl-pc-gmgg .games-list-star .star-cover{background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') no-repeat -20px -108px;height:12px}.ecl-pc-gmgg .games-list-star .star-bg{width:61px;text-align:left}.ecl-pc-gmgg .games-list-star .star-cover{background-position:-20px -91px}.ecl-pc-gmgg .games-list-item-border{position:absolute;display:block;width:98px;height:138px;border:1px solid #000;pointer-events:none;-ms-filter:"alpha(opacity=10)";filter:alpha(opacity=10);opacity:.1}
.ecl-pc-gmgg .games-list-item-platform{position:absolute;top:122px;right:4px;pointer-events:none;height:18px;overflow:hidden}.ecl-pc-gmgg .games-list-item-platform i{position:absolute;display:block;width:100%;height:18px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-platform-1.6.png')}.ecl-pc-gmgg .games-list-item-platform em{margin:0 4px 0 18px;line-height:18px;color:#EEE;position:relative}
.ecl-pc-gmgg .games-list-item-cover,.ecl-pc-gmgg .games-list-item-cover-more,.ecl-pc-gmgg .games-list-item-cover-bg{position:absolute;display:none;width:90px;height:140px;margin:0;padding:0 5px}.ecl-pc-gmgg .games-list-item-cover-bg{-ms-filter:"alpha(opacity=90)";filter:alpha(opacity=90);opacity:.9;background:#FFF}.ecl-pc-gmgg .games-list-item-cover{color:#666;text-decoration:none}.ecl-pc-gmgg .games-list-item-cover h4{padding:0;list-style:none;margin:10px 0 0 3px;color:#000;font-weight:400;font-size:14px}
.ecl-pc-gmgg .games-list-item-cover p{margin-top:10px;margin-left:3px;line-height:18px;height:54px;overflow:hidden;text-overflow:ellipsis;word-break:break-all;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em{position:absolute;display:block;margin:101px 0 0 3px;*margin-left:0;width:82px;line-height:22px;border:1px solid #187ec6;color:#FFF;text-align:center;text-decoration:none;background:#3aa9fd;_background:#1f95ea;cursor:pointer}.ecl-pc-gmgg .games-list-item-cover em:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-top,.ecl-pc-gmgg .games-list-item-top-hover{width:100px}
.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top:hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover,.ecl-pc-gmgg .games-list-item-top-hover .games-list-item-cover-bg{display:block}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-grp{position:absolute;margin-top:92px;*margin-left:0;width:82px;padding-left:4px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn,.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{display:block;border:1px solid #187ec6;line-height:22px;color:#FFF;background:#3aa9fd;_padding-top:2px;line-height:20px;cursor:pointer;text-align:center}
.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more{border:1px solid #187ec6;border-top:0;color:#666;padding:0 2px;background:#fefefe;_padding-top:2px}.ecl-pc-gmgg .games-list-item-cover .item-start-btn-more:hover{color:#1c8bff}.ecl-pc-gmgg .games-list-item-cover-more em{line-height:14px;margin:6px 0;display:block;text-align:center;color:#000;font-weight:400}.ecl-pc-gmgg .games-list-item-cover-more a{display:block;width:74px;margin:6px 0;border:1px solid #187ec6;text-align:center;line-height:18px;color:#FFF;background:#3aa9fd;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:#1f95ea}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap{height:140px;width:90px;display:table-cell;vertical-align:middle;text-align:center;*margin-top:-8px;*font-size:140px}.ecl-pc-gmgg .games-list-item-cover-more .item-start-btn-wrap span{display:inline-block;vertical-align:middle;*font-size:12px}.ecl-pc-gmgg .games-list-item-cover em:hover,.ecl-pc-gmgg .games-list-item-cover .item-start-btn:hover,.ecl-pc-gmgg .games-list-item-cover-more a:hover{background:-moz-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-webkit-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:-ms-linear-gradient(top,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);background:linear-gradient(to bottom,#0084e2 5%,#1f95ea 50%,#1f95ea 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0084e2',endColorstr='#1f95ea',GradientType=0)}
.ecl-pc-gmgg .category-panel-xiaoyouxi{border-bottom:#ebebeb 1px solid;padding-bottom:7px}.ecl-pc-gmgg .games-list-xiaoyouxi{padding:12px 0 0 0;margin-bottom:-2px}.ecl-pc-gmgg .games-list-item-xiaoyouxi{float:left;margin:0 0 15px 12px;width:163px;height:70px;overflow:hidden;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:64px;height:64px;overflow:hidden;display:block;float:left;margin-right:14px}.ecl-pc-gmgg .games-list-item-xiaoyouxi a:hover{text-decoration:underline}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{position:absolute;width:70px;height:70px;margin-left:-2px;margin-top:-2px;z-index:1;display:block;background:url('http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://www.baidu.com/cache/app/app/static/image/icon/filter.1b080e63.png');cursor:pointer}
.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://www.baidu.com/cache/app/app/static/image/icon/filter_hover.5fae861e.png")}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin-top:1px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use em{color:#000;margin-right:3px}.ecl-pc-gmgg .games-list-item-xiaoyouxi .games-list-star{padding-top:4px;padding-left:0;margin-left:77px}
.ecl-pc-gmgg .games-ordertype-shouyou{position:absolute;z-index:1;margin-left:447px;*margin-left:234px;margin-top:-23px;background:#f9f9f9;width:90px;border:1px solid #d4d4d4;border-right:0;overflow:hidden}.ecl-pc-gmgg .games-ordertype-shouyou a{float:left;padding:1px 10px;*padding:3px 10px 1px;border-right:1px solid #d4d4d4;color:#00C}.ecl-pc-gmgg .games-ordertype-shouyou a:hover{text-decoration:underline}.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected,.ecl-pc-gmgg .games-ordertype-shouyou .games-type-selected:hover{background:#ededed;color:#676767;text-decoration:none;cursor:text}
.ecl-pc-gmgg .games-list-shouyou{padding:12px 0 0 0;margin-bottom:-2px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi{margin-bottom:23px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-shouyou-title{display:inline-block;*display:inline;*zoom:1;overflow:hidden;-o-text-overflow:ellipsis;text-overflow:ellipsis;white-space:nowrap;width:76px;height:16px;margin-bottom:-4px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-use{margin:0 0 1px 0;_margin-top:-1px}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .games-list-star{margin-left:85px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo{width:72px;height:72px}.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo em{width:78px;height:78px;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png') no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src='http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-sy.png')}
.ecl-pc-gmgg .games-list-shouyou .games-list-item-xiaoyouxi .item-xiaoyouxi-photo:hover em{background:url("http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png") no-repeat;_background:0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=noscale,src="http://s1.bdstatic.com/r/www/cache/biz/ecom/game/cover-hover-sy.png")}.ecl-pc-gmgg .item-shouyou-mark-1,.ecl-pc-gmgg .item-shouyou-mark-2,.ecl-pc-gmgg .item-shouyou-mark-3{position:absolute;width:28px;height:28px;margin:1px 0 0 1px;z-index:2;pointer-events:none;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.png') no-repeat;_background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/mark-sy-1.8.gif') no-repeat}
.ecl-pc-gmgg .item-shouyou-mark-2{background-position:-30px 0}.ecl-pc-gmgg .item-shouyou-mark-3{background-position:-60px 0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-popup{position:absolute;background:#FFF;outline:0}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-xiaoyouxi-use{_margin-top:-2px;color:#999}.ecl-pc-gmgg .games-list-item-xiaoyouxi .item-shouyou-download{display:block;position:absolute;z-index:3;text-align:center;margin-left:86px;margin-top:48px;*padding-top:2px;width:45px;height:24px;line-height:24px;*line-height:22px;border:1px solid #bdc1c6;color:#333}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-popup,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-popup{z-index:2;padding-top:2px;padding-left:2px;margin-top:-3px;margin-left:-3px;width:162px;height:76px;border:1px solid #CCC;box-shadow:1px 1px 1px #DDD;_width:180px}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download{color:#FFF;border:0;background:#388bff;width:47px;height:26px;line-height:26px;*line-height:24px}
.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:hover,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:hover{text-decoration:none}.ecl-pc-gmgg .games-list-item-xiaoyouxi:hover .item-shouyou-download:active,.ecl-pc-gmgg .games-list-item-xiaoyouxi-hover .item-shouyou-download:active{box-shadow:inset 0 0 1px 2px #1a7dc0}.ecl-pc-gmgg .games-pager{height:25px;text-align:center;margin:0 8px;border-top:1px solid #e3e3e3;padding:9px 0 7px 0}.ecl-pc-gmgg .games-pager a,.ecl-pc-gmgg .games-pager a:hover{text-decoration:none}
.ecl-pc-gmgg .games-pager-end{display:none}.ecl-pc-gmgg .games-pager-wrapper{display:inline-block}.ecl-pc-gmgg .games-pager-wrapper a,.ecl-pc-gmgg .games-pager-cur,.ecl-pc-gmgg .games-pager-more{text-align:center;padding:2px 6px;margin-left:2px;line-height:21px;cursor:pointer;color:#00C;border:1px solid #d5d5d5}.ecl-pc-gmgg .games-pager-prev,.ecl-pc-gmgg .games-pager-next{margin:0 2px;margin-top:1px;height:19px;line-height:19px;width:52px;color:#00C;cursor:pointer;border:1px solid #d5d5d5;display:inline-block;background:url('http://s1.bdstatic.com/r/www/cache/biz/ecom/game/game-1.8.gif') 4px -44px no-repeat}
.ecl-pc-gmgg .games-pager-prev{margin-right:0;text-align:right;padding-right:4px}.ecl-pc-gmgg .games-pager-next{text-align:left;padding-left:4px;background-position:44px -64px}.ecl-pc-gmgg .games-pager-more{border:1px solid #FFF;cursor:default}.ecl-pc-gmgg .games-pager-wrapper a:hover,.ecl-pc-gmgg .games-pager-prev:hover,.ecl-pc-gmgg .games-pager-next:hover{background-color:#fdfdfd;border-color:#5a9ff1}.ecl-pc-gmgg a.games-pager-cur,.ecl-pc-gmgg a.games-pager-cur:hover{border-color:#FFF;cursor:default;color:#000}</style>
{%strip%}{%*泛需求，好玩的网游，好玩的网页游戏模板*%}

{%if $tplData.aiwanurl%}
<h4 class="ecl-pc-gmgg-header" data-click="{rsv_vsmid:1}"><a target="_blank" class="games-header-link" href="{%$tplData.aiwanurl%}">{%$tplData.aiwantitle%}</a></h4>
{%/if%}
<div class="ecl-pc-gmgg">
    <div class="games-panel">

        <div class="sub-width-wrap">

            <div class="games-category-panel">
                <div class="games-type">
                    <b class="games-type-subject">按游戏：</b>
                    <span class="games-type-list games-category" data-click="{fm:'beha'}">
                        <a href="#" hidefocus="on" data-value="yeyou" {%if $tplData.gametype=='yeyou'%} class="games-type-selected"{%/if%}>网页游戏</a>|
                        <a href="#" hidefocus="on" data-value="wangyou" {%if $tplData.gametype=='wangyou'%} class="games-type-selected"{%/if%}>客户端游戏</a>|
                        <a href="#" hidefocus="on" data-value="xiaoyouxi" {%if $tplData.gametype=='xiaoyouxi'%} class="games-type-selected"{%/if%}>小游戏</a>|
                        <a href="#" hidefocus="on" data-value="shouyou" {%if $tplData.gametype=='shouyou'%} class="games-type-selected"{%/if%}>安卓手机游戏</a>
                    </span>
                </div>
            </div>
            <div class="games-querytag">
                {%if !empty($tplData.newquerytag)%}
                <div class="games-search games-search-{%$tplData.gametype|escape:'html'%}">
                    {%*if !empty($tplData.newquerytag.typelist_exp)*%}
                    {%$isTypeMultiLine=count($tplData.newquerytag.typelist_exp)>1%}
                    {%$isTypeExpand=$tplData.newquerytag.selectedtype!='0'%}
                    <div class="games-type{%if $isTypeExpand%} games-type-expand{%/if%} games-type-panel">
                        <b class="games-type-subject">按类型：</b>
                        <span class="games-type-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:40{%/if%}}">
                            {%foreach $tplData.newquerytag.typelist_exp as $lineitem%}
                                {%foreach $lineitem as $item%}
                                    <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                                    {%if $item.id===$tplData.newquerytag.selectedtype%} class="games-type-selected"{%/if%}>{%if $item.text==='全部'%}{%$item.text='　'|cat:$item.text|cat:'　'%}{%/if%}{%$item.text%}</a>
                                    {%if !$item@last%}|{%/if%}
                                {%/foreach%}
                                {%if !$lineitem@last&&$isTypeMultiLine%}<br>{%/if%}
                            {%/foreach%}
                        </span>
                        <span class="games-type-more" data-click="{fm:'beha'}" {%if !$isTypeMultiLine%}style="display:none"{%/if%}>
                            <span class="icon-down{%if $isTypeExpand%} icon-up{%/if%} OP_LOG_BTN"></span>
                            <a href="javascript:;" hidefocus="on" class="icon-wrap">
                                {%if $isTypeExpand%}收起{%else%}更多{%/if%}
                            </a>
                        </span>
                        <div class="last-item"></div>
                    </div>
                    {%*/if*%}
                    {%if !empty($tplData.newquerytag.subjectlist_exp)%}
                    {%$isSubjectExpand=$tplData.newquerytag.selectedsubject!='0'%}
                    {%$isSubjectMultiLine=count($tplData.newquerytag.subjectlist_exp)>1%}
                    <div class="games-type{%if $isSubjectExpand%} games-type-expand{%/if%} games-subject-panel">
                        <b class="games-type-subject">按特色：</b>
                        <span class="games-subject-list" data-click="{fm:'beha'{%if $tplData.gametype=='shouyou'%},rsv_vsgmtype:44{%/if%}}">
                            {%foreach $tplData.newquerytag.subjectlist_exp as $lineitem%}
                                {%foreach $lineitem as $item%}
                                    <a href="#" hidefocus="on" data-code="{%$item.code%}" data-value="{%$item.id%}"
                                    {%if $item.id===$tplData.newquerytag.selectedsubject%} class="games-type-selected"{%/if%}>{%if $item.text==='全部'%}{%$item.text='　'|cat:$item.text|cat:'　'%}{%/if%}{%$item.text%}</a>
                                    {%if !$item@last%}|{%/if%}
                                {%/foreach%}
                                {%if !$lineitem@last&&$isSubjectMultiLine%}<br>{%/if%}
                            {%/foreach%}
                        </span>
                        <span class="games-subject-more games-more-subject" data-click="{fm:'beha'}" style="display:none">
                            <span class="icon-down{%if $isSubjectExpand%} icon-up{%/if%} OP_LOG_BTN"></span>
                            <a href="javascript:;" hidefocus="on" class="icon-wrap">
                                {%if $isSubjectExpand%}收起{%else%}更多{%/if%}
                            </a>
                        </span>
                        <div class="last-item"></div>
                    </div>
                    {%/if%}
                </div>
                {%/if%}
            </div>

        </div>

        <div class="sub-border-wrap">

            <div id="ecl-pc-game-general-games-list" class="games-list games-list-{%$tplData.gametype|escape:'html'%}">
                {%if !empty($tplData.list)%}
                {%*手机游戏*%}
                {%if $tplData.gametype=='shouyou'%}
                {%foreach $tplData.list as $item%}
                <div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
                <a target="_blank" href="{%$item.downloadurl%}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a>
                <div class="item-shouyou-popup">
                    <a target="_blank" href="{%$item.url%}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">
                        {%if !empty($item.mark)%}
                        <i class="item-shouyou-mark-{%$item.mark%}"></i>
                        {%/if%}
                        <em></em><img src="{%$item.photo%}">
                    </a>
                    <a target="_blank" href="{%$item.url%}" class="item-shouyou-link item-shouyou-title" title="{%$item.title%}" data-click="{rsv_vsgmtype:42}">{%$item.shorttitle%}</a>
                    <div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:{%$item.star*20%}%;"></div></div></div>
                    <p class="item-xiaoyouxi-use">
                        {%if $item.size>=1048576%}
                        <em>{%($item.size/1048576)|string_format:"%d"%}</em>M
                        {%else%}<em>{%($item.size/1024)|string_format:"%d"%}</em>K
                        {%/if%}
                        B
                    </p>
                </div>
                </div>
                {%/foreach%}
                {%*小游戏*%}
                {%elseif $tplData.gametype=='xiaoyouxi'%}
                {%foreach $tplData.list as $item%}
                <div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
                <a class="item-xiaoyouxi-photo" target="_blank" href="{%$item.url%}"><em></em><img src="{%$item.photo%}"></a>
                <a target="_blank" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
                <div class="games-list-star">
                    <div class="star-bg"><div class="star-cover" style="width:{%$item.star*20%}%;"></div></div></div>
                    <p class="item-xiaoyouxi-use">
                        {%if $item.use>=1e8%}
                        <em>{%($item.use/1e8)|string_format:"%d"%}</em>亿
                        {%elseif $item.use>=1e4%}
                        <em>{%($item.use/1e4)|string_format:"%d"%}</em>万
                        {%else%}
                        <em>{%$item.use%}</em>
                        {%/if%}
                        次使用
                    </p>
                </div>
                {%/foreach%}
                {%else%}
                {%foreach $tplData.list as $item%}
                    <div class="games-list-item" data-click="{rsv_vsgmid:'{%$item.gameid%}'}">
                        {%if $item.platform%}
                        <div class="games-list-item-platform"><i></i><em>{%$item.platform%}</em></div>
                        {%/if%}
                        {%if !empty($item.mark)%}
                        <i class="games-list-item-mark">{%$item.mark%}</i>
                        {%/if%}
                        <i class="games-list-item-border"></i>
                        <div class="games-list-item-top">
                            <i class="games-list-item-cover-bg"></i>
                            {%* 页游样式 *%}
                            {%if $tplData.gametype=='yeyou'%}
                            {%if !empty($item.morepiclink)%}
                            <a target="_blank" href="{%$item.piclinkurl%}" class="EC_ZHIXIN games-list-item-cover">
                                <div class="item-start-btn-grp">
                                    <span class="item-start-btn">开始游戏</span>
                                    <span class="item-start-btn-more" data-click="{fm:'beha'}">更多平台</span>
                                </div>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            <div class="games-list-item-cover-more">
                                <div class="item-start-btn-wrap">
                                    <span>
                                        {%foreach $item.morepiclink as $morepiclink%}
                                        <a target="_blank" href="{%$morepiclink.url%}" class="item-start-btn EC_ZHIXIN">{%$morepiclink.name|escape:'html'%}</a>
                                        {%/foreach%}
                                    </span>
                                </div>
                            </div>
                            {%else%}
                            <a target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                                <em>开始游戏</em>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            {%/if%}
                            {%else%}
                            {%* 端游样式 *%}
                            <a target="_blank" href="{%$item.piclinkurl%}" class="games-list-item-cover EC_ZHIXIN">
                                <em>进入专区</em>
                                <h4>{%$item.type%}</h4>
                                <p>{%$item.info%}</p>
                            </a>
                            {%/if%}
                            <img src="{%$item.photo%}" alt="{%$item.title%}">
                        </div>
                        <p  class="games-list-item-text">
                            <a target="_blank" class="EC_ZHIXIN" href="{%$item.url%}" title="{%$item.title%}">{%$item.shorttitle%}</a>
                        </p>
                        <div class="games-list-star">
                            <div class="star-bg">
                                <span>{%$item.hot%}</span>
                                <div class="star-cover" style="width:{%if $item.star>5%}100{%else%}{%$item.star*20%}{%/if%}%;"></div>
                            </div>
                        </div>
                    </div>
                {%/foreach%}
                {%/if%}
                <div class="last-item"></div>
                {%else%}
                <div class="games-list-err"><div class="loading-text">抱歉没有找到符合条件的游戏，请尝试其他分类。</div></div>
                {%/if%}
            </div>
           
            {%function name=fe_fn_zx_game_general_gen_page from="1" to="1" page="1"%}
                {%for $i=$from to $to %}
                    <a href="javascript:;" data-page="{%$i%}" {%if $i==$page%} class="games-pager-cur"{%/if%}>{%$i%}</a>
                {%/for%}
            {%/function%}

            {%function name=fe_fn_zx_game_general_page page="1" totalPage="1" split="5"%}
                <div class="games-pager" data-click="{fm:'beha'}" onselectstart="return false"{%if $totalPage == 1%} style="display:none"{%/if%}>
                    <a href="javascript:;" id="games-pager-prev" data-click="{rsv_vspn:-1}" data-page="prev" class="games-pager-prev" {%if $page == 1%} style="visibility:hidden"{%/if%}>上一页</a>
                    <span class="games-pager-wrapper" data-click="{rsv_vspn:-2}">
                        {%if $totalPage <= $split+1%}
                            {%fe_fn_zx_game_general_gen_page from="1" to="$totalPage" page="$page"%}
                        {%else%}
                            {%fe_fn_zx_game_general_gen_page from="1" to="1" page="$page"%}
                            {%if $page < $split%}
                                {%fe_fn_zx_game_general_gen_page from="2" to="$split" page="$page"%}
                                <span class="games-pager-more">...</span>
                            {%elseif $page>$totalPage-$split+1%}
                                <span class="games-pager-more">...</span>
                                {%$temp_from=$totalPage-$split+1%}
                                {%$temp_to=$totalPage-1%}
                                {%fe_fn_zx_game_general_gen_page from="$temp_from" to="$temp_to" page="$page"%}
                            {%else%}
                                {%$temp_from=$page-($split-3)/2%}
                                {%$temp_to=$page+($split-3)/2%}
                                <span class="games-pager-more">...</span>
                                {%fe_fn_zx_game_general_gen_page from="$temp_from" to="$temp_to" page="$page"%}
                                <span class="games-pager-more">...</span>
                            {%/if%}
                            {%fe_fn_zx_game_general_gen_page from="$totalPage" to="$totalPage" page="$page"%}
                        {%/if%}
                    </span>
                    <a href="javascript:;" data-page="next" data-click="{rsv_vspn:-3}" class="games-pager-next"{%if $totalPage == $page%} style="visibility:hidden"{%/if%}>下一页</a>
                </div>
            {%/function%}
            
            {%$temp_page=$tplData.page%}
            {%$temp_totalPage=$tplData.totalpage%}
            {%if $temp_totalPage<=0||empty($tplData.list)%}{%$temp_totalPage=1%}{%/if%}
            {%fe_fn_zx_game_general_page page="$temp_page" totalPage="$temp_totalPage" split="5"%}

        </div>

    </div>
</div>
<script data-compress="off">
A.setup("G_ZX_GAME_GENERAL",{
    "query":"{%$extData.OriginQuery|escape:'url'%}",
    "subqid":"{%$extData.subqid%}",
    "qid": "{%$extData.sessionID%}",
    "sid": bds.comm.sid,
    "resourceid":"{%$extData.resourceid%}",
    "gametype":"{%$tplData.gametype|escape:'html'%}",
    "ordertype":"{%$tplData.ordertype%}",
    "page":"{%$tplData.page%}",
    "pagesize":"{%$tplData.pagesize%}",
    "totalpage":"{%$tplData.totalpage%}",
    "ajaxurl": "{%$tplData.ajaxurl|escape:'url'%}",
    "timesign": "{%$tplData.timesign%}",
    "action_from": 1,
    "version": "{%$tplData.version%}"
});
</script>
{%/strip%}
{%*首屏反作弊脚本*%}
<script>
A.setup("G_ZX_GAME_GENERAL_ANTI",(function (d){var Anti=function(e){function n(e){var n=window.event||e;for(T=n.target||n.srcElement;T&&"A"!=T.tagName;)T=T.parentNode;w=(new Date).getTime(),v=9999,m=n.clientX,s=n.clientY,h=E?w-E:0,i()&&o()}function t(){N=(new Date).getTime(),v=N-w,i()&&o()}function r(e){var n=window.event||e;x+=1,d||(d=n.clientX),l||(l=n.clientY),E=(new Date).getTime()}function i(){if(u=0,g=/\?url\=([^\.]+)\./.exec(T.href)){for(var e=0;x*A%99+9>e;++e)u+=g[1].charCodeAt(v*e%g[1].length);return!0}return!1}function o(){var e="&ck="+[u,x,v,m,s,d,l,h].join(".");
if(T.href){var n=T.href;-1==n.indexOf("&ck=")?T.href+=e:T.href=n.replace(/&ck=[\w.]*/,e)}}function a(e,n,t){for(var r in n)X[++D]=t[r],e[p+r]=D,window.attachEvent?e.attachEvent("on"+n[r],t[r]):e.addEventListener(n[r],t[r],!1)}function c(e,n){for(var t in n){var r=e[p+t],i=X[r];i&&(window.detachEvent?e.detachEvent("on"+n[t],i):e.removeEventListener(n[t],i)),X[r]=null}}function f(e,n){for(var t,r=[],i=n.getElementsByTagName("A"),o=" "+e+" ",a=0;t=i[a];a++)t.className&&(" "+t.className+" ").indexOf(o)>=0&&r.push(t);
return r}var u,v,m,s,d,l,h,g,w,E,N,T,p="EC_ZHIXIN",A=0,k=0,x=0;v=m=s=d=l=h=g=w=E=N=T=0;var D=0,X={};return{getAntiTag:function(){return p},setTimesign:function(e){A=e},bind:function(){for(var i=f(p,e),o=0,c=i.length;c>o;o++)a(i[o],["mouseover","mousedown","mouseup"],[r,n,t]);i.length&&(k=1)},unbind:function(){if(k){for(var n=f(p,e),t=0,r=n.length;r>t;t++)c(n[t],["mouseover","mousedown","mouseup"]);k=0}}}};var a=new Anti(d.getElementById('ecl-pc-game-general-games-list'));a.setTimesign('{%$tplData.timesign%}');a.bind();return a;})(document));
</script>
<script type="text/javascript">A.init(function(){var self=this,T=A.baidu,PARAMS=self.data.G_ZX_GAME_GENERAL,Anti=self.data.G_ZX_GAME_GENERAL_ANTI;
function q(e,n){return T.q(e,n)[0]}var each=T.array.each,addClass=T.dom.addClass,removeClass=T.dom.removeClass,getAttr=T.dom.getAttr,contains=T.dom.contains,getTarget=T.event.getTarget,on=T.event.on,un=T.event.un,extend=T.extend;
function ListItemHover(e,n){function t(e){addClass(e.srcElement,n+"-hover")}function r(e){removeClass(e.srcElement,n+"-hover")}return{bind:function(){var o=T.q(n,e);each(o,function(e){on(e,"mouseenter",t),on(e,"mouseleave",r),e=null})},unbind:function(){}}}
var Loader=function(e){var n={ajaxUrl:""};T.extend(n,e);var t=new T.lang.Class;t.on=t.addEventListener,t.fire=t.dispatchEvent,t.un=t.removeEventListener;var r=0;return t.ajax=function(e,o){var a=r=+new Date,i=function(){},u=function(){a===r&&(t.fire("loaderror"),i())},c=T.url.jsonToQuery(e,encodeURIComponent),f=n.ajaxUrl+(n.ajaxUrl.indexOf("?")>=0?"&":"?")+c;T.ajax.request(f,{timeout:6e3,onsuccess:function(e,n){if(a===r){var u={};try{u=T.json.parse(n)}catch(c){return t.fire("loaderror",[c]),void 0}0===u.status?o(u.data):(t.fire("loaderror"),i())
}},ontimeout:u,onfailure:u})},t.load=function(e){t.fire("loading"),t.ajax(e,function(e){e.list[0]?t.fire("load",{data:e}):t.fire("loaderror")})},t};
var Pager=function(e,n){function r(n){return T.q(n,e)[0]}var t={split:5,prev:"games-pager-prev",wrapper:"games-pager-wrapper",next:"games-pager-next",selectedClass:"games-pager-cur",moreClass:"games-pager-more",pagerAttr:"data-page"};extend(t,n);var a=new T.lang.Class;a.on=a.addEventListener,a.fire=a.dispatchEvent,a.un=a.removeEventListener;var o="PAGER_"+Math.random();return a._genPager=function(e,n,r){for(var a=[],i=e;n>=i;i++)a.push('<a  href="javascript:;" data-page="'+i+'" '+(i==r?'id="'+o+'" class="'+t.selectedClass+'"':"")+">"+i+"</a>");
return a.join("")},a._genMore=function(){return'<span class="'+t.moreClass+'">...</span>'},a.getPage=function(){return a.current?Math.floor(getAttr(a.current,t.pagerAttr)):1},a.setPager=function(n,i){n=n||1,i=i||1,e.style.display="none",r(t.prev).style.visibility=1==n?"hidden":"visible",r(t.next).style.visibility=i==n?"hidden":"visible";var s=[];if(i<=t.split+1)s.push(a._genPager(1,i,n));else{if(s.push(a._genPager(1,1,n)),n<t.split)s.push(a._genPager(2,t.split,n)),s.push(a._genMore());else if(n>i-t.split+1)s.push(a._genMore()),s.push(a._genPager(i-t.split+1,i-1,n));
else{var u=Math.floor((t.split-3)/2);s.push(a._genMore()),s.push(a._genPager(n-u,n+u,n)),s.push(a._genMore())}s.push(a._genPager(i,i,n))}a.current=o,r(t.wrapper).innerHTML=s.join(""),i>1&&(T.g(a.current)||(a.current=t.wrapper),e.style.display=""),a.fire("render",{page:n})},a.init=function(){function e(e){T.event.preventDefault(e);var n=getTarget(e),r=a.getPage(),o=T.dom.getAttr(n,t.pagerAttr);r+="prev"==o?-1:1,a.fire("change",{page:r})}function n(e){T.event.preventDefault(e);var n=getTarget(e);T.dom.hasAttr(n,t.pagerAttr)&&getAttr(a.current,"data-page")!==getAttr(n,"data-page")&&(a.current&&removeClass(a.current,t.selectedClass),addClass(a.current=n,t.selectedClass),a.fire("change",{page:t.page=getAttr(n,t.pagerAttr)}))
}var o=T.array.filter(T.dom.children(r(t.wrapper)),function(e){return T.dom.hasClass(e,t.selectedClass)});return a.current=o[0]?o[0]:null,on(r(t.next),"click",e),on(r(t.prev),"click",e),on(r(t.wrapper),"click",n),a},a.hide=function(){a.setPager(1,1)},a};
function TemplateRender(e){this._init.call(this,e)}TemplateRender.prototype={TPL:{LOADING_TPL:'<div class="games-list-loading"><span class="loading-text">正在努力为您加载...</span></div>',ERROR_TPL:'<div class="games-list-err"><div class="loading-text">#{0}</div></div>'},ERROR_MSG:"抱歉没有找到符合条件的游戏，请尝试其他分类。",LIST_TPL:'<div class="games-list-item" data-click="{rsv_vsgmid:\'#{gameid}\'}">#{itemplatform}#{itemmark}<i class="games-list-item-border"></i><div class="games-list-item-top"><i class="games-list-item-cover-bg"></i>#{itemTypeHolder}<img src="#{photo}" alt="#{title}"></div><p class="games-list-item-text"><a target="_blank" class="EC_ZHIXIN" href="#{url}" title="#{title}">#{shorttitle}</a></p><div class="games-list-star"><div class="star-bg"><span>#{hot}</span><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div></div>',ITEM_COVER:'<a target="_blank" href="#{piclinkurl}" class="games-list-item-cover EC_ZHIXIN"><em>#{piclinktitle}</em><h4>#{type}</h4><p>#{info}</p></a>',ITEM_MORE_COVER:'<a target="_blank" href="#{piclinkurl}" class="EC_ZHIXIN games-list-item-cover"><div class="item-start-btn-grp"><span  class="item-start-btn">开始游戏</span><span class="item-start-btn-more" data-click="{fm:\'beha\'}">更多平台</span></div><h4>#{type}</h4><p>#{info}</p></a><div class="games-list-item-cover-more"><div class="item-start-btn-wrap"><span>#{morepiclinkholder}</span></div></div>',MORE_COVER_LINK:'<a target="_blank" href="#{url}" class="item-start-btn EC_ZHIXIN">#{name}</a>',_init:function(e){this.setOpt(e)
},_render:function(e){this.opt.list.innerHTML=e},_renderList:function(e){var t=[],r=this.opt.gameType,n=this.ITEM_COVER;this.ITEM_TYPE_WANGYOU;var a=this.LIST_TPL,i=this.ITEM_MORE_COVER,s=this.MORE_COVER_LINK;each(e,function(e){if(e.hotPercent=20*(e.star>5?5:e.star),e.info=e.info||"","yeyou"==r)if(e.morepiclink&&e.morepiclink[0]){var o="";each(e.morepiclink,function(e){o+=T.format(s,e)}),e.morepiclinkholder=o,e.itemTypeHolder=T.format(i,e)}else e.piclinktitle="开始游戏",e.itemTypeHolder=T.format(n,e);else e.piclinktitle="进入专区",e.itemTypeHolder=T.format(n,e);
e.itemmark=e.mark?baidu.format('<i class="games-list-item-mark">#{mark}</i>',e):"",e.itemplatform=e.platform?baidu.format('<div class="games-list-item-platform"><i></i><em>#{platform}</em></div>',e):"",t.push(T.format(a,e))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""},onRender:T.fn.blank,setOpt:function(e){this.opt=e},renderError:function(){this.opt.container.style.height="",this._render(T.format(this.TPL.ERROR_TPL,this.ERROR_MSG))},renderList:function(e){this._renderList(e),this.onRender(e)
},renderLoading:function(){if(!baidu.browser.ie||baidu.browser.ie>=8){var e=T.g(this.opt.container).offsetHeight-(baidu.browser.ie<8?0:2);this.opt.container.style.height=e+"px"}this._render(this.TPL.LOADING_TPL)}};
function XiaoYouXiRender(e){this.setOpt.call(this,e)}XiaoYouXiRender.prototype={LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a class="item-xiaoyouxi-photo" target="_blank" href="#{url}"><em></em><img src="#{photo}"></a><a target="_blank" href="#{url}" title="#{title}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{useHolder}次使用</p></div>',_renderList:function(e){var t=[],r=this.LIST_TPL;
each(e,function(e){e.hotPercent=20*(e.star>5?5:e.star),e.useHolder=e.use>=1e8?"<em>"+Math.floor(e.use/1e8)+"</em>亿":e.use>=1e4?"<em>"+Math.floor(e.use/1e4)+"</em>万":"<em>"+e.use+"</em>",t.push(T.format(r,e))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}},T.inherits(XiaoYouXiRender,TemplateRender);
function ShouYouRender(e){this.setOpt.call(this,e)}ShouYouRender.prototype={LIST_TPL:'<div class="games-list-item-xiaoyouxi" data-click="{rsv_vsgmid:\'#{gameid}\'}"><a target="_blank" href="#{downloadurl}" class="item-shouyou-download" data-click="{rsv_vsgmtype:43}">下载</a><div class="item-shouyou-popup"><a target="_blank" href="#{url}" class="item-shouyou-link item-xiaoyouxi-photo" data-click="{rsv_vsgmtype:41}">#{markholder}<em></em><img src="#{photo}"></a><a target="_blank" href="#{url}" class="item-shouyou-link item-shouyou-title" title="#{title}" data-click="{rsv_vsgmtype:42}">#{shorttitle}</a><div class="games-list-star"><div class="star-bg"><div class="star-cover" style="width:#{hotPercent}%;"></div></div></div><p class="item-xiaoyouxi-use">#{sizeHolder}B</p></div></div>',_renderList:function(e){var t=[],r=this.LIST_TPL,i=1048576;
each(e,function(e){e.hotPercent=20*(e.star>5?5:e.star),e.markholder=e.mark?baidu.format('<i class="item-shouyou-mark-#{mark}"></i>',e):"",e.sizeHolder=e.size>=i?"<em>"+Math.floor(e.size/i)+"</em>M":"<em>"+Math.floor(e.size/1024)+"</em>K",t.push(T.format(r,e))}),t.push('<div class="last-item"></div>'),this._render(t.join("")),this.opt.container.style.height=""}},T.inherits(ShouYouRender,TemplateRender);
var SwitchTab=function(e,t){function a(t,a){return T.q(t,a||e)[0]}function r(){on(e,"click",function(e){T.event.preventDefault(e);var t=getTarget(e);t!==n.selected&&T.dom.hasAttr(t,o.dataTag)&&!T.dom.hasClass(t,o.disabled)&&(s(t),n.fire("change",n.getValue()))})}function i(){r(),n.selected=a(o.selected)}function s(e){n.selected&&removeClass(n.selected,o.selected),addClass(n.selected=e,o.selected)}var n=new T.lang.Class;n.on=n.addEventListener,n.fire=n.dispatchEvent,n.un=n.removeEventListener;var o={selected:"games-type-selected",dataTag:"data-value",disabled:"games-subject-disabled"};
return t&&(o=extend(o,t)),n.getValue=function(){return{value:getAttr(n.selected,o.dataTag)}},n.init=i,n.select=s,n.reset=function(){s(T.dom.first(e))},n};
var MoreToggle=function(e){function t(){var t=q(o.list,e).getElementsByTagName("A");if(t[0]){var a=t[0],r=t[t.length-1];r.offsetTop-a.offsetTop>10&&T.show(q(o.morebtn,e))}}function a(e,t,a){on(t,"mouseover",function(){addClass(e,a)}),on(t,"mouseout",function(){removeClass(e,a)})}function r(){var t=q(o.morebtn,e),r=q(o.iconDown,t),i=q(o.iconWrap,t);on(t,"click",function(){var t=q(o.wrapper,e),a=T.dom.hasClass(t,o.expand);(a?removeClass:addClass)(t,o.expand),a=!a,r.className=a?o.iconUp:o.iconDown,i.innerHTML=a?"收起":"更多"
}),a(i,r,o.iconHover)}function i(){var t=q(l.wrapper,e),r=q(l.iconDown,t),i=q(l.iconWrap,t);on(q(l.morebtn,t),"click",function(){var e=T.dom.hasClass(t,l.expand),a=e?removeClass:addClass;a(t,l.expand),a(r,l.iconUp),i.innerHTML=e?"更多":"收起"}),a(i,r,l.iconHover)}var n=this,s={iconDown:"icon-down",iconUp:"icon-up",iconWrap:"icon-wrap",iconHover:"icon-hover",expand:"games-type-expand"},o={list:"games-subject-list",wrapper:"games-subject-panel",morebtn:"games-more-subject"};extend(o,s);var l={wrapper:"games-type-panel",morebtn:"games-type-more"};
extend(l,s),n.init=function(e){setTimeout(function(){e.subject&&(t(),r()),e.type&&i()},0)}};
var TabManager=function(){function e(e,t){var a="",s=e.length-1;return each(e,function(e,n){a+='<a href="#" hidefocus="on" data-code="'+(e.code||"")+'"'+' data-value="'+e.id+'"'+(e.id==t?'class="games-type-selected"':"")+">"+("全部"===e.text?"　全部　":e.text)+"</a>"+(s!=n?"|":"")}),a}function t(t,a){var s="0"===t.selectedsubject||0===t.selectedsubject,n="shouyou"==a?",rsv_vsgmtype:40":"",i='<div class="games-type'+(s?"":" games-type-expand")+' games-type-panel">'+'<b class="games-type-subject">按类型：</b>'+'<span class="games-type-list" data-click="{fm:\'beha\''+n+'}">',r=t.typelist_exp.length>1,o=t.typelist_exp.length-1;
return each(t.typelist_exp,function(a,s){i+=e(a,t.selectedtype),r&&s!=o&&(i+="<br>")}),i+='</span><span class="games-type-more" data-click="{fm:\'beha\'}"'+(r?"":' style="display:none"')+">"+'<span class="icon-down'+(s?"":" icon-up")+' OP_LOG_BTN"></span>'+'<a href="javascript:;" hidefocus="on" class="icon-wrap">'+(s?"更多":"收起")+"</a>"+"</span>"+'<div class="last-item"></div>'+"</div>"}function a(t,a){var s="0"===t.selectedsubject||0===t.selectedsubject,n="shouyou"==a?",rsv_vsgmtype:44":"",i='<div class="games-type'+(s?"":" games-type-expand")+' games-subject-panel">'+'<b class="games-type-subject">按特色：</b>'+'<span class="games-subject-list" data-click="{fm:\'beha\''+n+'}">',r=t.subjectlist_exp.length>1,o=t.subjectlist_exp.length-1;
return each(t.subjectlist_exp,function(a,s){i+=e(a,t.selectedsubject),r&&s!=o&&(i+="<br>")}),i+='</span><span class="games-subject-more games-more-subject"data-click="{fm:\'beha\'}" style="display:none"><span class="icon-down'+(s?"":" icon-up")+' OP_LOG_BTN"></span>'+'<a href="javascript:;" hidefocus="on" class="icon-wrap">'+(s?"更多":"收起")+"</a>"+"</span>"+'<div class="last-item"></div>'+"</div>"}function s(e,s){var n='<div class="games-search games-search-'+s+'">';return e.typelist_exp&&(n+=t(e,s)),e.subjectlist_exp&&(n+=a(e,s)),n+="</div>"
}return{build:s}}();
var TypeTab=function(e){function t(t){return T.q(t,e)[0]}function a(e){var a=t(n.subject),s=a.getElementsByTagName("A"),i=o.selected,r=T.dom.first(a);each(s,function(t){var a=+getAttr(t,n.codeTag),s=e&a;(s?removeClass:addClass)(t,n.disabled),s||i!==t||i===r||o.select(i=r)})}function s(){r.init(),o.init(),r.on("change",function(){a(+getAttr(r.selected,"data-code")),i.fire("change",{content:i.getValue()})}),o.on("change",function(){i.fire("change",{content:i.getValue()})});var t=r.getValue().value;"0"!=t&&a(+getAttr(r.selected,"data-code"));
var s=new MoreToggle(e);s.init({subject:1,type:1})}var n={codeTag:"data-code",selected:"games-type-selected",type:"games-type-list",subject:"games-subject-list",subjectw:"games-subject-panel",subjectMore:"games-subject-more",disabled:"games-subject-disabled",expand:"games-type-expand"},i=new T.lang.Class;i.on=i.addEventListener,i.fire=i.dispatchEvent,i.un=i.removeEventListener;var r=new SwitchTab(t(n.type)),o=new SwitchTab(t(n.subject));return i.getValue=function(){return{type:r.getValue().value,subject:o.getValue().value}
},i.show=function(){T.show(e)},i.hide=function(){T.hide(e)},i.init=s,i};
var GameCategoryTab=function(e){var t=new SwitchTab(e),a=t.getValue;return t.getValue=function(){return{gameType:a.apply(t).value}},t};
var GamePanel={create:function(e){return new this[e.gameType](e)},BasicPanel:function(){function e(e){this._init.call(this,e)}return e.prototype={IE6:T.browser.ie<7,_initItemHover:function(){this._itemHover=0},_init:function(e){this.opt=e,this._initItemHover()},_getParams:function(){return{}},getParams:function(){return this._getParams()},_buildTab:function(e){return e&&e.typelist?(T.dom.insertHTML(this.opt.querytag,"beforeend",TabManager.build(e,this.opt.gameType)),!0):!1},bindDOM:function(){this._itemHover&&this._itemHover.bind()
},unbindDOM:function(){this._itemHover&&this._itemHover.unbind()},initTab:function(e){var t=this;!t.typeTab&&t._buildTab(e)&&(t._initTab(),t.typeTab.show())},init:function(){var e=this.opt,t=new TemplateRender(e);this.render=t},reload:function(){this.fire("change")}},T.inherits(e,T.lang.Class),e.prototype.on=e.prototype.addEventListener,e.prototype.un=e.prototype.removeEventListener,e.prototype.fire=e.prototype.dispatchEvent,e}()};
function LayerToggle(e){function t(){each(T.q(s.top,e),function(e){var t=q(s.btn,e);if(t){var a=q(s.cover,e),r=q(s.more,e);n[++i]=function(e){T.event.preventDefault(e),a.style.display="none",r.style.display="block"},t.__event_lt_click=i,on(t,"click",n[i]),n[++i]=function(e){var t=e.toElement||e.relativeTarget||e.relatedTarget,n=getTarget(e);n&&t&&(n===r||contains(r,n)&&t!==r)&&!contains(r,t)&&(a.style.display="",r.style.display="none")},r.__event_lt_out=i,on(r,"mouseout",n[i]),n[++i]=function(e){var t=getTarget(e);
t.href&&0==t.href.indexOf("http")&&(a.style.display="",r.style.display="none")},r.__event_lt_click=i,on(r,"click",n[i])}})}function a(){each(T.q(s.top,e),function(e){var t=q(s.btn,e);if(t){var a=q(s.more,e);un(t,"click",n[t.__event_lt_click]),un(a,"mouseout",n[a.__event_lt_out]),un(a,"click",n[a.__event_lt_click])}}),n=[]}var n=[],i=0,s={top:"games-list-item-top",cover:"games-list-item-cover",more:"games-list-item-cover-more",btn:"item-start-btn-more"};return{bind:t,unbind:a}}GamePanel.wangyou=GamePanel.yeyou=function(){function e(e){this._init.call(this,e)
}return e.prototype={anti:1,_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-top"))},_initTab:function(){var e=this,t=new TypeTab(q("games-search-"+e.opt.gameType,e.opt.container));t.init(),t.on("change",function(){e.unbindDOM(),e.reload()}),e.typeTab=t},_getParams:function(){return this.typeTab?this.typeTab.getValue():{type:0,subject:0,needquerytag:1}},bindDOM:function(){GamePanel.BasicPanel.prototype.bindDOM.apply(this),this.layerToggle&&this.layerToggle.bind()
},unbindDOM:function(){GamePanel.BasicPanel.prototype.unbindDOM.apply(this),this.layerToggle&&this.layerToggle.unbind()},init:function(){var e=this;e.render=new TemplateRender(e.opt),"yeyou"==e.opt.gameType&&(e.layerToggle=new LayerToggle(e.opt.list))},show:function(){this.typeTab&&this.typeTab.show()},showFirst:function(){this._initTab(),this.show()},hide:function(){this.typeTab&&this.typeTab.hide()}},T.inherits(e,GamePanel.BasicPanel),e}();
GamePanel.xiaoyouxi=function(){function e(e){this._init.call(this,e)}var t="games-list-xiaoyouxi";return e.prototype={init:function(){this._initItemHover(),this.render=new XiaoYouXiRender(this.opt)},initTab:function(){},showFirst:function(){this.show()},show:function(){addClass(this.opt.list,t)},hide:function(){removeClass(this.opt.list,t)}},T.inherits(e,GamePanel.BasicPanel),e}();
GamePanel.shouyou=function(){function e(e){this._init.call(this,e)}var t="games-list-shouyou",i='<div data-click="{fm:\'beha\',rsv_vsgmtype:49}" class="games-ordertype-shouyou"><a href="#" hidefocus="on" data-value="hot" class="games-type-selected">热门</a><a href="#" hidefocus="on" data-value="new">最新</a></div>';return e.prototype={_initItemHover:function(){this.IE6&&(this._itemHover=new ListItemHover(this.opt.list,"games-list-item-xiaoyouxi"))},_initTab:function(){function e(){return q("games-search-"+i.opt.gameType,i.opt.container)
}function t(){i.unbindDOM(),i.reload()}var i=this,n=e(),a=new SwitchTab(q("games-type-list",n));a.init(),a.on("change",function(){i.subjectTab&&i.subjectTab.reset(),t()}),a.show=function(){T.show(e())},a.hide=function(){T.hide(e())},i.typeTab=a;var s=q("games-subject-list",n);if(s){var r=new SwitchTab(s);r.init(),r.on("change",function(){i.typeTab.reset(),t()}),i.subjectTab=r;var o=new MoreToggle(n);o.init({subject:1})}var c=q("games-type-list",n);if(c){var l=new MoreToggle(n);l.init({type:1})}},_getParams:function(){var e=this.typeTab?{type:this.typeTab.getValue().value}:{type:0,needquerytag:1},t=this.orderTab;
t&&(e.ordertype=t.getValue().value);var i=this.subjectTab;return i&&(e.subject=i.getValue().value),e},_bindLink:function(){var e=this.opt.getParams(),t=T.url.jsonToQuery({query:e.query,qid:e.qid,sid:e.sid,resource_id:e.resource_id,version:e.version},encodeURIComponent);each(T.q("item-shouyou-link",this.opt.list),function(e){var i=e.href;e.href=i+(i.indexOf("?")>=0?"&":"?")+t})},_initOrderTab:function(){var e=this,t=this.opt.querytag;T.dom.insertHTML(t,"afterbegin",i);var n=q("games-ordertype-shouyou",t),a=new SwitchTab(n);
a.on("change",function(){e.unbindDOM(),e.reload()}),a.show=function(){T.show(n)},a.hide=function(){T.hide(n)},(e.orderTab=a).init()},init:function(){var e=this;e._initItemHover(),e.render=new ShouYouRender(e.opt),e.render.onRender=function(){e._bindLink()}},show:function(){var e=this;addClass(e.opt.list,t),e.typeTab&&e.typeTab.show(),e.orderTab?e.orderTab.show():e._initOrderTab()},hide:function(){removeClass(this.opt.list,t),this.typeTab&&this.typeTab.hide(),this.orderTab&&this.orderTab.hide()},showFirst:function(){var e=this;
e._initTab(),e._initOrderTab(),e.show(),e._bindLink()}},T.inherits(e,GamePanel.BasicPanel),e}();
var Controller=function(e,t){function n(){var e=g.opt.gameType;return{action:f[e],query:t.query,qid:t.qid,sid:t.sid,resource_id:t.resourceid,gametype:e,ordertype:t.ordertype,version:t.version,action_from:t.action_from}}function i(t){var i={gameType:t,getParams:n},a=GamePanel.create(extend(i,e));return a.init(),a}function a(e){if(!_[e]){var t=i(e);t.on("change",l),_[e]=t}g!=_[e]&&(g=_[e])}function r(){var t=e.card,n=t.offsetHeight,i=T.page.getViewHeight(),a=T.dom.getPosition(t);T.browser.ie<=7&&(n-=26),i>n?window.scrollTo(window.scrollLeft,a.top-10):window.scrollTo(window.scrollLeft,T.dom.getPosition(T.g("ecl-pc-game-general-games-list")).top+6)
}function s(t){var n={rsv_vsgmtype:y[t]};T.dom.setAttr(e.container,"data-click",T.json.stringify(n))}function o(t){var n={rsv_vspn:t};T.dom.setAttr(e.list,"data-click",T.json.stringify(n))}function c(){var n=e.headerlink.href;on(e.headerlink,"mousedown",function(){var i=extend({query:t.query,ordertype:t.ordertype,gametype:t.gametype,qid:t.qid,sid:t.sid},g.getParams()),a="";for(var r in i)i.hasOwnProperty(r)&&(a+=r+"="+i[r]+"&");e.headerlink.href=n+(-1==n.indexOf("?")?"?":"&")+a})}function l(e){var t=e.target,i=extend(n(),t.getParams());
i.page=1,m.load(i)}function u(){p.on("change",function(e){g.unbindDOM();var t=extend(n(),g.getParams());t.page=e.page,r(),m.load(t)}),m.on("loaderror",function(){g.render.renderError(),p.hide()}),m.on("loading",function(){b.unbind(),g.render.renderLoading(),p.hide()}),m.on("load",function(e){var t=e.data,n=t.page||1,i=t.totalpage||1;b.setTimesign(t.timesign),g.initTab(t.newquerytag),g.render.renderList(t.list),g.anti&&b.bind(),g.bindDOM(),p.setPager(n,i)}),p.on("render",function(e){o(e.page)}),h.on("change",function(e){g.unbindDOM(),g.hide(),a(t.gametype=e.gameType),g.show(),g.reload(),s(e.gameType)
})}function d(){p=new Pager(e.pager),p.init(),m=new Loader({ajaxUrl:decodeURIComponent(t.ajaxurl)}),h=new GameCategoryTab(e.gameCategory),h.init();var n=t.gametype||"wangyou";a(n),g.bindDOM(),g.showFirst(),u(),s(n),o(1),e.headerlink&&c()}var p,m,h,g,v=this,f={wangyou:"getOnlineGame",yeyou:"getWebGame",xiaoyouxi:"getSmallGame",shouyou:"getPhoneGame"},y={yeyou:1,wangyou:2,xiaoyouxi:3,shouyou:4},b=Anti,_={};return v.init=d,v};
var ctls={card:self.container,headerlink:self.qq('games-header-link'),container:self.qq('ecl-pc-gmgg'),list:self.qq('games-list'),pager:self.qq('games-pager'),gameCategory:self.qq('games-category'),querytag:self.qq('games-querytag')},controller=new Controller(ctls,PARAMS);controller.init()
})</script>
{%/block%}