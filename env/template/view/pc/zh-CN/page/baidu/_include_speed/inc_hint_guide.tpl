{%* #如果不出黄反提示 *%}{%if ($topHint & 0x1000) == 0 &&  $pageNo == 1%}{%* 去贴吧引导链接 *%}{%if $daRes[32768].num > 0 && $tplData.asResult.firstItemId.tieba < 0%}<p class="to_tieba">去{%foreach $daRes[32768].results as $result%}<a href="{%$tieba_domain%}/f?kw={%$result|vui_escape:'url'%}&fr=ps0bt&ie=utf-8" target="_blank"><em>{%$result|vui_escape:'html'%}吧</em></a>{%if $result@index != $daRes[32768].num-1%}&nbsp;{%/if%}{%/foreach%}讨论</p>{%/if%}{%/if%}