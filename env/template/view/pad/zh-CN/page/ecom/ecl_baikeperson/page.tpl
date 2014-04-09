{%extends 'c_base.tpl'%}

{%block name='data_modifier'%}
{%$extData.feData.fm='alop'%}

{%*通过进框判断是否展现图片*%}
{%if $extData.burstFlag>0%}
    {%$tplData.hidePic=true%}
{%/if%}
{%*判断右侧有多少行信息,根据行数进行截断,达到左右对齐目标*%}
{%$tplData.rightFieldRowCount=intval(!!$tplData.concern)+intval(!!$tplData.field0)+intval(!!$tplData.field1)+intval($tplData.field2||$tplData.field3)+intval(!!$tplData.link)+intval(!!$tplData.other)+intval(!!$tplData.blog)+intval(!!$tplData.lemmatype)+intval(!!$tplData.showurl)%}
{%*
	参数说明
	isSquare	true为方图, false为非方图
	lemmatype	1为展现 查看xxx更多释义的链接
	horizontal	true是水平图
	noStructure	true 无field1-3信息, false 只有field4的摘要信息
*%}
{%*方形图*%}
{%if $tplData.tip[0]['isSquare']=="true"%}
    {%if isset($tplData.newpic5)&&trim($tplData.newpic5)%}
		{%$tplData.realpicsrc=$tplData.newpic5%}
	{%else%}
		{%$tplData.realpicsrc=$tplData.pic%}
	{%/if%}
    {%$escaped_leaveRightFieldRowCount=6-$tplData.rightFieldRowCount%}
    {%if $escaped_leaveRightFieldRowCount<1%}{%$escaped_leaveRightFieldRowCount=1%}{%/if%}
	{%$tplData.field4limitlen=58*($escaped_leaveRightFieldRowCount-1)+40%}
{%*横图*%}
{%else if $tplData.tip[0]['horizontal']=="true"%}
    {%if isset($tplData.newpic4)&&trim($tplData.newpic4)%}
		{%$tplData.realpicsrc=$tplData.newpic4%}
	{%elseif isset($tplData.newpic3)&&trim($tplData.newpic3)%}
		{%$tplData.realpicsrc=$tplData.newpic3%}
	{%else%}
		{%$tplData.realpicsrc=$tplData.pic%}
	{%/if%}
    {%$escaped_leaveRightFieldRowCount=5-$tplData.rightFieldRowCount%}
    {%if $escaped_leaveRightFieldRowCount<1%}{%$escaped_leaveRightFieldRowCount=1%}{%/if%}
	{%$tplData.field4limitlen=58*($escaped_leaveRightFieldRowCount-1)+40%}
{%*竖图*%}
{%else%}
    {%if isset($tplData.newpic6)&&trim($tplData.newpic6)%}
		{%$tplData.realpicsrc=$tplData.newpic6%}
	{%elseif isset($tplData.newpic2)&&trim($tplData.newpic2)%}
		{%$tplData.realpicsrc=$tplData.newpic2%}
	{%else%}
		{%$tplData.realpicsrc=$tplData.pic%}
	{%/if%}
    {%$escaped_leaveRightFieldRowCount=7-$tplData.rightFieldRowCount%}
    {%if $escaped_leaveRightFieldRowCount<1%}{%$escaped_leaveRightFieldRowCount=1%}{%/if%}
	{%$tplData.field4limitlen=58*($escaped_leaveRightFieldRowCount-1)+40%}
{%/if%}
{%/block%}

{%block name='content'%}
    <style data-compress="off">
    {%fe_fn_c_css css='img'%}
    .op_baikeperson_container p{word-break:break-all;}
	.op_baikeperson_concern{height:1.69em; line-height:1.69em; margin-bottom:2px; position:relative;padding-left:64px;}
    .op_baikeperson_concerntext{position:absolute;height:1.69em;width:48px; padding:0 8px;left:0; top:0px;background:#3288ff; color:#fff;}
    .op_baikeperson_concernright{display:inline-block; height:1.54em;border-top:1px solid #e6e6e6;border-bottom:1px solid #e6e6e6;background:#f7f7f7;}
    .op_baikeperson_concernright a{display:inline-block;height:1.54em; line-height:1.54em;float:left;  border-right:2px solid #3288ff; padding:0 8px; text-decoration:none; color:#333;}
    </style>
	<div class="c-row op_baikeperson_container">
        {%if !$tplData.hidePic%}
        <div class="c-span6 c-gap-bottom-small">
            <a href="{%$tplData.url%}" target="_blank"><img style="display:block;" class="c-img c-img6" {%if $tplData.tip[0]['isSquare']!="true" && $tplData.tip[0]['horizontal']!="true"%}height="140"{%/if%} src="{%$tplData.realpicsrc%}"></a>
        </div>
        {%/if%}
        <div class="{%if !$tplData.hidePic%}c-span18{%else%}c-span24{%/if%} c-span-last">
            {%if $tplData.concern%}
            <p class="op_baikeperson_concern">
                <span class="op_baikeperson_concerntext">关注点</span>
                <span class="op_baikeperson_concernright">
                    {%foreach array_slice($tplData.concern, 0) as $item%}
                    <a target="_blank" href="{%$item.link%}">{%$item.text|limitlen:14%}</a>
                    {%/foreach%}
                </span>
            </p>
            {%/if%}
            {%if $tplData.field0[0].value%}
            <p style="font-size:1.1em;font-weight:bold;">{%if $tplData.field0[0]['name']%}{%$tplData.field0[0]['name']|escape:'html'%}{%/if%}{%$tplData.field0[0]['value']|limitlen:50|highlight:4%}</p>
            {%/if%}
            {%if $tplData.field1[0].value%}
            <p>{%if $tplData.field1[0]['name']%}{%$tplData.field1[0]['name']|escape:'html'%}{%/if%}{%$tplData.field1[0]['value']|highlight:4%}</p>
            {%/if%}
            {%if $tplData.field2[0].value||$tplData.field3[0].value%}
            <p>
				{%if $tplData.field2[0]['value']%}<span class="c-gap-right">{%if $tplData.field2[0]['name']%}{%$tplData.field2[0]['name']|escape:'html'%}{%/if%}{%$tplData.field2[0]['value']|limitlen:22|highlight:4%}</span>{%/if%}{%if $tplData.field3[0]['name']%}{%$tplData.field3[0]['name']|escape:'html'%}{%/if%}{%if $tplData.field3[0]['link']%}<a href="{%$tplData.field3[0]['link']%}" target="_blank">{%/if%}{%$tplData.field3[0]['value']|limitlen:24|highlight:4%}{%if $tplData.field3[0]['link']%}</a>{%/if%}                  
            </p>
            {%/if%}
            {%if $tplData.field4[0].value%}
            <p>
                {%if $tplData.tip[0]['noStructure']!="true" && $tplData.field4[0]['name']%}{%$tplData.field4[0]['name']|escape:'html'%}{%/if%}{%$tplData.field4[0]['value']|limitlen:$tplData.field4limitlen|highlight:4%}  
            </p>
            {%/if%}
            {%if $tplData.link%}
            <p>
                {%$escaped_linkDataLineLen=0%}
                {%$escaped_linkDataCount=count($tplData.link)%}
                {%foreach $tplData.link as $item%}
                {%$escaped_linkDataLineLen=$escaped_linkDataLineLen+($item['txt']|string_display_len)%}
                {%if ($escaped_linkDataCount>6&&$item@index<5) || $escaped_linkDataLineLen<=42%}
				    <a class="c-gap-right-small" href="{%$tplData.url%}{%$item['url']%}" target="_blank" title="{%$item['txt']%}">{%$item['txt']|limitlen:20|highlight:4%}</a>
                {%else%}
                    <a href="{%$tplData.url%}" target="_blank">更多&gt;&gt;</a>
                    {%break%}
                {%/if%}
                {%/foreach%}
            </p>
            {%/if%}
            {%if $tplData.blog%}
            {%foreach $tplData.blog as $item%}
			<p>{%$item['name']|escape:'html'%}<a href="{%$item['url']%}" target="_blank">{%$item['url']|limitlen:56|escape:'html'%}</a></p>
            {%/foreach%}
            {%/if%}
            {%if $tplData.lemmatype%}
          		{%$fetchkey_replace = preg_replace('/^'|cat:$extData.resourceid|cat:'_/','',$extData.fetchkey)%}           	
            	<p><a href="{%if $tplData.polyseme[0].url%}{%$tplData.polyseme[0].url%}{%else%}{%$tplData.url%}{%/if%}" target="_blank">查看“<em>{%$fetchkey_replace|escape:'html'%}</em>”其他含义&gt;&gt;</a></p>
          	{%/if%}
            {%if $tplData.other%}
            <p>
                {%foreach $tplData.other as $escaped_other%}<span {%if $escaped_other@index>0%} class="c-gap-left"{%/if%}>{%$escaped_other.name%}{%$escaped_other.value%}</span>{%/foreach%}
            </p>
            {%/if%}
            <p>{%fe_fn_c_showurl%}{%fe_fn_c_likeshare%}</p> 
        </div>
    </div>
{%/block%}

{%block name='foot'%}
{%/block%}