{%extends 'c_right_base.tpl'%} {%block name='content'%}<style>{%fe_fn_c_css css='btn'%}{%fe_fn_c_css css='input'%}.opr-moneychannel-title{height:22px;line-height:22px;font-size:16px;font-weight:bold;padding-bottom:1px;position:relative}.opr-moneychannel-subtitle{position:absolute;padding-right:10px;background:#fff;z-index:2}.opr-moneychannel-title a{padding-left:6px;background-color:#fff;position:absolute;right:0;top:0;z-index:2;font-size:14px;font-weight:normal}.opr-moneychannel-subtitle-line{position:absolute;top:12px;width:100%;height:0;border-top:1px solid #eaeaea;z-index:1}.opr-moneychannel-donation{ma{%*i*%}rgin:7px 0 10px}.opr-moneychannel-channel{margin-bottom:10px;position:relative}.opr-moneychannel-selectlabel{float:left;height:26px;line-height:26px;margin-right:4px}.opr-moneychannel-select{float:left;position:relative;width:156px;height:24px;line-height:24px;border-top:1px solid #999;border-right:1px solid #d8d8d8;border-bottom:1px solid #d8d8d8;border-left:1px solid #999;cursor:pointer}.opr-moneychannel-selectval{padding:0 7px 0;margin-right:7px;display:inline-block;height:24px;overflow:hidde{%*i*%}n}.opr-moneychannel-selectbtn{position:absolute;top:0;right:0;width:23px;height:24px;line-height:24px;background:url('http://www.baidu.com/aladdin-pad/img/right_moneychannel/opr-moneychannel-arrow.png') no-repeat center #fbfbfb;border-left:1px solid #d8d8d8;text-align:center}.opr-moneychannel-selectlist{width:auto;max-width:380px;overflow:hidden;background:#fff;border:1px solid #bbb;position:absolute;top:25px;left:-1px;z-index:1;display:none}div.opr-moneychannel-selectlist{top:26px;left:69px}.op{%*i*%}r-moneychannel-selectlist-ul{max-height:180px;min-width:156px;overflow-y:auto}.opr-moneychannel-select-li{padding:1px 5px;cursor:pointer}.opr-moneychannel-select-li:hover,.opr-moneychannel-li-hover{background-color:#f5f5f5}.opr-moneychannel-money{margin-bottom:10px}.opr-moneychannel-money label{float:left;height:26px;line-height:26px;margin-right:4px}.opr-moneychannel-money input{margin:0;padding:0 7px;width:142px;height:24px;border-width:1px;border-style:solid;border-color:#a9a9a9 #d8d8d8 #d8d8{%*i*%}d8 #a9a9a9;outline:0;color:#bbb;float:left;font-size:15px;font-family:arial,"华文细黑";border-radius:0;background:0}.opr-moneychannel-money-note{color:#e63232;margin-left:78px;white-space:nowrap;font-size:14px;float:left}.opr-moneychannel-submit{margin-left:79px;font-size:15px;font-family:arial,"华文细黑"}.opr-moneychannel-tip{color:#666;line-height:22px}.opr-moneychannel-clear{zoom:1}.opr-moneychannel-clear:after{content:'';display:block;clear:both}</style><div class="c-abstract opr-moneychannel"><div {%*i*%}class="opr-moneychannel-title"> <div class="opr-moneychannel-subtitle">{%$tplData.subtitle|limitlen:20|escape:'html'%}</div> <div class="opr-moneychannel-subtitle-line"></div> {%if $tplData.morelink[0]['linkurl']&&$tplData.morelink[0]['linktxt']%} <a href="{%$tplData.morelink[0]['linkurl']%}" target="_blank">{%$tplData.morelink[0]['linktxt']|limitlen:14|escape:'html'%}</a> {%/if%} </div> <div class="opr-moneychannel-content"> <form class="opr-moneychannel-donation" method="post" action="{%$tplData.btn[0]['btnurl']%}" onsubmit="return false" accept-charset="gbk" autocomplete="off" target="_blank"> <div class="opr-moneychannel-channel opr-moneychannel-clear"> <span class="opr-moneychannel-selectlabel">{%$tplData.channeltitle|limitlen:10|escape:'html'%}</span> <div class="opr-moneychannel-select"{%if !$tplData.channel[1]%} style="cursor:text;"{%/if%}> <span class="opr-moneychannel-selectval" data-no="{%$tplData.channel[0]['spno']%}">{%$tplData.channel[0]['txt']|limitlen:24|escape:'html'%}</span>{%if $tplData.channel[1]%}<span class="opr-moneychannel-selectbtn OP_LOG_BTN"></span>{%/if%} {%if $tplData.channel|@count>=2&&$tplData.channel|@count<=14%} <ul class="opr-moneychannel-selectlist opr-moneychannel-selectlist-ul"> {%foreach array_slice($tplData.channel,0,14) as $item%} <li class="opr-moneychannel-select-li OP_LOG_OTHERS" data-no="{%$item['spno']%}">{%$item['txt']|limitlen:24|escape:'html'%}</li> {%/foreach%} </ul> {%/if%} </div> <input class="opr-moneychannel-donate" type="hidden" name="donate_subject" value="{%$tplData.formtip[0]['donate']%}"/> <input class="opr-moneychannel-goodsname" type="hidden" name="goods_name" value="{%$tplData.channel[0]['txt']%}-爱心捐款"/> <input class="opr-moneychannel-spno" type="hidden" name="sp_no" value="{%$tplData.channel[0]['spno']%}"/> <input class="opr-moneychannel-returl" type="hidden" name="ret_url" value="{%$tplData.formtip[0]['returl']%}"/> <input class="opr-moneychannel-source" type="hidden" name="source" value="{%$tplData.formtip[0]['source']%}"/> </div> <div class="opr-moneychannel-money opr-moneychannel-clear"> <label>{%$tplData.moneytitle|limitlen:10|escape:'html'%}</label> <input class="opr-moneychannel-money-input" type="text" name="amount" value="请输入捐款金额" maxvalue="10000000.00" minvalue="0.01"/> <span class="opr-moneychannel-money-note"></span> </div> <button class="opr-moneychannel-submit c-btn c-btn-primary OP_LOG_BTN">{%$tplData.btn[0]['btncontxt']|limitlen:12|escape:'html'%}</button> </form> {%if $tplData.tip%} <p class="opr-moneychannel-tip">{%$tplData.tip|limitlen:120|escape:'html'%}</p> {%/if%} {%if $tplData.more%} {%foreach array_slice($tplData.more,0,3) as $item%} <a class="opr-moneychannel-more" href="{%$item['moreurl']%}" target="_blank">{%$item['moretxt']|limitlen:40|escape:'html'%}</a> {%/foreach%} {%/if%} </div></div> <script >
     A.setup('btnurl', '{%$tplData.btn[0]['btnurl']|escape:'javascript'%}');
</script><script>A.init(function(){var _this = this;A.use("tangram", function(){var T = A.baidu;var channel=_this.qq('opr-moneychannel-select'),channelval=_this.qq('opr-moneychannel-selectval'),channellist=_this.qq('opr-moneychannel-selectlist'),channelli=_this.q('opr-moneychannel-select-li'),money=_this.qq('opr-moneychannel-money-input'),note=_this.qq('opr-moneychannel-money-note'),subbtn=_this.qq('opr-moneychannel-submit'),subbtnurl=_this.data.btnurl,form=_this.qq('opr-moneychannel-donation'),{%*i*%}inow=false,donate=_this.qq('opr-moneychannel-donate'),goodsname=_this.qq('opr-moneychannel-goodsname'),spno=_this.qq('opr-moneychannel-spno'),returl=_this.qq('opr-moneychannel-returl'),source=_this.qq('opr-moneychannel-source');if(channellist){T.on(channel,'click',function(ev){var oEvent=ev||window.event;if(oEvent.stopPropagation){oEvent.stopPropagation();}else{oEvent.cancelBubble=true;}if(!inow){channellist.style.display='block';inow=true;}else{channellist.style.display='none';inow=false;}});T.{%*i*%}each(channelli,function(obj,i){T.on(obj,'mouseover',function(){T.addClass(obj,'opr-moneychannel-li-hover');});T.on(obj,'mouseout',function(){T.removeClass(obj,'opr-moneychannel-li-hover');});T.on(obj,'click',function(ev){var oEvent=ev||window.event;if(oEvent.stopPropagation){oEvent.stopPropagation();}else{oEvent.cancelBubble=true;}channelval.innerHTML=obj.innerHTML;channelval.attributes['data-no'].nodeValue=obj.attributes['data-no'].nodeValue;channellist.style.display='none';inow=false;goodsname{%*i*%}.value=obj.innerHTML+'-爱心捐款';spno.value=obj.attributes['data-no'].nodeValue;});});T.on(document,'click',function(){channellist.style.display='none';inow=false;});}T.on(money,'focus',function(){if(money.value=='请输入捐款金额'){money.value='';money.style.color='#000';}});T.on(money,'blur',function(){if(money.value==''){money.value='请输入捐款金额';money.style.color='#bbb';}});T.on(subbtn,'click',function(){if(money.value===''||money.value==='请输入捐款金额'||money.value==0){note.innerHTML='请输入捐款金额';return;}if(!/^\d+({%*i*%}?:\.\d{1,2})?$/.test(money.value)){note.innerHTML='请输入正确的捐款金额';return;}if(money.value>=10000000.01){note.innerHTML='超过金额上限，请重新输入';return;}form.submit();note.innerHTML='';});});});</script>{%/block%}