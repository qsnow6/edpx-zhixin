{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style >.op_tv02{margin-top:9px;font-size:13px;width:515px}.op_tv02_curchannel,.op_tv02_curchannel a,.op_tv02_dropdown b,.op_tv02_dragup b,.op_tv02_bar,.op_tv02_channeltitle,.op_tv02_tabs,.op_tv02_tabs span,.op_tv02_curtab,.op_tv02_curtab span{background-image:url(http://www.baidu.com/aladdin/img/table/bg.gif)}.op_tv02_channeltitle{background-position:0 -164px;background-repeat:repeat-x;padding-left:4px}.op_tv02_tabs,.op_tv02_tab,.op_tv02_curtab,.op_tv02_curtab a,.op_tv02_curtab span,.op_tv02_dr{%*i*%}op{height:30px;line-height:30px}.op_tv02_programs tr td{border-bottom:1px solid #e6e6e6;padding-left:12px;white-space:nowrap;line-height:30px;height:30px;font-size:13px;font-family:'Arial'}.op_tv02_channel_container{padding-bottom:6px}.op_tv02_channel_dropable{height:59px;overflow:hidden}.op_tv02_channel_container_full{height:auto;overflow:auto}.op_tv02_channels span{padding-left:4px;margin:5px 14px 0 0;height:24px;line-height:23px;font-size:13px;display:inline-block}.op_tv02_channels .op_tv02_c{%*i*%}urchannel{background-position:0 -7px}.op_tv02_channels a{display:inline-block;padding-right:4px;cursor:pointer;color:#00C}.op_tv02_channels .op_tv02_curchannel a{background-position:right -7px;color:#000}.op_tv02_tabs .op_tv02_curtab_next,.op_tv02_tabs{background-position:0 -32px;background-repeat:repeat-x}.op_tv02_tabs{padding-left:10px}.op_tv02_tabs img{vertical-align:middle;margin:0 0 0 12px;height:14px}.op_tv02_tabs span{display:inline-block;background-position:0 -67px;padding:2px 2px 0 16px{%*i*%};margin-left:6px}.op_tv02_tabs span span{display:none}.op_tv02_tabs span a,.op_tv02_curtab a{cursor:pointer}.op_tv02_tabs .op_tv02_curtab{display:inline-block;background-color:#fff;background-position:0 -121px;padding:0 0 0 9px}.op_tv02_tabs .op_tv02_curtab_next{padding-left:5px}.op_tv02_tabs .op_tv02_curtab span{display:inline-block;background-position:right -121px;padding:0 6px 0 1px;color:#737373}.op_tv02_tabs .op_tv02_curtab span span{display:inline-block}.op_tv02_tabs .op_tv02_curtab a{colo{%*i*%}r:#000;font-weight:bold}.op_tv02_bar{font-size:1px;height:4px;border:0;margin:0;background-repeat:repeat-x}.op_tv02_drop,.op_tv02_higher_drop{border-top:1px solid #e6e6e6;position:relative}.op_tv02_drop{height:14px}.op_tv02_heigher_drop{height:18px}.op_tv02_drop a{display:inline-block;height:17px;line-height:17px;padding:0 8px;border:1px solid #e6e6e6;border-top-color:#fff;cursor:pointer;float:right;position:absolute;top:-1px;right:14px}.op_tv02_dropdown,.op_tv02_dragup{text-decoration:none;colo{%*i*%}r:#77C;font-size:12px;outline:0}.op_tv02_dropdown span,.op_tv02_dragup span{float:left}.op_tv02_dropdown b,.op_tv02_dragup b{display:inline-block;width:12px;height:14px;margin-right:8px;*margin-top:-1px;float:left}.op_tv02_dropdown b{background-position:0 -101px}.op_tv02_dragup b{background-position:-12px -101px}.op_tv02_programs{width:100%;border-collapse:collapse}.op_tv02_programs tr td.op_tv02_morelink_td{line-height:18px;height:18px;border:0;padding:5px 0 0}.op_tv02_morelink_td a{text-decora{%*i*%}tion:underline}.op_tv02_dropdown a,.op_tv02_dragup a{color:#77C;font-size:12px;float:left}</style> {%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_tv02"><div class="op_tv02_channel_container op_tv02_channel_container_js"><div class="op_tv02_bar"></div><div class="op_tv02_channels">{%$loop_maxcount=count($tplData.channel)%}{%for $op_loop_count=0 to 40%}{%if $op_loop_count<$loop_maxcount%} <span class="op_tv02_channel" data-cid="{%$tplData.channel[$op_loop_count]['id']%}"><a class="op_tv02_dl">{%$tplData.channel[$op_loop_count]['name']%}</a></span>{%else%}{%break%}{%/if%}{%/for%}</div></div><div class="op_tv02_drop"><a class="op_tv02_dropdown op_tv02_dl op_tv02_channel_drop_btn_js" style="display:none"><b></b><span>{%$tplData.showallchannel[0]['open']%}</span></a></div><div style="clear:both"></div><div class="OP_LOG_BTN op_tv02_tabs_container_js"></div><div class="op_tv02_tables_js"></div><table class="op_tv02_programs_js" ></table></div>{%if $tplData.showurl!=""%}<div style="font-size:13px">{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div>{%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}<script >
     var op_tv02_curchannel = '{%if $tplData.curchannel!=""%}{%$tplData.curchannel%}{%/if%}',
     op_tv02_curtab = '{%if $tplData.curtab!=""%}{%$tplData.curtab%}{%/if%}',
     op_tv02_p_open = '{%$tplData.showmore[0]['open']%}',
     op_tv02_p_close = '{%$tplData.showmore[0]['close']%}',
     op_tv02_c_open = '{%$tplData.showallchannel[0]['open']%}',
     op_tv02_c_close = '{%$tplData.showallchannel[0]['close']%}',
     op_tv02_logo = '{%if $tplData.tvlogo!=""%}{%$tplData.tvlogo%}{%/if%}',
     op_tv02_tpl = '<div class="op_tv02_tabs op_tv02_tabs_for_channel#{channel}"><img src="#{logo}"/>{%$loop_maxcount=count($tplData.tab)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%} <span class="op_tv02_tab" data-tabid="{%$tplData.tab[$op_loop_count]['id']%}" data-channelid="#{channelid}"><a class="op_tv02_dl">{%$tplData.tab[$op_loop_count]['day']%}</a><span>{%$tplData.tab[$op_loop_count]['date']%}</span></span>{%else%}{%break%}{%/if%}{%/for%}</div>',
     op_tv02_programArray = [
        {%$loop_maxcount=count($tplData.program)%}{%for $op_loop_count=0 to 400%}{%if $op_loop_count<$loop_maxcount%}
    {'title': '{%$tplData.program[$op_loop_count]['title']|highlight:0%}', 'time': '{%$tplData.program[$op_loop_count]['time']%}', 'tab': '{%$tplData.program[$op_loop_count]['tab']%}', 'channel': '{%$tplData.program[$op_loop_count]['channel']%}'},
        {%else%}{%break%}{%/if%}{%/for%}{}
     ];
</script><script >A.init(function() {var __this = this,baidu = A.baidu,showTodayPrograms = true, defaultChannelIndex = window.op_tv02_curchannel || 1,defaultTabIndex = window.op_tv02_curtab || 1,curTabIndex, curtab, curtabIndex, curtabNext,curchannel, curchannelIndex, curchannelNext,channelClz = 'op_tv02_channel',curchannelClz = 'op_tv02_curchannel',tabClz = 'op_tv02_tab',curtabClz = 'op_tv02_curtab',curtabnextClz = 'op_tv02_curtab_next',channels = baidu.Q(channelClz),tabs = baidu.Q(tabClz);op_t{%*i*%}v02_programArray.pop();var oTable = __this.qq('op_tv02_programs_js');baidu.each(op_tv02_programArray, function(el, i ) {var oTr = document.createElement('tr');oTr.setAttribute('data-cid', 'op_tv02_programArray[i].channel');oTr.setAttribute('data-tid', 'op_tv02_programArray[i].tab');oTr.className = 'op_tv02_c' + op_tv02_programArray[i].channel + '_t' + op_tv02_programArray[i].tab;var oTd = document.createElement('td');oTd.innerHTML = op_tv02_programArray[i].time + '<span style="margin-left:25px;"{%*i*%}>' + op_tv02_programArray[i].title + '</span>';oTr.appendChild(oTd);oTable.appendChild(oTr);});var dropBtn = {open: {html: '<b></b><span>' + op_tv02_c_open + '</span>', clz: 'op_tv02_dropdown'},close: {html: '<b></b><span>' + op_tv02_c_close + '</span>', clz: 'op_tv02_dragup'}};var moreBtn = {open: {html: '<b></b><a href="javascript:;">' + op_tv02_p_open + '<a>', clz: 'op_tv02_dropdown'},close: {html: '<b></b><a href="javascript:;">' + op_tv02_p_close + '</a>', clz: 'op_tv02_dragup'}};var channe{%*i*%}lDropBtn = __this.qq('op_tv02_channel_drop_btn_js');setTimeout(function() {var channelContainer = __this.qq('op_tv02_channel_container_js'),channelDropBtn = __this.qq('op_tv02_channel_drop_btn_js'),p = channelDropBtn.parentNode,dropClz = 'op_tv02_drop',heigherDropClz = 'op_tv02_heigher_drop',h = 72;if (channelContainer.scrollHeight > h) {baidu.dom.addClass(channelContainer, 'op_tv02_channel_dropable');baidu.dom.show(channelDropBtn);baidu.dom.addClass(p, heigherDropClz);}else {baidu.dom.hide(chan{%*i*%}nelDropBtn);baidu.dom.addClass(p, dropClz);}},1);baidu.event.on(channelDropBtn, 'click' , function() {var btn = this,c = __this.qq('op_tv02_channel_container_js'),clz = 'op_tv02_channel_container',fClz = clz + '_full';if (baidu.dom.hasClass(c, clz)) {baidu.dom.removeClass(c, clz);baidu.dom.addClass(c, fClz);btn.className = dropBtn.close.clz;btn.innerHTML = dropBtn.close.html;}else {baidu.dom.removeClass(c, fClz);baidu.dom.addClass(c, clz);btn.className = dropBtn.open.clz;btn.innerHTML = dropBtn.{%*i*%}open.html;}});function switchTab(channelid , tabIndex ) {var channel = channelEntities[channelid],curtabIndex = channel.curtabindex,curtab = channel.curtab,curtabNext = channel.curtabNext;if (curtabIndex && curtabIndex == tabIndex) {return false;}if (curtab) {baidu.dom.removeClass(curtab.tab, curtabClz);baidu.dom.hide(curtab.table);}if (curtabNext) {baidu.dom.removeClass(curtabNext.tab, curtabnextClz);}baidu.array.each(channel.tabs, function(tabEntity , i ) {var t = tabEntity,nexttab = channel.t{%*i*%}abs[i + 1];if (tabEntity.id == tabIndex) {baidu.dom.addClass(tabEntity.tab, curtabClz);baidu.dom.show(tabEntity.table);channel.curtabindex = tabEntity.id;channel.curtab = tabEntity;curTabIndex = tabIndex;if (nexttab) {baidu.dom.addClass(nexttab.tab, curtabnextClz);channel.curtabNext = nexttab;}}});}function switchChannel(channelid ) {if (curchannelIndex && curchannelIndex == channelid) {return false;}if (curchannel) {baidu.dom.removeClass(curchannel.channel, curchannelClz);curchannel.hide();}var{%*i*%} channelEntity = channelEntities[channelid];baidu.dom.addClass(channelEntity.channel, curchannelClz);curchannel = channelEntity;curchannelIndex = channelEntity.id;if (showTodayPrograms) {switchTab(curchannelIndex, defaultTabIndex);}else {switchTab(curchannelIndex, curTabIndex ? curTabIndex : defaultTabIndex);}channelEntity.show();}var initRowCount = 5, channelEntities = {},tpl = window.op_tv02_tpl,logo = window.op_tv02_logo;var buildTable4Tab = function(tab , channelid ) {var me = tab;var tabEnt{%*i*%}ities = [];var ce = function(name ) {if (!name) return false;return document.createElement(name);};var toggleRows = function(rows , callback ) {if (!rows) return false;baidu.array.each(rows, function(r , i ) {if (!r.style.visibility || r.style.visibility == 'hidden') {baidu.dom.show(r);r.style.visibility = 'visible';}else {baidu.dom.hide(r);r.style.visibility = 'hidden';}});if (callback) {callback();}};var tabid = me.getAttribute('data-tabid');var rows = baidu.Q('op_tv02_c' + channelid + '_t' + {%*i*%}tabid);if (!tabid || !rows) return false;var table = ce('TABLE');var tbody = ce('TBODY');table.appendChild(tbody);baidu.dom.addClass(table, 'op_tv02_programs');var moreRows = [];baidu.array.each(rows, function(row , i ) {tbody.appendChild(row);if (i > initRowCount - 1) {moreRows.push(row);baidu.dom.hide(row);}});if (moreRows.length > 0) {var td = ce('td');baidu.dom.addClass(td, 'op_tv02_morelink_td');td.colSpan = 2;var tr = ce('tr');var span = ce('span');span.innerHTML = moreBtn.open.html;baidu.{%*i*%}dom.addClass(span, moreBtn.open.clz);td.appendChild(span);tr.appendChild(td);tbody.appendChild(tr);baidu.event.on(span, 'click' , function() {var me = span;toggleRows(moreRows, function() {if (me.className == moreBtn.open.clz) {me.className = moreBtn.close.clz;me.innerHTML = moreBtn.close.html;}else {me.className = moreBtn.open.clz;me.innerHTML = moreBtn.open.html;}});});}var container = __this.qq('op_tv02_tc_for_c' + channelid);baidu.dom.hide(table);container.appendChild(table);var tabEntity = {%*i*%}{id: tabid,tab: me,table: table,tableContainer: container,text: tab.getElementsByTagName('a')[0].innerHTML,equals: function(o ) {return o.id === this.id;},morerows: moreRows};return tabEntity;};var tempHTML = '';baidu.array.each(channels, function(ch , i ) {var me = ch,id = me.getAttribute('data-cid');tempHTML += baidu.string.format(tpl, {channel: id, logo: logo, channelid: id});});__this.qq('op_tv02_tabs_container_js').innerHTML += tempHTML;baidu.array.each(channels, function(ch , i ) {var me ={%*i*%} ch,tabWrapper = __this.qq('op_tv02_tabs_container_js'),id = me.getAttribute('data-cid'),tabContainer = __this.qq('op_tv02_tabs_for_channel' + id);baidu.dom.hide(tabContainer);var tabs = baidu.Q('op_tv02_tab', tabContainer),img = tabContainer.getElementsByTagName('img')[0];baidu.event.on(me, 'click' , function() {switchChannel(id);});var tabEntities = [];var tableContainer = document.createElement('div');tableContainer.className = 'op_tv02_tc_for_c' + id;var tableWrapper = __this.qq('op_tv02_tab{%*i*%}les_js');tableWrapper.appendChild(tableContainer);baidu.array.each(tabs, function(tab , i ) {var me = tab;var tabEntity = buildTable4Tab(me, id);if (tabEntity) {tabEntities.push(tabEntity);}});baidu.array.each(tabEntities, function(tabEntity ,i ) {var channelid = id;var me = tabEntity;baidu.event.on(me.tab, 'click' , function() {switchTab(channelid, me.id);});});var channelEntity = {channel: me,id: id,tabContainer: tabContainer,tableContainer: tableContainer,tabs: tabEntities,hide: function() {b{%*i*%}aidu.dom.hide(this.tabContainer);baidu.dom.hide(this.tableContainer);},show: function() {baidu.dom.show(this.tabContainer);baidu.dom.show(this.tableContainer);}};channelEntities[channelEntity.id] = channelEntity;});switchChannel(defaultChannelIndex);});</script>{%/block%}