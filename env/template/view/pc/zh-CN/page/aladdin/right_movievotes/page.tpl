{%extends 'c_right_base.tpl'%} {%block name='data_modifier'%}{%if !$tplData.imgurl%}{%$tplData.imgurl='http://www.baidu.com/aladdin/img/qiangpiao/qiangpiao.jpg'%}{%/if%}{%if !$tplData.bigimgurl%}{%$tplData.bigimgurl=$tplData.imgurl%}{%/if%}{%/block%}{%block name='content'%}<div class="c-abstract"> <a href="{%$tplData.imghref%}" target="_blank"> <img class="opr-right_movievotes-imgs" src="{%$tplData.imgurl%}" width="259" /> <img class="opr-right_movievotes-imgl" src="{%$tplData.bigimgurl%}"  /> </a></div>{%/block%}