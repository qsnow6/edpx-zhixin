{%extends 'c_base.tpl'%} {%block name='content'%}<style data-merge>{%fe_fn_c_css css='table'%}{%fe_fn_c_css css='tabs'%}{%fe_fn_c_css css='img'%}.op_cjdinner{font-size:1em}.op_cjdinner_cursubtab{margin-top:-1px}.op_cjdinner_cursubli{height:20px;line-height:20px;padding:0 5px;position:static;margin:0 10px;border:none 0;cursor:pointer;white-space:nowrap}.op_cjdinner_dishes div div{display:inline-block;margin:6px 0 0 0;*float:left;text-align:center;position:relative}.op_cjdinner_dishes div div a,.op_cjdinner_dishes a img{width:80px;height:80px}.op_cjdinner_dishes div div a{display:inline-block;padding:1px}.op_cjdinner_dishes div div span{di{%*i*%}splay:inline-block;width:97px;text-align:center}.op_cjdinner_dishes div div span a{height:24px;line-height:24px;width:100%;border:0;text-decoration:none}.op_cjdinner_dishes div div span a:hover{text-decoration:none}.op_cjdinner_tabs span span{display:none}.op_cjdinner_tabs span a,.op_cjdinner_curtab a{cursor:pointer}.op_cjdinner_tabs .op_cjdinner_curtab_next{padding-left:8px}.op_cjdinner_tabs .op_cjdinner_curtab span span{display:inline-block}.op_cjdinner_link{font-size:1em}.op_cjdinner_dishes .{%*i*%}op-cj-dinner-stip1,.op_cjdinner_dishes .op-cj-dinner-stip2,.op_cjdinner_dishes .op-cj-dinner-stip3{position:absolute;display:block;bottom:24px;height:20px;line-height:20px;width:78px;left:9px;color:#fff;cursor:pointer;text-decoration:none}.op_cjdinner_dishes .op-cj-dinner-stip1{background:#f54545}.op_cjdinner_dishes .op-cj-dinner-stip2{background:#ffba1a}.op_cjdinner_dishes .op-cj-dinner-stip3{background:#58b858}</style><div class="c-border"><div class="c-tabs op_cjdinner"><ul class="op_cjdinner{%*i*%}_tabs c-tabs-nav c-tabs-nav-movetop  OP_LOG_BTN">{%$loop_maxcount=count($tplData.tab)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} <li class="op_cjdinner_tab c-tabs-nav-li" data-cid="{%$tplData.tab[$op_loop_count]['id']|escape:'html'%}"><a class="op_cjdinner_dl OP_LOG_BTN">{%$tplData.tab[$op_loop_count]['text']|escape:'html'%}</a></li>{%else%}{%break%}{%/if%}{%/for%}</ul>{%$loop_maxcount=count($tplData.tab)%}{%for $op_loop_count=0 to 4%}{%if $op_loop_count<$loop_maxcount%} <div class="c-tabs c-tabs-content op_cjdinner_con_{%$tplData.tab[$op_loop_count]['id']|escape:'html'%}"><ul class="op_cjdinner_subtabs c-tabs-nav"></ul><div class="op_cjdinner_dishes"></div></div>{%else%}{%break%}{%/if%}{%/for%}<div style="display:none">{%$loop_maxcount=count($tplData.subtab)%}{%for $op_loop_count=0 to 19%}{%if $op_loop_count<$loop_maxcount%} <a href="javascript:;" class="op_cjdinner_cursubli c-tabs-nav-li op_cjdinner_dl op_cjdinner_subtab_t{%$tplData.subtab[$op_loop_count]['tab']|escape:'html'%}" data-sid="{%$tplData.subtab[$op_loop_count]['id']|escape:'html'%}"><span>{%$tplData.subtab[$op_loop_count]['text']|escape:'html'%}</span></a><p class="op_cjdinner_moredishes_s{%$tplData.subtab[$op_loop_count]['id']|escape:'html'%}" style="clear:both;display:none;margin:0px;width:auto;">{%if $tplData.subtab[$op_loop_count]['linkcontent']%}<a style="border:none;height:20px;display:inline;" href="{%$tplData.subtab[$op_loop_count]['linkurl']|escape:'html'%}" target="_blank" class="op_cjdinner_dl c-gap-right">{%$tplData.subtab[$op_loop_count]['linkcontent']|escape:'html'%}</a>{%/if%}{%if $tplData.subtab[$op_loop_count]['linkcontent1']%}<a style="border:none;height:20px;display:inline;" href="{%$tplData.subtab[$op_loop_count]['linkurl1']|escape:'html'%}" target="_blank" class="op_cjdinner_dl c-gap-right">{%$tplData.subtab[$op_loop_count]['linkcontent1']|escape:'html'%}</a>{%/if%}{%if $tplData.subtab[$op_loop_count]['linkcontent2']%}<a style="border:none;height:20px;display:inline;" href="{%$tplData.subtab[$op_loop_count]['linkurl2']|escape:'html'%}" target="_blank" class="op_cjdinner_dl c-gap-right">{%$tplData.subtab[$op_loop_count]['linkcontent2']|escape:'html'%}</a>{%/if%}</p>{%else%}{%break%}{%/if%}{%/for%}</div><div style="display:none">{%$loop_maxcount=count($tplData.dishes)%}{%for $op_loop_count=0 to 199%}{%if $op_loop_count<$loop_maxcount%} <div class="op_cjdinner_dish_c{%$tplData.dishes[$op_loop_count]['tab']|escape:'html'%}_s{%$tplData.dishes[$op_loop_count]['subtab']|escape:'html'%}" data-cid="{%$tplData.dishes[$op_loop_count]['tab']|escape:'html'%}" data-tid="{%$tplData.dishes[$op_loop_count]['subtab']|escape:'html'%}"><a href="{%$tplData.dishes[$op_loop_count]['link']|escape:'html'%}" target="_blank" class="op_cjdinner_dil"><img src="{%$tplData.dishes[$op_loop_count]['img']|escape:'html'%}"/></a><br/><span><a href="{%$tplData.dishes[$op_loop_count]['link']|escape:'html'%}" target="_blank" class="op_cjdinner_dl">{%$tplData.dishes[$op_loop_count]['text']|escape:'html'%}</a></span> {%if $tplData.dishes[$op_loop_count]['tip']%} <a href="{%$tplData.dishes[$op_loop_count]['tiphref']|escape%}" title="{%$tplData.dishes[$op_loop_count]['tiptitle']%}" target="_blank" class="op-cj-dinner-stip{%$tplData.dishes[$op_loop_count]['tip']%}">{%if $tplData.dishes[$op_loop_count]['tip']==1%}孕妇忌食{%elseif $tplData.dishes[$op_loop_count]['tip']==2%}孕妇慎食{%elseif $tplData.dishes[$op_loop_count]['tip']==3%}孕妇宜食{%/if%}</a> {%/if%}</div>{%else%}{%break%}{%/if%}{%/for%}</div></div></div><script >var op_cjdinner_curtab = '{%if $tplData.curtab%}{%$tplData.curtab|escape:'html'%}{%/if%}', subtabShow = '{%$tplData.showsubtab|escape:'html'%}';
</script><script >A.init(function() {var _this = this;var curtab = op_cjdinner_curtab || '1';var curtabEntity;var defaultSubtab = '1';var ce = function(name) {return document.createElement(name);};var tabClz = '.op_cjdinner_tab';var tabs = _this.find(tabClz);var tabEntities = [];$.each(tabs, function(i , tab) {var tabid = tab.getAttribute('data-cid');var subtabs = _this.find('.op_cjdinner_subtab_t' + tabid);var container = _this.find('.op_cjdinner_con_' + tabid).eq(0);var subtabContainer = conta{%*i*%}iner.find('.op_cjdinner_subtabs')[0];var dishesContainer = container.find('.op_cjdinner_dishes')[0];var currentSubtabId, currentSubtab;var tabEntity = {tab: tab,tabid: tabid,container: container,subtabContainer: subtabContainer,dishesContainer: dishesContainer,currentSubtab: currentSubtab,currentSubtabId: currentSubtabId};$.each(subtabs, function(i , subtab) {$(subtab).addClass('OP_LOG_BTN');subtabContainer.appendChild(subtab);var subtabid = subtab.getAttribute('data-sid');var div = ce('div');di{%*i*%}v.id = 'op_cj_dinner_dishes_s' + subtabid;$(div).addClass('op_cj_dinner_dishes');var dishes = _this.find('.op_cjdinner_dish_c' + tabid + '_s' + subtabid);$.each(dishes, function(i , dish) {$(div).append(dish);});$(dishesContainer).append(div);var moredishesDiv = _this.find('.op_cjdinner_moredishes_s' + subtabid).eq(0);if (moredishesDiv.length) {$(div).append(moredishesDiv);moredishesDiv.show();}var subtabEntity = {tab: subtab,id: subtabid,container: div};if (i > 0) {$(div).hide();}else {switchSu{%*i*%}btab(subtabEntity, tabEntity);}$(subtab).on('click', function() {switchSubtab(subtabEntity, tabEntity);});});tabEntities.push(tabEntity);});$.each(tabEntities, function(i,te) {if (te.tabid != curtab) {$(te.container).hide();}else {switchTab(te);}$(te.tab).on('click' , function() {switchTab(te);});});function switchTab(tabEntity) {if (curtabEntity && curtabEntity.tabid == tabEntity.tabid) return false;if (curtabEntity) {$(curtabEntity.container).hide();$(curtabEntity.tab).removeClass('op_cjdinner{%*i*%}_curtab c-tabs-nav-selected');$(tabEntity.container).show();$(tabEntity.tab).addClass('op_cjdinner_curtab c-tabs-nav-selected');}else {curtabEntity = tabEntity;$(tabEntity.container).show();$(tabEntity.tab).addClass('op_cjdinner_curtab c-tabs-nav-selected');}curtabEntity = tabEntity;switchSubtab(tabEntity.currentSubtab, tabEntity);var nextClz = 'op_cjdinner_curtab_next';$.each(tabEntities, function(i ,te ) {$(te.tab).removeClass(nextClz);});$.each(tabEntities, function(i ,te ) {var next = tabEnt{%*i*%}ities[i + 1];if (te.tabid == curtabEntity.tabid) {if (next) {$(next.tab).addClass(nextClz);}}});}function switchSubtab(subtabEntity ,parent) {if (!parent.currentSubtab) {parent.currentSubtab = subtabEntity;parent.currentSubtabId = subtabEntity.id;$(subtabEntity.tab).addClass('op_cjdinner_cursubtab c-tabs-nav-selected');$(subtabEntity.container).show();return false;}if (subtabEntity.id == parent.currentSubtab.id) return false;$(parent.currentSubtab.container).hide();$(parent.currentSubtab.tab).re{%*i*%}moveClass('op_cjdinner_cursubtab c-tabs-nav-selected');$(subtabEntity.container).show();$(subtabEntity.tab).addClass('op_cjdinner_cursubtab c-tabs-nav-selected');parent.currentSubtab = subtabEntity;parent.currentSubtabId = subtabEntity.id;}if (!subtabShow) {$.each(_this.find('.op_cjdinner_subtabs') , function(i ,subtabstate ) {$(subtabstate).hide();});}});</script>{%/block%}