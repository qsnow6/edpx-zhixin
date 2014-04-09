<?php 
  class CssJs_Util_right_hint
   {
      private static $cssStr = '.opr-hint{border:2px solid #9dc9f5;padding:5px 10px;}.opr-hint-title{padding:0 0 0 20px;background:url(http://www.baidu.com/aladdin/img/calendar_new/warn.png) no-repeat 0 0;}.opr-hint-title span{font-weight:bold;}';  // css字串，不含<style>和</style>标签
      private static $jsStr  = '';   // js字串，不含<script标签
      private static $uiList = '';   // 包含的组件，以','分割的字符串，比如'input,text,button'这样
      
      public static function getHeadCss()
      {
         if (!is_string(self::$cssStr))
         {
            return '';
         }
         return self::$cssStr;
      }
      
      public static function getFootJs()
      {
         if (!is_string(self::$jsStr))
         {
            return '';
         }
         return self::$jsStr;
      }
      
      // 返回数组
      public static function getCssUI()
      {
		 if ( empty(self::$uiList) ) return array();

         $arr = @explode(',', self::$uiList);
         if (!is_array($arr))
         {
            $arr = array();
         }
         return $arr;
      }
   }
