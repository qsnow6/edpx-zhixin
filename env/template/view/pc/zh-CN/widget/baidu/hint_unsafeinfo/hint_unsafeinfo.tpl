{%fis_widget%}{%if $resultHitEndFlag != 1%}<style>#unsafe_hidden{margin:45px 0 25px 0;font-size:14px}#unsafe_hidden p{color:#666;margin-bottom:10px}#unsafe_hidden span{margin-right:;-left:6px}#unsafe_show{margin:45px 0 40px 0;display:none;color:#666;font-size:14px}#unsafe_content{height:0;overflow:hidden;position:relative}.arrowdown{border-width:6px;border-color:#00f #fff #fff #fff;border-style:solid;display:inline-block;width:0;height:0;line-height:0;position:relative;top:4px;*top:10px}</style><script type="text/javascript">bds.ready(fu{%*i*%}nction(){function showUnsafe(){G("unsafe_hidden").style.display = "none";G("unsafe_show").style.display = "block";var h =G("unsafe_content").scrollHeight;G("unsafe_content").style.height =0;setTimeout(function(){bds.se.hint.move(h)},10);setTimeout(function(){G("page").style.display = "block";},1000)}function move(h){var box = G("unsafe_content");box.style.height = parseInt(box.style.height) +10+"px"; if(parseInt(box.style.height)<h){setTimeout(function(){bds.se.hint.move(h)},10);}}bds.se.hint ={{%*i*%}};bds.se.hint.showUnsafe = showUnsafe;bds.se.hint.move = move;});</script><table cellpadding="0" cellspacing="0" id="{%$resIndex%}"><tr><td class="f"><div class="se_common_hint" data-id="{%$hint.id%}" data-tpl="{%$hint.templateName%}"><div id ="unsafe_hidden"><p>{%$hint.hintData.hintLabel|escape%}</p><a href="javascript:bds.se.hint.showUnsafe()">{%$hint.hintData.hintText|escape%}<span class="arrowdown"></span></a></div><p id ="unsafe_show">{%$hint.hintData.hintText2|escape%}</p></div></td></tr></table><div id="unsafe_content">{%/if%}{%/fis_widget%}