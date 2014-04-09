{%extends 'base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}{%if $tplData.displayUrl%}<h3 class="op_chinavoice_step_title op_chinavoice_step_linktitle"> <a href="{%$tplData.url%}" target="_blank">{%$tplData.title|highlight:0%}</a></h3>{%else%}<h3 class="op_chinavoice_step_title">{%$tplData.title|highlight:0%}</h3>{%/if%}<div class="c-gap-top op_chinavoice_step c-gap-bottom-small"> {%$listLength = $tplData.step|@count%} {%$WIDTH = 124%} {%foreach $tplData.step as $item%} {%if $item.status == '2'%} {%$curIndex = $item@index%} {%/if%} {%/foreach%} {%if isset($curIndex)%} {%if ( $listLength - $curIndex ) < 2%} {%$mLeft = ( $listLength - 4 ) * $WIDTH%} {%elseif $curIndex <= 1%} {%$mLeft = 0%} {%else%} {%$mLeft = ( $curIndex - 2 ) * $WIDTH%} {%/if%} {%else%} {%$mLeft = 0%} {%/if%} {%if $tplData.step[0]['status']==2 || $tplData.step[1]['status']==2 || $tplData.step[2]['status']==2%} {%$tempDataPreEnd=1%} {%/if%} {%if $tplData.step[$listLength-1]['status']==2 || $tplData.step[$listLength-2]['status']==2%} {%$tempDataNextEnd=1%} {%/if%} <a href="javascript:;" hidefocus="true" class="op_chinavoice_step_pre{%if $tempDataPreEnd%} op_chinavoice_step_pre_end{%/if%} OP_LOG_BTN"><i></i></a> <div class="op_chinavoice_step_box"> <ul class="op_chinavoice_step_wrap" style="width:{%$WIDTH*$listLength|escape%}px;left: -{%$mLeft|escape%}px;"> {%foreach $tplData.step as $item%} {%if $item.status == '1'%} {%$classname = 'op_chinavoice_step_past'%} {%elseif $item.status == '2'%} {%$classname = 'op_chinavoice_step_present'%} {%else%} {%$classname = 'op_chinavoice_step_future'%} {%/if%} {%if $item.param%} {%$itemUrl = {%build_search_url params="`$item.param`"%}%} {%elseif $item.href%} {%$itemUrl = $item.href%} {%else%} {%$itemUrl = false%} {%/if%} <li class="{%$classname|escape:'html'%}"> <span class="op_chinavoice_step_suptext">{%$item.text%}</span> {%if $item.status == '2'%} <div class="op_chinavoice_step_prebg"></div> {%/if%} <div class="op_chinavoice_step_line"></div> <div class="op_chinavoice_step_dot"></div> <a {%if $item.status==3%}onclick="return false;"{%/if%} href="{%if $item.status==3%}javascript:;{%else%}{%$itemUrl%}{%/if%}" title="{%$item.subtext|escape%} {%$item.subtext2|escape%}" hidefocus="true" target="_blank" class="op_chinavoice_step_subtext{%if $item.subtext2&&$item.status!=3%} op_chinavoice_step_subtext2{%/if%}"> {%if $item.subtext2&&$item.status!=3%} <div class="op_chinavoice_step_arrow_top"><span class="op_chinavoice_step_arrow_top_out">◆</span><span class="op_chinavoice_step_arrow_top_in">◆</span></div> {%/if%} <p>{%if $itemUrl%}<span class="op_chinavoice_step_subtext_text">{%/if%}{%$item.subtext%}{%if $itemUrl%}</span>{%/if%}</p> {%if $item.subtext2%}<p class="op_chinavoice_step_subtext2_text">{%$item.subtext2|limitlen:18|escape%}</p>{%/if%} </a> {%if $item.tip%} {%if $item.tip == '1'%} {%$tipClass = 'op_chinavoice_step_tipnew'%} {%elseif $item.tip == '2'%} {%$tipClass = 'op_chinavoice_step_tipnow'%} {%else%} {%$tipClass = ''%} {%/if%} {%if isset($tipClass)%} <span class="op_chinavoice_step_tip {%$tipClass|escape:'html'%}"></span> {%/if%} {%/if%} </li> {%/foreach%} </ul> </div> <a href="javascript:;" hidefocus="true" class="op_chinavoice_step_next{%if $tempDataNextEnd%} op_chinavoice_step_next_end{%/if%} OP_LOG_BTN"><i></i></a></div>{%if $tplData.showurl%}<div>{%fe_fn_showurl showurl="{%$tplData.showurl%}" date="{%$tplData.date%}" showlamp="{%$tplData.showlamp%}"%}</div>{%/if%}<script >
    A.setup({
        length: '{%$listLength|escape:'javascript'%}',
        width: '{%$WIDTH|escape:'javascript'%}'
    });
</script>{%$FE_GBVAR.wrapper_suffix%}{%/block%}