{%extends 'base.tpl'%} {%block name='content'%}<style >.op_tv01_content{width:515px}.op_tv01_tabs,.op_tv01_tabs span,.op_tv01_curtab,.op_tv01_curtab span{background-image:url(http://www.baidu.com/aladdin/img/table/bg.gif)}.op_tv01_tabs,.op_tv01_tab,.op_tv01_curtab,.op_tv01_curtab a,.op_tv01_curtab span,.op_tv01_programs tr td{height:30px;line-height:30px}.op_tv01_tabs .op_tv01_curtab_next,.op_tv01_tabs{background-position:0 -32px;background-repeat:repeat-x}.op_tv01_tabs .op_tv01_curtab_next{padding-left:5px}.op_tv01_tabs{padding-left:10px}.o{%*i*%}p_tv01_tabs img{vertical-align:middle;margin:0 0 0 12px;height:14px}.op_tv01_tabs span{display:inline-block;background-position:0 -67px;padding:2px 2px 0 16px;margin-left:6px}.op_tv01_tabs span span{display:none}.op_tv01_tabs span a,.op_tv01_curtab a{cursor:pointer}.op_tv01_tabs .op_tv01_curtab{display:inline-block;background-color:#fff;background-position:0 -121px;padding:0 0 0 9px}.op_tv01_tabs .op_tv01_curtab span{display:inline-block;background-position:right -121px;padding:0 6px 0 1px;color{%*i*%}:#737373}.op_tv01_tabs .op_tv01_curtab span span{display:inline-block}.op_tv01_tabs .op_tv01_curtab a{color:#000;font-weight:bold}.op_tv01_programs{width:100%;border-collapse:collapse}.op_tv01_programs tr td{border-bottom:1px solid #e6e6e6;padding-left:21px;white-space:nowrap;font-size:13px}.op_tv01_programs tr td.op_tv01_morelink_td{height:18px;line-height:18px;border:0;padding:5px 0 0;font-size:12px}.op_tv01_dropdown,.op_tv01_dragup{color:#77c;outline:0;line-height:20px;cursor:pointer}.op_tv01{%*i*%}_dropdown span,.op_tv01_dragup span{text-decoration:underline}.op_tv01_dropdown b,.op_tv01_dragup b{background-image:url("http://www.baidu.com/aladdin/img/video/nav.gif");float:left;height:12px;margin:3px 3px 0 0;overflow:hidden;width:12px}.op_tv01_dragup b{background-position:0 -12px}.op_tv01_content{font-size:13px;padding-top:3px}</style>{%$FE_GBVAR.wrapper_prefix%} {%fe_fn_title_prefix%}{%fe_fn_title title="{%$tplData.title%}" url="{%$tplData.url%}"%}{%fe_fn_title_suffix title="{%$tplData.title%}" url="{%$tplData.url%}"%}<div class="op_tv01_content"><div class="op_tv01_tabs">{%if $tplData.tvlogo!=""%}<img src="{%$tplData.tvlogo%}"/>{%/if%}{%$loop_maxcount=count($tplData.tab)%}{%for $op_loop_count=0 to 6%}{%if $op_loop_count<$loop_maxcount%}<span class="op_tv01_tab OP_LOG_BTN" data-tabid="{%$tplData.tab[$op_loop_count]['id']%}"><a>{%$tplData.tab[$op_loop_count]['weekday']%}</a><span>{%$tplData.tab[$op_loop_count]['date']%}</span></span>{%else%}{%break%}{%/if%}{%/for%}</div><div class="op_tv01_tables"></div><table>{%$loop_maxcount=count($tplData.program)%}{%for $op_loop_count=0 to 210%}{%if $op_loop_count<$loop_maxcount%}<tr class="op_tv01_t{%$tplData.program[$op_loop_count]['id']%}"><td>{%$tplData.program[$op_loop_count]['time']%}<span style="margin-left:25px;">{%$tplData.program[$op_loop_count]['name']|highlight:0%}</span></td></tr>{%else%}{%break%}{%/if%}{%/for%}</table></div><div style="line-height:13px;margin-top:0px;"><span style="color:#008000;font-size:13px">{%$tplData.showurl%}</span>{%if $tplData.showlamp!=""%} - <a target="_blank" href="http://open.baidu.com/"  class="op_LAMP" ></a>{%/if%}</div>{%$FE_GBVAR.wrapper_suffix%}<script >A.init(function() {var curtab,curtabIndex,curtabNext,__this = this,defaultTabIndex = {%$tplData.curtab%},tabClz = 'op_tv01_tab',curtabClz = 'op_tv01_curtab',curtabnextClz = 'op_tv01_curtab_next',tabs = this.q(tabClz),baidu = A.baidu,dropBtn = {open: {html: '<b></b><span style="color:#00c;"><strong>{%$tplData.showmore[0]['open']%}</strong></span>', clz: 'op_tv01_dropdown'},close: {html: '<b></b><span style="color:#00c;"><strong>{%$tplData.showmore[0]['close']%}</strong></span>', clz: 'op_tv01_dragup'}};function switchTab(tabIndex) {if (curtabIndex && curtabIndex == tabIndex) {return false;}if (curtab) {baidu.dom.removeClass(curtab.tab, curtabClz);baidu.dom.hide(curtab.table);}if (curtabNext) {baidu.dom.removeClass(curtabNext.tab, curtabnextClz);}baidu.array.each(tabEntities, function(tabEntity , i) {var t = tabEntity;var nexttab = tabEntities[i + 1];if (tabEntity.id == tabIndex) {baidu.dom.addClass(tabEntity.tab, curtabClz);baidu.dom.show(tabEntity.ta{%*i*%}ble);curtabIndex = tabEntity.id;curtab = tabEntity;if (nexttab) {baidu.dom.addClass(nexttab.tab, curtabnextClz);curtabNext = nexttab;}}});}var initRowCount = 10;var tabEntities = [];baidu.array.each(tabs, function(tab , i) {var ce = function(name) {return document.createElement(name);};var toggleRows = function(rows , callback) {baidu.array.each(rows, function(r , i) {if (!r.style.visibility || r.style.visibility == 'hidden') {baidu.dom.show(r);r.style.visibility = 'visible';return;}baidu.dom.hi{%*i*%}de(r);r.style.visibility = 'hidden';});callback();};var tabid = tab.getAttribute('data-tabid');var rows = __this.q('op_tv01_t' + tabid);if (!tabid || !rows) {return false;}var table = ce('TABLE');var tbody = ce('TBODY');table.appendChild(tbody);baidu.dom.addClass(table, 'op_tv01_programs');var moreRows = [];baidu.array.each(rows, function(row , i) {tbody.appendChild(row);if (i > initRowCount - 1) {moreRows.push(row);baidu.dom.hide(row);}});if (moreRows.length > 0) {var td = ce('td');baidu.dom.ad{%*i*%}dClass(td, 'op_tv01_morelink_td');td.colSpan = 2;var tr = ce('tr');var a = ce('a');a.innerHTML = dropBtn.open.html;a.hidefocus = true;baidu.dom.addClass(a, dropBtn.open.clz);td.appendChild(a);tr.appendChild(td);tbody.appendChild(tr);baidu.event.on(a, 'click' , function() {toggleRows(moreRows, function() {if (a.className == dropBtn.open.clz) {a.className = dropBtn.close.clz;a.innerHTML = dropBtn.close.html;}else {a.className = dropBtn.open.clz;a.innerHTML = dropBtn.open.html;}});});}var container{%*i*%} = __this.qq('op_tv01_tables');baidu.dom.hide(table);container.appendChild(table);var tabEntity = {id: tabid,tab: tab,table: table,equals: function(o) {return o.id === this.id;},morerows: moreRows};tabEntities.push(tabEntity);baidu.event.on(tabEntity.tab, 'click' , function() {switchTab(tabEntity.id);});});switchTab(defaultTabIndex);});</script>{%/block%}