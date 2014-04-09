{%extends 'c_right_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.narrow = true%}{%/block%}{%block name='content'%}<div class="cr-title opr-map-book-title c-clearfix"> <span>{%$tplData.title|escape%}预订</span> <a href="http://nlbc.baidu.com/lbs-lbc/index.action" target="_blank">推广</a></div>{%foreach array_slice($tplData.shops, 0, 2) as $item%}{%$tempDataId=$item@iteration%}<div class="opr-map-book-container opr-map-unbooking" data-shopid="{%$item.shopid|escape:'none'%}" data-id="{%$tempDataId|escape:'none'%}"> <div class="c-row">{%$tempDataHeight={%fe_fn_c_get_img_height col=4 rate=1%}%} <div class="c-span4" style="height:{%$tempDataHeight%}px;"> <a href="{%$item.placeUrl%}" target="_blank"> <img class="c-img c-img4" src="http://webmap3.map.bdimg.com/maps/services/thumbnails?width=100&height=100&align=center,center&src={%urlencode($item.shopimg)%}"> </a> </div> <div class="opr-map-book-right"> <a href="{%$item.placeUrl%}" target="_blank"{%if $item.name|string_display_len>22%} title="{%$item.name|escape%}"{%/if%}>{%$item.name|limitlen:22|escape%}</a> <div> <span>人均：</span><span class="opr-map-book-price"><strong>{%$item.price|escape%}</strong>元</span> </div> <div> <span>评分：</span><i class="c-icon c-icon-star-gray"> <i class="c-icon c-icon-star" style="width:{%intval($item.starCount)*20%}%;"></i> </i> </div> <div> <a class="opr-map-book-expand-btn OP_LOG_BTN" href="#" onclick="return false;" data-click="{fm: 'beha'}">点击预订<i class="c-icon c-icon-chevron-bottom"></i></a> <a class="opr-map-book-fold-btn OP_LOG_BTN" href="#" onclick="return false;" data-click="{fm: 'beha'}">收起<i class="c-icon c-icon-chevron-top"></i></a> <a class="opr-map-book-comment c-gap-left-small" href="{%$item.commentUrl%}" target="_blank">{%$item.commentNum|escape%}篇评论</a> </div> </div> </div> <div class="opr-map-book-box c-gap-top"> <div class="c-clearfix"> <div class="opr-map-book-date-container" data-type="calendar" data-empty="" data-error=""> <span class="c-input opr-map-book-date-input-container OP_LOG_BTN" data-click="{fm:'beha'}"> <i data-click="{fm:'beha'}" class="c-icon c-icon-calendar"></i> <input type="text" class="opr-map-book-input-date" readonly="readonly" name="date" value=""> <div class="opr-map-book-calendar-container"></div> </span> </di{%*i*%}v> <div class="opr-map-book-time-container c-gap-left"> <div class="opr-map-book-time-dropdown-container" data-type="time" data-empty="" data-error=""></div> </div> </div> <div class="c-gap-top c-clearfix"> <div class="opr-map-book-customer-number-dropdown-container" data-form-type="dropdown" data-type="number" data-empty="请选择人数" data-error=""></div> <div class="opr-map-book-room-or-hall-container"> <input class="opr-map-book-radio" id="opr-map-book-hall-{%$tempDataId%}" type="radio" name="opr-map-book-room-or-hall-{%$tempDataId%}" value="1" data-name="hall"><label for="opr-map-book-hall-{%$tempDataId%}" data-name="hall">大厅</label><input class="opr-map-book-radio" id="opr-map-book-room-{%$tempDataId%}" type="radio" name="opr-map-book-room-or-hall-{%$tempDataId%}" value="0" data-name="room" style="margin-left: 10px;+margin-left:0px;+position:relative;+left:13px;"><label for="opr-map-book-room-{%$tempDataId%}" data-name="room" style="+position:relative;+left:15px;">包房</label> </div> </div> <div class="c-gap-top c-clearfix"> <div class="opr-map-book-customer-name-container"> <input class="c-input opr-map-book-input opr-map-book-customer-name" maxlength="30" placeholder="联系人" data-placeholder="联系人" data-form-type="input" data-type="customer" data-empty="请留下联系人姓名" data-error="姓名格式有误"> </div> <div class="opr-map-book-sex-container"> <input class="opr-map-book-radio" id="opr-map-book-customer-sex-female-{%*i*%}{%$tempDataId%}" type="radio" name="opr-map-book-customer-sex-{%$tempDataId%}" value="1" checked="checked"><label for="opr-map-book-customer-sex-female-{%$tempDataId%}">女士</label><input class="opr-map-book-radio" id="opr-map-book-customer-sex-male-{%$tempDataId%}" type="radio" name="opr-map-book-customer-sex-{%$tempDataId%}" value="0" style="margin-left: 10px;+margin-left:0px;+position:relative;+left:13px;"><label for="opr-map-book-customer-sex-male-{%$tempDataId%}" style="+position:relative;+left:15px;">男士</label> </div> </div> <div class="c-gap-top"> <input class="c-input opr-map-book-input opr-map-book-customer-phone" maxlength="11" placeholder="手机号" data-placeholder="手机号" data-form-type="input" data-type="phone" data-empty="请输入11位手机号" data-error="手机号有误，请重填"> <a class="c-btn opr-map-book-getvcode-btn OP_LOG_BTN" href="#" onclick="return false;" data-click="{fm: 'beha'}" data-ajaxing="发送中...">获取验证码</a> </div> <div class="c-gap-top"> <input class="c-inpu{%*i*%}t opr-map-book-input opr-map-book-vcode" maxlength="10" placeholder="验证码" data-placeholder="验证码" data-form-type="input" data-type="vcode" data-empty="请输入验证码" data-error="验证码有误，请重填"> </div> <div class="c-gap-top opr-map-book-submit-container"> <a class="c-btn c-btn-primary opr-map-book-submit-btn OP_LOG_BTN" href="#" onclick="return false;" data-click="{fm: 'beha'}" data-ajaxing="预订中...">马上预订</a> <a class="opr-map-book-more" href="{%$tplData.referrallinks%}" target="_blank">从更多店铺中挑选&gt;&gt;</a> </div> </div> <div class="opr-map-book-result opr-map-book-result-success c-gap-top"> <div class="opr-map-book-result-success-box"> <i class="c-icon c-icon-right-large"></i> <span></span> </div> <div class="opr-map-book-result-fail-box"> <i class="c-icon c-icon-wrong-large"></i> <span></span> </div> </div></div>{%/foreach%}<script >
    A.setup({
        'srcid':{%$extData.resourceid%}
    });
</script>{%/block%}