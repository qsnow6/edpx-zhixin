 <title><![CDATA[  {%$extData.OriginQuery|limitlen:30|highlight:0%}_{%$tplData.TitleSuffix|limitlen:100|highlight:0%}{%$tplData.dispNum%}条_百度招聘搜索  ]]></title> <titleurl><![CDATA[  {%$tplData.url%}  ]]></titleurl> <srcid><![CDATA[  zhaopin  ]]></srcid> <showurl><![CDATA[  open.baidu.com  ]]></showurl> <moretitle><![CDATA[  {%if $tplData.MoreResult!=""%}查看全部{%$tplData.dispNum%}条结果>>{%/if%}  ]]></moretitle> <moretitleurl><![CDATA[  {%if $tplData.MoreResult!=""%} {%$tplData.url%} {%/if%}  ]]></moretitleurl> <datatitle> <jobnametitle><![CDATA[  职位名称  ]]></jobnametitle> <companynametitle><![CDATA[  公司名称  ]]></companynametitle> <addresstitle><![CDATA[  工作地点  ]]></addresstitle> <datetitle><![CDATA[  发布时间  ]]></datetitle></datatitle> {%$loop_maxcount=$tplData.resNum%}{%for $op_loop_count=0 to 9%}{%if $op_loop_count<$loop_maxcount%} <dataitem> <jobname><![CDATA[  {%$tplData.result[$op_loop_count]['title']|limitlen:24|highlight:0%}  ]]></jobname> <jobnamelink><![CDATA[  {%$tplData.result[$op_loop_count]['loc']%}  ]]></jobnamelink> <companyname><![CDATA[  {%$tplData.result[$op_loop_count]['employer']|limitlen:18|highlight:0%}  ]]></companyname> <address><![CDATA[  {%$tplData.result[$op_loop_count]['city']|limitlen:100|highlight:0%}  ]]></address> <date><![CDATA[  {%$tplData.result[$op_loop_count]['startdate']|limitlen:100|highlight:0%}  ]]></date></dataitem> {%else%}{%break%}{%/if%}{%/for%}