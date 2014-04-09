{%extends 'c_base.tpl'%} {%block name="data_modifier"%} {%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='content'%}{%* 选中tab index *%}{%$escaped_selectedTid=0%}{%foreach $tplData.tab as $tab%}{%if $tab.text == $tplData.selected[0].tab%}{%$escaped_selectedTid=$tab@index%}{%/if%}{%/foreach%}{%* 文字部分限高 *%}{%$escaped_maxHeight=185%}<style>{%fe_fn_c_css css='tabs'%}.op-baby-examine-label{text-align:center}.op-baby-examine-title{font-size:16px;font-weight:bold;padding-top:10px;line-height:32px;margin:0}.op-baby-examine-link{padding-left:12px;font-weight:normal;font-size:14px;text-decoration:none}.op-baby-examine-ptitle{color:#000;margin:0 0 0 5px;font-size:14px;font-weight:bold;height:28px;line-height:28px}.op-baby-examine-p{visibility:hidden}.op-baby-examine-handle{color:#00c;text-align:center;height:27px;line-height:27px;border-top:1px solid #d9d9d9;backg{%*i*%}round-color:#fafafa;cursor:pointer;display:none}.op-baby-examine-show-handle .op-baby-examine-handle{display:block}.op-baby-examine-content{overflow:hidden;padding:10px 10px 0 10px}.op-baby-examine-collapse .op-baby-examine-content{height:{%$escaped_maxHeight%}px}.op-baby-examine-show-handle .op-baby-examine-content{padding-bottom:10px}.op-baby-examine-jg{display:block;height:4px;font-size:0;overflow:hidden}.op-baby-examine-loading{background:url(http://www.baidu.com/aladdin/img/videoidea/loading_L.gif) no-repeat 50% 50%;height:100px;overflow:hidden}.op-baby-examine-loading *{visibility:hidden}.op-baby-examine-none{padding-top:20px;text-align:center}.op-baby-examine-handle-text{display:inline-block}</style><div class="op-baby-examine"> {%if $tplData.tab.text%}{%* 是否是单个TAB *%} {%$tab=$tplData.tab%} <div class="c-tabs"> <ul class="c-tabs-nav c-tabs-nav-one"> <li class="c-tabs-nav-li c-tabs-nav-selected OP_LOG_BTN" data-click="{fm:'beha'}">{%$tab.text|escape:'html'%}</li> </ul> <div class="c-tabs-content op-baby-examine-panel op-baby-examine-selected-panel"> <div class="op-baby-examine-content"> {%if $tab.title%}<h4 class="op-baby-examine-title">{%$tab.title[0].text|escape:'html'%}{%if $tab.title[0].detailText%}<a href="{%$tab.title[0].detailUrl%}" target="_blank" class="op-baby-examine-link">[{%$tab.title[0].detailText|escape:'html'%}]</a>{%/if%}</h4>{%/if%} {%foreach $tab.p as $p%} {%if $p.title|escape:'html'%}<h5 class="op-baby-examine-ptitle">{%$p.title|escape:'html'%}</h5>{%/if%} <p class="op-baby-examine-p">{%$p.content|escape:'html'%}</p> {%/foreach%} </div> <div class="op-baby-examine-handle OP_LOG_BTN" data-click="{fm:'beha'}"> <span class="op-baby-examine-handle-text">显示完整内容</span> <i class="c-icon c-icon-chevron-bottom"></i> </div> </div> </div> {%else%} <div class="c-tabs"> <ul class="c-tabs-nav"> {%foreach $tplData.tab as $tab%} {%if !$tab@first%}<li class="c-tabs-nav-sep"></li>{%/if%} <li class="c-tabs-nav-li OP_LOG_BTN" data-click="{fm:'beha'}">{%$tab.text|escape:'html'%}</li> {%/foreach%} </ul> {%foreach $tplData.tab as $tab%} {%if $tab@index != $escaped_selectedTid%} <div class="c-tabs-content op-baby-examine-panel"> <div class="op-baby-examine-content"></div> <div class="op-baby-examine-handle OP_LOG_BTN" data-click="{fm:'beha'}"> <span class="op-baby-examine-handle-text">显示完整内容</span> <i class="c-icon c-icon-chevron-bottom"></i> </div> </div> {%continue%} {%else%} <div class="c-tabs-content op-baby-examine-panel op-baby-examine-selected-panel"> <div class="op-baby-examine-content"> {%if $tab.title%}<h4 class="op-baby-examine-title">{%$tab.title[0].text|escape:'html'%}{%if $tab.title[0].detailText%}<a href="{%$tab.title[0].detailUrl%}" target="_blank" class="op-baby-examine-link">[{%$tab.title[0].detailText|escape:'html'%}]</a>{%/if%}</h4>{%/if%} {%foreach $tab.p as $p%} {%if $p.title|escape:'html'%}<h5 class="op-baby-examine-ptitle">{%$p.title|escape:'html'%}</h5>{%/if%} <p class="op-baby-examine-p">{%$p.content|escape:'html'%}</p> {%/foreach%} </div> <div class="op-baby-examine-handle OP_LOG_BTN" data-click="{fm:'beha'}"> <span class="op-baby-examine-handle-text">显示完整内容</span> <i class="c-icon c-icon-chevron-bottom"></i> </div> </div> {%/if%} {%/foreach%} </div> {%/if%}</div><script >
  A.setup({
    'maxHeight':'{%$escaped_maxHeight%}',
    'selectedTid':'{%$escaped_selectedTid%}',
    'srcid':'{%$extData.resourceid%}',
    'q':'{%str_replace($extData.resourceid|cat:'_','',$extData.fetchkey)|escape:'html'|escape:'javascript'%}'
  });
</script><script>A.setup(function(){var _this = this,_e = function(str) {var s = ""; if (str.length == 0) return ""; s = str.replace(/&/g, "&gt;"); s = s.replace(/</g, "&lt;"); s = s.replace(/>/g, "&gt;"); s = s.replace(/ /g, "&nbsp;"); s = s.replace(/\'/g, "&apos"); s = s.replace(/\"/g, "&quot;"); s = s.replace(/\n/g, "<br>"); return s;};A.use('jquery,tabs5', function(){var loaded = new Array(10);loaded[_this.data.selectedTid] = true;A.ui.tabs5(_this.find('.c-tabs').get(0), { toggleSep:true, cu{%*i*%}rrent:_this.data.selectedTid, onChange:function(cn, cc){if (loaded[cn]) {return; }var $cc = $(cc);var t = $cc.closest('.c-tabs').find('.c-tabs-nav-li').eq(cn).text();$cc.addClass('op-baby-examine-loading');_this.ajax(_this.data.q, _this.data.srcid, {co:$.format('tab[text=#{0}]',$.trim(t)),success:function(data) {var d;if(!data[0] || !data[0].tab || !data[0].tab[0]){$cc.find('.op-baby-examine-content').html('<p class="op-baby-examine-none">暂无信息</p>');$cc.removeClass('op-baby-examine-loading');ret{%*i*%}urn;}d=data[0].tab[0];$cc.find('.op-baby-examine-content').html(build(d));$cc.removeClass('op-baby-examine-loading');init_height($cc);loaded[cn] = true;}});}});function handle($panel, init){$panel.toggleClass('op-baby-examine-collapse');if($panel.hasClass('op-baby-examine-collapse')){if(!init){var top = $('.op-baby-examine').offset().top;var scrollTop = $('html').scrollTop() || $('body').scrollTop();if(top<scrollTop){$('html,body').animate({scrollTop: top-36}, 'fast', 'linear');}}$panel.find('.o{%*i*%}p-baby-examine-handle-text').text('显示完整内容');$panel.find('.c-icon-chevron-top').removeClass('c-icon-chevron-top').addClass('c-icon-chevron-bottom');}else{$panel.find('.op-baby-examine-handle-text').text('收起');$panel.find('.c-icon-chevron-bottom').removeClass('c-icon-chevron-bottom').addClass('c-icon-chevron-top');}}function build(d){var s = [],p = d.p,t = d.title;if(t) {if (t.detailText && t.detailUrl) {s.push($.format('<h4 class="op-baby-examine-title">#{0}<a href="#{1}" target="_blank" class="o{%*i*%}p-baby-examine-link">[#{1}]</a></h4>',_e(t.text), _e(t.detailText), _e(t.detailUrl)));} else {s.push($.format('<h4 class="op-baby-examine-title">#{0}</h4>', _e(t.text)));}}$.each(p, function(v){if(v.title) {s.push($.format('<h5 class="op-baby-examine-ptitle">#{0}</h5>', _e(v.title)));}s.push($.format('<p class="op-baby-examine-p" style="visibility:visible">#{0}</p>', parse(_e(v.content))));});return s.join('');}function parse(str){str = str.replace(/\\n/g,'<br/><span class="op-baby-examine-jg"></s{%*i*%}pan>');str = str.replace(/\[url\](.*?)\[\/url\]/g,'<a href="$1" target="_blank" class="OP_LOG_LINK">$1</a>');return str;}function init_height($panel){var height = $panel.find('.op-baby-examine-content').height();if(height>_this.data.maxHeight) {$panel.addClass('op-baby-examine-show-handle');handle($panel,true);}}$('.op-baby-examine-p').each(function(){var html = $(this).html();$(this).html(parse(html)).css('visibility','visible');});init_height($('.op-baby-examine-selected-panel'));$('.op-baby-e{%*i*%}xamine').delegate('.op-baby-examine-handle', 'click', function(){var $panel = $(this).closest('.op-baby-examine-panel');handle($panel);});});});</script>{%/block%}