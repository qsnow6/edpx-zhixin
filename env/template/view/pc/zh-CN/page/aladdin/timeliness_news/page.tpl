{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name="title"%}{%/block%}{%block name="foot"%}{%/block%}{%block name='content'%}<style>.op_timeliness-img{height:{%fe_fn_c_get_img_height col=15 rate=1/2 border="1" %}px;width:320px;overflow:hidden}.op-timeliness-news-dl dd span{width:{%fe_fn_c_get_img_height col=6 border="1" %}px}</style><div class="c-border {%if $tplData.bordercolor == 'red'%}op-timeline-news-border{%/if%}"> <div class="c-tabs"> {%if count($tplData.tab) > 1%} <ul class="c-tabs-nav c-tabs-nav-movetop"> {%foreach $tplData.tab as $item%} {%if !$item@first%}<li class="c-tabs-nav-sep"></li>{%/if%} <li data-click="{fm: 'beha'}" class="c-tabs-nav-li{%if $item.id==$tplData.currentTab[0]['currentId']%} c-tabs-nav-selected{%/if%}">{%$item['txt']|escape:'html'%}</li> {%/foreach%} </ul> {%/if%} {%foreach $tplData.tab as $itemOuter%} <div class="c-tabs-content" style="{%if $itemOuter.id==$tplData.currentTab[0]['currentId']%}display:block;{%else%}display:none;{%/if%}"> {%if $tplData.subtitle%} {%foreach $tplData.subtitle as $itemTitle%} {%if $itemTitle.id == $itemOuter.id%} <p class="c-gap-bottom {%if count($tplData.tab) > 1%}c-gap-top{%/if%} op_timeliness_news_title"><a href="{%$itemTitle.link%}" target="_blank">{%$itemTitle.txt|limitlen:28|highlight:0%}</a></p> {%/if%} {%/foreach%} {%/if%} {%if $tplData.con%} {%foreach $tplData.con as $itemInner%} {%if $itemInner.id == $itemOuter.id%} <div class="c-row"> <div class="c-span15 op-timeliness-outer"> <div class="op-timeliness-inner"> <div>{%if $itemInner.tiptxt%}<span>{%$itemInner.tiptxt%}</span>{%/if%}{%if $itemInner.slidepic1%}<a href="{%$itemInner.slidepiclink1%}" target="_blank"><img class="op_timeliness-img" src="{%$itemInner.slidepic1%}" width="320" height="160" /></a>{%/if%}{%if $itemInner.slidetxt1%}<div class="op-timeliness-news-txt"></div><em>{%$itemInner.slidetxt1|limitlen:32%}</em>{%/if%}</div> <div>{%if $itemInner.tiptxt%}<span>{%$itemInner.tiptxt%}</span>{%/if%}{%if $itemInner.slidepic2%}<a href="{%$itemInner.slidepiclink2%}" target="_blank"><img class="op_timeliness-img" src="{%$itemInner.slidepic2%}" width="320" height="160" /></a>{%/if%}{%if $itemInner.slidetxt2%}<div class="op-timeliness-news-txt"></div><em>{%$itemInner.slidetxt2|limitlen:32%}</em>{%/if%}</div> <div>{%if $itemInner.tiptxt%}<span>{%$itemInner.tiptxt%}</span>{%/if%}{%if $itemInner.slidepic3%}<a href="{%$itemInner.slidepiclink3%}" target="_blank"><img class="op_timeliness-img" src="{%$itemInner.slidepic3%}" width="320" height="160" /></a>{%/if%}{%if $itemInner.slidetxt3%}<div class="op-timeliness-news-txt"></div><em>{%$itemInner.slidetxt3|limitlen:32%}</em>{%/if%}</div> </div> <ul class="op-timeliness-btn"> <li><a href="javascript:;" data-click="{fm: 'beha'}" class="c-icon c-icon-circle-gray"></a></li> <li><a href="javascript:;" data-click="{fm: 'beha'}" class="c-icon c-icon-circle-gray"></a></li> <li><a href="javascript:;" data-click="{fm: 'beha'}" class="c-icon c-icon-circle-gray"></a></li> </ul> <div class="op-timeliness-left"><a href="javascript:;" data-click="{fm: 'beha'}"></a></div> <div class="op-timeliness-right"><a href="javascript:;" data-click{%*i*%}="{fm: 'beha'}"></a></div> </div> <div class="c-span9 c-span-last"> {%if $itemInner.summarytxt%}<p class="op-timeliness-summary">{%$itemInner.summarytxt|limitlen:120|highlight:0%}<a href="{%$itemInner.detaillink%}" target="_blank">详细&gt;&gt;</a></p>{%/if%} {%if $tplData.list%} {%foreach $tplData.list as $itemnews1%} {%if $itemnews1.id == $itemOuter.id%} <ul> {%if $itemnews1.summarynews1%}<li><a href="{%$itemnews1.summarynews1link%}" target="_blank">{%$itemnews1.summarynews1|limitlen:26|highlight:0%}</a></li>{%/if%} {%if $itemnews1.summarynews2%}<li><a href="{%$itemnews1.summarynews2link%}" target="_blank">{%$itemnews1.summarynews2|limitlen:26|highlight:0%}</a></li>{%/if%} {%if $itemnews1.summarynews3%}<li><a href="{%$itemnews1.summarynews3link%}" target="_blank">{%$itemnews1.summarynews3|limitlen:26|highlight:0%}</a></li>{%/if%} </ul> {%/if%} {%/foreach%} {%/if%} </div> </div> {%if $tplData.newslist%} {%foreach $tplData.newslist as $itemnews2%} {%if $itemnews2.id == $itemOuter.id%} <div class="c-gap-top op_timeliness_news_subtitle"><a href="{%$itemnews2.relatednewslink%}" target="_blank">{%$itemnews2.relatednews|highlight:0%}</a></div> <ul class="op-timeliness-news-ul"> {%if $itemnews2.relatednewstxt1%}<li class="c-clearfix"><a href="{%$itemnews2.relatednewslink1%}" target="_blank">{%$itemnews2.relatednewstxt1|limitlen:50|highlight:0%}</a><span>{%$itemnews2.relatednewstime1%}</span></li>{%/if%} {%if $itemnews2.relatednewstxt2%}<li class="c-clearfix"><a href="{%$itemnews2.relatednewslink2%}" target="_blank">{%$itemnews2.relatednewstxt2|limitlen:50|highlight:0%}</a><span>{%$itemnews2.relatednewstime2%}</span></li>{%/if%} {%if $itemnews2.relatednewstxt3%}<li class="c-clearfix"><a href="{%$itemnews2.relatednewslink3%}" target="_blank">{%$itemnews2.relatednewstxt3|limitlen:50|highlight:0%}</a><span>{%$itemnews2.relatednewstime3%}</span></li>{%/if%} {%if $itemnews2.relatednewstxt4%}<li class="c-clearfix"><a href="{%$itemnews2.relatednewslink4%}" target="_blank">{%$itemnews2.relatednewstxt4|limitlen:50|highlight:0%}</a><span>{%$itemnews2.relatednewstime4%}</span></li>{%/if%} </ul> {%/if%} {%/foreach%} {%/if%} {%if $tplData.videolist%} {%foreach $tplData.videolist as $itemvideo%} {%if $itemvideo.id == $itemOuter.id%} <div class="c-gap-top c-gap-bottom-small op_timeliness_news_subtitle"><a href="{%$itemvideo.relatedvideolink%}" target="_blank">{%$itemvideo.relatedvideo|highlight:0%}</a></div> <dl class="c-row op-timeliness-news-dl c-clearfix"> {%if $itemvideo.relatedvideopic1%}<dd class="c-span6"><a href="{%$itemvideo.relatedvideopiclink1%}" target="_blank"><img class="c-img c-img6" src="{%$itemvideo.relatedvideopic1%}" /><span></span><em>{%$itemvideo.relatedvideotxt1|limitlen:18%}</em></a></dd>{%/if%} {%if $itemvideo.relatedvideopic2%}<dd class="c-span6"><a href="{%$itemvideo.relatedvideopiclink2%}" target="_blank"><img class="c-img c-img6" src="{%$itemvideo.relatedvideopic2%}" /><span></span><em>{%$itemvideo.relatedvideotxt2|limitlen:18%}</em></a></dd>{%/if%} {%if $itemvideo.relatedvideopic3%}<dd class="c-span6"><a href="{%$itemvideo.relatedvideopiclink3%}" target="_blank"><img class="c-img c-img6" src="{%$itemvideo.relatedvideopic3%}" /><span></span><em>{%$itemvideo.relatedvideotxt3|limitlen:18%}</em></a></dd>{%/if%} {%if $itemvideo.relatedvideopic4%}<dd class="c-span6 c-span-last"><a href="{%$itemvideo.relatedvideopiclink4%}" target="_blank"><img class="c-img c-img6" src="{%$itemvideo.relatedvideopic4%}" /><span></span><em>{%$itemvideo.relatedvideotxt4|limitlen:18%}</em></a></dd>{%/if%} </dl> {%/if%} {%/foreach%} {%/if%} {%/if%} {%/foreach%} {%/if%} {%if $itemOuter.txt%} <div class="c-gap-top c-showurl-color op-timeliness-new-from">{%$itemOuter.link%}</div> {%/if%} </div> {%/foreach%} </div></div><script >
    A.setup({ 
       tab:{%json_encode($tplData.tab)%},
       last:{%json_encode($tplData.currentTab[0].currentId)%},
       tabflag:{%count($tplData.tab)%}
        
    });
</script>{%/block%}