{%extends 'c_base.tpl'%} {%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='data_modifier'%}{%if $extData.feData.isLeftImageMode%} {%$extData.feData.leftImage = [src => {%$tplData.icon[0]['src']%}, href => {%$tplData.icon[0]['link']%}]%} {%/if%}{%/block%}{%block name='content'%}<div class="c-border op-baiduworld"> {%fe_fn_c_title_prefix%} {%fe_fn_c_title%} {%fe_fn_c_title_suffix%} <div class="c-row op-baiduworld-topblock"> {%if !$extData.feData.isLeftImageMode%} <div class="c-span6"><a href="{%$tplData.icon[0]['link']%}" target="_blank"><img class="c-boder c-img6" src="{%$tplData.icon[0]['src']%}"/></a></div> {%/if%} <div class="{%if !$extData.feData.isLeftImageMode%}c-span18{%else%}c-span24{%/if%} c-span-last"> {%foreach $tplData.paragraph as $item%} <p>{%$item%}</p> {%/foreach%} {%foreach $tplData.hyperlink as $item%} <a class="op-baiduworld-link" target="_blank" href="{%$item.link%}">{%$item.text%}</a> {%/foreach%} {%if $tplData.playbutton[0].link%} <a class="c-btn c-btn-primary op-baiduworld-btn" target="_blank" href="{%$tplData.playbutton[0].link%}"><i class="c-icon op-baiduworld-icon"></i>立即播放</a> {%/if%} </div> </div> <div class="c-row op-baiduworld-gap"></div> <h3 class="t"> <a target="_blank" href="{%$tplData.urlbottom%}">{%$tplData.titlebottom|highlight:0%}</a></h3> <div class="c-gap-top-small"></div> <ul class="c-tabs-nav"> {%foreach $tplData.subtab as $item%} {%if $item@index > 0%}<li class="op-baiduworld-sep c-tabs-nav-sep {%if $item@index ==1%}op-baiduworld-seph{%/if%}"></li>{%/if%} <li class="op-baiduworld-tab c-tabs-nav-li OP_LOG_BTN {%if $item@index==0%}c-tabs-nav-selected{%/if%}" data-index="{%$item@index%}">{%$item|escape:'html'%}</li> {%/foreach%} </ul> <table cellspacing="0" cellpadding="0" class="c-table"> {%foreach $tplData.trs as $item%} <tr class="{%if $item.td1=='时间'%}c-table-nohihead{%/if%} op-baiduworld-tr op-baiduworld-tr{%$item.subtab%} {%if $item.subtab!='0'%}op-baiduworld-trh{%/if%}"> {%if $item.td1=='时间'%}<th width="80">{%$item.td1%}</th>{%else%}<td width="80">{%$item.td1%}</td>{%/if%} {%if $item.td1=='时间'%}<th width="270">{%build_search_url_limit_ubburl content=$item.td2%}</th>{%else%}<td width="270">{%build_search_url_limit_ubburl content=$item.td2%}</td>{%/if%} {%if $item.td1=='时间'%}<th width="110">{%build_search_url_limit_ubburl content=$item.td3%}</th>{%else%}<td width="110">{%build_search_url_limit_ubburl content=$item.td3%}</td>{%/if%} </tr> {%/foreach%}</table> <div class="c-gap-top-small"> {%if $tplData.morelink[0].link && $tplData.morelink[0].text%}<a target="_blank" href="{%$tplData.morelink[0].link%}">{%$tplData.morelink[0].text%}&gt;&gt;</a>{%/if%} </div> {%fe_fn_c_showurl%}</div>{%/block%}