{%extends 'right_base.tpl'%} {%block name='content'%}{%$FE_GBVAR.wrapper_prefix%}<style>.opr-author{color:#333}.opr-author-subtitle{font-size:1.07em;background:url(http://www.baidu.com/aladdin/img/right_relainfo/horizon.png) repeat-x 0 bottom;position:relative;zoom:1}.opr-author-subtitle-tip{padding-right:10px;margin-right:30px;background:#fff;font-weight:bold}.opr-author table{margin-top:5px;font-size:.92em}.opr-author-title{padding:10px 0;border-bottom:1px solid #e1e1e1;height:15px;font-weight:bold;font-size:1.07em;color:#000}.opr-author-img{width:84px;height:110px;overflo{%*i*%}w:hidden;text-align:center;position:relative}.opr-author-img img{width:84px;height:110px}.opr-author-img span{width:82px;height:108px;position:absolute;top:0;left:0;border:1px solid #000;filter:alpha(opacity=10);opacity:.1;-moz-opacity:.1;display:block}.opr-author-info{margin-left:2px;line-height:19px;word-wrap:break-word;word-break:break-all}.opr-author-info b{font-weight:normal;color:#666}</style><div class="opr-author"> <div class="opr-author-subtitle"> <span class="opr-author-subtitle-tip" t{%*i*%}itle="{%$tplData.authorInfo[0].tip%}">{%$tplData.authorInfo[0].tip|limitlen:52%}</span> </div> <table> <tbody> <tr> <td valign="top"> <div class="opr-author-img"> <a href="{%build_search_url params="`$tplData.authorInfo[0].link`"%}" target="_blank"> <img src="{%$tplData.authorInfo[0].img%}"/> <span></span> </a> </div> </td> <td valign="top"> <div class="opr-author-info"> <p><a href="{%build_search_url params="`$tplData.authorInfo[0].link`"%}"  target="_blank">{%$tplData.authorInfo[0].name|limitlen:24|escape:'html'%}</a></p> {%if $tplData.authorInfo[0].abstract %} <p><b>简&nbsp;介：</b> {%if $tplData.authorProduction %} {%$tplData.authorInfo[0].abstract|limitlen:54|escape:'html' %} {%else%} {%$tplData.authorInfo[0].abstract|limitlen:78|escape:'html' %} {%/if%} {%if $tplData.authorInfo[0].baikelink%} <a target="_blank" href="{%$tplData.authorInfo[0].baikelink%}" style="color:#666;white-space:nowrap;">进入百科&gt;&gt;</a> {%/if%} </p> {%/if%} {%if $tplData.authorProduction %} <p><b>其他作品：</b></p> <p class="opr-author-prod"> {%foreach $tplData.authorProduction as $item%} {%if $item@index>1 %}{%break%}{%/if%} <a href="{%build_search_url params="`$item.link`"%}" target="_blank" title="{%$item.name|escape:'html' %}"{%if $item@first%} style="margin-right:5px;"{%/if%}>{%$item.name|limitlen:12|escape:'html' %}</a> {%/foreach%} </p> {%/if%} </div> </td> </tr> </tbody> </table></div>{%$FE_GBVAR.wrapper_suffix%}{%/block%}