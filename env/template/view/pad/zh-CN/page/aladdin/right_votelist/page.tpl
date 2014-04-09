{%extends 'right_base.tpl'%} {%block name='content'%}<style>.container_l .opr-votelist-container{width:440px}.container_s .opr-votelist-container{width:270px}.opr-votelist-container,.opr-votelist-linkbtn{background:url(http://www.baidu.com/aladdin/img/chinavoice/chinavoice-votelist-bg.png) no-repeat}.opr-votelist-container{background-position:0 -30px;background-color:#fefdfd;margin-left:-10px;padding-left:10px;height:390px}.opr-votelist-title{font-size:16px;color:#43060b;line-height:20px;font-weight:bold;padding-top:10px}.opr-votelist-abs{color:#8{%*i*%}43e36;margin:6px 0 4px}.opr-votelist-table{width:100%}.opr-votelist-table td{border-bottom:1px solid #ffe9ec;font-size:15px;height:32px;line-height:32px}.opr-votelist-table td.opr-votelist-td1{width:18px;font-size:10px}.opr-votelist-td2{padding-left:10px}.opr-votelist-td3 div{width:66px;text-align:right}.opr-votelist-td4{width:80px}.opr-votelist-rankicon{width:14px;height:14px;line-height:14px;color:#fff;text-align:center;background:#4192e4}.opr-votelist-rankicon-top3{background:#f86667}.opr-vot{%*i*%}elist-links{text-decoration:none;outline:0}.opr-votelist-links:hover{text-decoration:underline}a.opr-votelist-linkbtn{display:block;width:69px;height:21px;text-align:center;cursor:pointer;line-height:21px;text-decoration:none;color:#000!important;outline:0;background-position:0 0}</style>{%*$smarty.cookies.BAIDUID*%}<div class="opr-votelist-container c-abstract"> <div class="opr-votelist-title">{%$tplData.title|escape%}</div> {%if $tplData.abs%}<div class="opr-votelist-abs">{%$tplData.abs|escape%}</div>{%/if%} <div class="opr-votelist-box"> <table class="opr-votelist-table" cellspacing="0" cellpadding="0"> {%foreach array_slice($tplData.list, 0, 10) as $item%} {%if $item.link%} {%$tempDataLinkUrl={%$item.link%}%} {%else%} {%$tempDataLinkUrl={%build_search_url params="wd={%$item.name%}&rsv_dl={%$tplData.dl%}"%}%} {%/if%} <tr> <td class="opr-votelist-td1"> <div class="opr-votelist-rankicon{%if $item@index<3%} opr-votelist-rankicon-top3{%/if%}">{%$item@iteration%}</div> </td> <td class="opr-votelist-td2"> <a class="opr-votelist-links" href='{%$tempDataLinkUrl%}' target="_blank" hidefocus="true">{%$item.name|limitlen:8|escape%}</a> </td> <td class="opr-votelist-td3"><div>{%$item.number|escape%}</div></td> <td class="opr-votelist-td4"> <a class="opr-votelist-linkbtn" href='{%$tempDataLinkUrl%}' target="_blank" hidefocus="true">{%$tplData.linkbtn|escape%}</a> </td> </tr> {%/foreach%} </table> </div></div>{%/block%}