{%extends 'c_base.tpl'%} {%block name="data_modifier"%}{%$extData.feData.hasShowURLGap = true%}{%/block%}{%block name='content'%}<style type="text/css" data-merge>.op-zx-tour-map-container{color:#333;overflow:hidden}.op-zx-tour-map-box{height:268px;border:1px solid #ccc}.op-zx-tour-map-label{width:100;height:100%;display:block;border:1px solid #61a9d8;background-color:#eff8ff;border-radius:4px;padding:4px;color:#6599be;font-weight:bold;box-shadow:2px 2px 2px #aaacad;text-decoration:none;out-line:none}.op-zx-tour-map-container .h{margin-left:0}</style><div class="op-zx-tour-map-container"> <div class="op-zx-tour-map-box OP{%*i*%}_LOG_OTHERS" data-click="{fm:'beha'}"></div> </div><script >
    //为阿拉丁单条结果实例创建数据
    A.setup({
        lng: '{%$tplData.lng%}'*1,
        lat: '{%$tplData.lat%}'*1,
        zoom: '{%$tplData.zoom%}'*1,
        point: {%json_encode($tplData.point)%}
    });
</script><script data-merge> A.setup(function(){var _this = this, map,callbackName = 'zx_tour_map_callback_' + new Date().getTime(),BAIDU_MAP_API_URL="http://api.map.baidu.com/api?v=1.4&callback="+callbackName;window[callbackName] = function(){var points = _this.data.point, lng, lat; $mapContainer = _this.find(".op-zx-tour-map-box");map = new BMap.Map($mapContainer[0]);var zoomPoints = [];for(var i = 0, l = points.length; i < l; i++){if(!points[i]['nozoom'] || points[i]['nozoom']=="0"){zoomPoint{%*i*%}s.push(points[i]);}}var viewpoint = map.getViewport(zoomPoints);var point = new BMap.Point(_this.data.lng, _this.data.lat);map.centerAndZoom(point, (viewpoint&&viewpoint.zoom)||_this.data.zoom); map.addControl(new BMap.NavigationControl()); var scrollWheelZoomEnabled = false;var mapMouseOverTimer = null;if(points){for (var i = 0; i < points.length; i++) {lng = points[i]['lng'];lat = points[i]['lat'];url = points[i]['url'];title = points[i]['title'];var point = new BMap.Point(lng,lat);addMarker(p{%*i*%}oint, title, url, i);}var centerPoint;if(viewpoint&&viewpoint.center&&viewpoint.center.lng&&viewpoint.center.lat){centerPoint = new BMap.Point(viewpoint.center['lng'], viewpoint.center['lat']);}else{centerPoint = new BMap.Point(points[0]['lng'], points[0]['lat']);}map.panTo(centerPoint);}map.getPanes().markerPane.style.zIndex=701;$mapContainer.click(function(){if(!scrollWheelZoomEnabled){map.enableScrollWheelZoom();scrollWheelZoomEnabled = true;}});$mapContainer.hover(function(e){if(!mapMouseOve{%*i*%}rTimer){mapMouseOverTimer = setTimeout(function(){map.enableScrollWheelZoom();scrollWheelZoomEnabled = true;},800);}},function(e){if(!contains($mapContainer[0], e.relatedTarget)){if(mapMouseOverTimer){clearTimeout(mapMouseOverTimer);mapMouseOverTimer = null;map.disableScrollWheelZoom();scrollWheelZoomEnabled = false;}}});function contains(container, obj){while(obj != null && typeof(obj.tagName) != "undefined"){if(obj == container){return true;}obj = obj.parentNode;}return false; } function addMa{%*i*%}rker(point, title, url, index){var marker = new BMap.Marker(point);var myIcon = new BMap.Icon("http://www.baidu.com/aladdin/img/mapapi/map-icon.png", new BMap.Size(30, 31), {imageOffset: new BMap.Size(0 - (index) * 30, 0)});marker.setIcon(myIcon);map.addOverlay(marker);var label = new BMap.Label('<a hideFocus="true" data-click="{fm:\'alxl\'}" href="'+url+'" target="_blank" class="op-zx-tour-map-label">'+title+'<a>',{offset:new BMap.Size(20,-10)});label.setStyle({ border:"none",backgroundColor:"n{%*i*%}one"});marker.setLabel(label);marker.addEventListener("click", function(event){window.open(url,"_blank");return false;});}}; function loadJsFile(path) {var element = document.createElement('script');element.setAttribute('type', 'text/javascript');element.setAttribute('src', path);element.setAttribute('defer', 'defer');document.getElementsByTagName("head")[0].appendChild(element);} _this.ready(function(e) {loadJsFile(BAIDU_MAP_API_URL); });this.dispose = function(){clearTimeout(mapMouseOverTimer){%*i*%};window[callbackName] = function(){};};});</script>{%/block%}