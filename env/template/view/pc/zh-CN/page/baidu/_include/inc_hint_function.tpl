{%function name=display_hint%} {%if $widgetName == "hint_safeinfo"%} {%widget name="fis_widget_baidu_hint_safeinfo" path="widget/baidu/hint_safeinfo/hint_safeinfo.tpl"%} {%elseif $widgetName == "hint_unsafeinfo"%} {%widget name="fis_widget_baidu_hint_unsafeinfo" path="widget/baidu/hint_unsafeinfo/hint_unsafeinfo.tpl"%} {%elseif $widgetName == "hint_location"%} {%widget name="fis_widget_baidu_hint_location" path="widget/baidu/hint_location/hint_location.tpl"%} {%/if%}{%/function%}