{%*url级别通用提示，注意与query级别提示widget名不同!!*%}{%function name=display_res_hint_section%} {%if $widgetName == "res_hint_unsafe"%} {%widget name="fis_widget_baidu_res_hint_unsafe_section" path="widget/baidu/res_hint_unsafe_section/res_hint_unsafe_section.tpl"%} {%elseif $widgetName == "res_hint_unsafe_icon"%} {%widget name="fis_widget_baidu_res_hint_unsafe_icon" path="widget/baidu/res_hint_unsafe_icon/res_hint_unsafe_icon.tpl"%} {%/if%}{%/function%}{%*query级别通用提示，注意与query级别提示widget名不同!!*%}{%function name=display_hint%} {%if ($widgetName == "hint_ipadhd_videodown") && ($ubs_log_apptype != 1) && ($urlPara.tn != "SE_videoapp_pw2syq75") && ($urlPara.tn != "SE_baiduipadhd2_22k1x757")%} {%widget name="fis_widget_baidu_hint_ipadhd_videodown" path="widget/baidu/hint_ipadhd_videodown/hint_ipadhd_videodown.tpl"%} {%elseif ($widgetName == "hint_ipadhd_down") && ($ubs_log_apptype != 1) && ($urlPara.tn != "SE_videoapp_pw2syq75") && ($urlPara.tn != "SE_baiduipadhd2_22k1x757")%} {%widget name="fis_widget_baidu_hint_ipadhd_down" path="widget/baidu/hint_ipadhd_down/hint_ipadhd_down.tpl"%} {%elseif $widgetName == "hint_safeinfo_left"%} {%widget name="fis_widget_baidu_hint_safeinfo" path="widget/baidu/hint_safeinfo/hint_safeinfo.tpl"%} {%elseif $widgetName == "hint_safeinfo_right"%} {%widget name="fis_widget_baidu_hint_safeinfo_right" path="widget/baidu/hint_safeinfo_right/hint_safeinfo_right.tpl"%} {%elseif $widgetName == "hint_securityplan"%} {%widget name="fis_widget_baidu_hint_securityplan" path="widget/baidu/hint_securityplan/hint_securityplan.tpl"%} {%elseif $widgetName == "hint_location"%} {%widget name="fis_widget_baidu_hint_location" path="widget/baidu/hint_location/hint_location.tpl"%} {%elseif $widgetName == "hint_boldline"%} {%widget name="fis_widget_baidu_hint_boldline" path="widget/baidu/hint_boldline/hint_boldline.tpl"%} {%/if%}{%/function%}