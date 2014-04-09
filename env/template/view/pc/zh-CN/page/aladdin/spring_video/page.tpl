{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%$extData.feData.hasBorder = true%}{%$st1spec = $tplData.status[0].st1spec%} {%if !$st1spec%} {%$st1spec = '近期播出'%} {%/if%}{%/block%}{%block name='content'%}<style>.op-spring-video-guestbg{width:{%fe_fn_c_get_img_height col=6 border="1" %}px}.op-spring-video-img{height:{%fe_fn_c_get_img_height col=6 rate=161/121 border="1" %}px}</style><div class="op-spring-video-box"> <ul class="op-spring-video-list c-clearfix"> {%$now = time()%} {%$nowDate = $now|date_format:'%Y-%m-%d'%} {%foreach array_slice( $tplData.video, 0, 4 ) as $item%} {%* 计算开始和结束时间 *%} {%$startTime = strtotime( $item.startTime )%} {%$endTime = strtotime( $item.endTime )%} {%$st = 2%} {%$st1text = $tplData.status[0].st1%} {%* 根据开始和结束时间判断当前的状态 *%} {%if $now < $startTime%} {%$st = 1%} {%if $nowDate != $startTime|date_format:'%Y-%m-%d'%} {%$st1text = $st1spec%} {%/if%} {%/if%} {%if $now > $endTime%} {%$st = 3%} {%/if%} <li class="c-span6 {%if $item@last%}c-span-last{%/if%} op-spring-video-st{%$st|escape:'html'%}" spring-video='{"status":"{%$st|escape:'html'%}","startTime":"{%$startTime*1000|escape:'html'%}","endTime":"{%$endTime*1000|escape:'html'%}"}'> <a href="{%$item.url%}" class="op-spring-video-img" target="_blank"> <img src="{%$item.img%}" class="c-img c-img6"  /> <span class="op-spring-video-guestbg"></span> <span class="op-spring-video-guestTitle">{%$tplData.guestTitle|escape:'html'%}</span> <span class="op-spring-video-guest">{%$item.guest|limitlen:28|escape:'html'%}</span> </a> <a href="{%$item.url%}" target="_blank">{%$item.title|limitlen:18|escape:'html'%}</a> <span class="op-spring-video-time">{%$item.showtime|escape:'html'%}</span> <span class="op-spring-video-stbox"> <span class="op-spring-video-st1text">{%$st1text|escape:'html'%}</span> <a href="{%$item.url%}" target="_blank" class="op-spring-video-st2text">{%$tplData.status[0].st2|escape:'html'%}</a> <a href="{%$item.url%}" target="_blank" class="op-spring-video-st3text">{%$tplData.status[0].st3|escape:'html'%}</a> </span> </li> {%/foreach%} </ul> {%if count($tplData.video) > 4%} <div class="op-spring-video-btn op-spring-video-btnshow OP_LOG_BTN" data-click="{'fm':'beha'}"> <span class="op-spring-video-showtext">{%$tplData.tips[0].show|escape:'html'%}</span> <i class="op-spring-video-btnicon c-icon c-icon-chevron-bottom"></i> <span class="op-spring-video-hidetext">{%$tplData.tips[0].hide|escape:'html'%}</span> <i class="op-spring-video-btnicon c-icon c-icon-chevron-top"></i> </div> {%/if%}</div><script >
    A.setup({
        videoList: {%json_encode($tplData.video)%},
        status: {%json_encode($tplData.status[0])%},
        guestTitle: '{%$tplData.guestTitle|escape:'javascript'%}',
        time: {
            realTime: new Date( {%time()*1000%} ),
            JSTime: new Date()
        },
        st1spec: '{%$st1spec|escape:'javascript'%}'
    });
</script>{%/block%}