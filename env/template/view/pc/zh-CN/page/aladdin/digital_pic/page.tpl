{%extends 'c_base.tpl'%} {%block name='content'%}<table class="c-table"> <tr> <th>{%$tplData.picTitle[0].tip|escape%}<span {%if $tplData.picTitle[0].hilight%}class="op_digital_pic_hilight"{%/if%}>{%$tplData.picTitle[0].content|escape%}</span></th> <th style="text-align:right;padding-right:25px;">{%$tplData.picTitle[0].otherInfo%}</th> </tr></table><div class="c-row c-gap-top c-gap-bottom"> <div class="c-span6"> <a target="_blank" href="{%$tplData.picInfo1[0]['linkurl']%}"><img class="c-img" src="{%$tplData.picInfo1[0]['url']%}" title="{%$tplData.picInfo1[0]['tip']|escape:'html'%}"></a> </div> <div class="c-span6"> <a target="_blank" href="{%$tplData.picInfo2[0]['linkurl']%}"><img class="c-img" src="{%$tplData.picInfo2[0]['url']%}" title="{%$tplData.picInfo2[0]['tip']|escape:'html'%}"></a> </div> <div class="c-span6"> <a target="_blank" href="{%$tplData.picInfo3[0]['linkurl']%}"><img class="c-img" src="{%$tplData.picInfo3[0]['url']%}" title="{%$tplData.picInfo3[0]['tip']|escape:'html'%}"></a> </div> <div class="c-span6 c-span-last"> <a target="_blank" href="{%$tplData.picInfo4[0]['linkurl']%}"><img class="c-img" src="{%$tplData.picInfo4[0]['url']%}" title="{%$tplData.picInfo4[0]['tip']|escape:'html'%}"></a> </div></div>{%if $tplData.morePic || $tplData.moreLink1%}<div class="c-clearfix op_digital_pic_morelink_container"> {%if $tplData.morePic[0]['tip']%}<a target="_blank" class="op_digital_pic_morelink" href="{%$tplData.morePic[0]['url']%}">{%$tplData.morePic[0]['tip']|escape:'html'%}</a>{%/if%} {%if $tplData.moreLink1 || $tplData.moreLink2 || $tplData.moreLink3 || $tplData.moreLink4%} {%if $tplData.moreLink1[0]['tip']%}<a target="_blank" href="{%$tplData.moreLink1[0]['url']%}" class="c-gap-left">{%$tplData.moreLink1[0]['tip']|escape:'html'%}</a>{%/if%} {%if $tplData.moreLink2[0]['tip']%}<a target="_blank" href="{%$tplData.moreLink2[0]['url']%}" class="c-gap-left">{%$tplData.moreLink2[0]['tip']|escape:'html'%}</a>{%/if%} {%if $tplData.moreLink3[0]['tip']%}<a target="_blank" href="{%$tplData.moreLink3[0]['url']%}" class="c-gap-left">{%$tplData.moreLink3[0]['tip']|escape:'html'%}</a>{%/if%} {%if $tplData.moreLink4[0]['tip']%}<a target="_blank" href="{%$tplData.moreLink4[0]['url']%}">{%$tplData.moreLink4[0]['tip']|escape:'html'%}</a>{%/if%} {%/if%}</div>{%/if%}{%/block%}