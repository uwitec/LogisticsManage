<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html style="padding-bottom: 54px;">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">

    <title>404错误页面</title>
    <meta name="description" content="404错误页面" /> 
    <meta name="keywords" content="404视差,模板，jquery,jquery插件" />
    <link rel="Shortcut icon" href="http://www.jq22.com/favicon.ico" />
    <link href="css/demo.css" rel="stylesheet" media="all" />
   
    <script type="text/javascript">
        var txt = "http://www.jq22.com/demo/jQuery40420161113";
        window.g1 = txt.substr(0, 3);
        window.g2 = txt.substr(0, 19);
    </script>
    <script src="js/pace.min.js" charset="gbk"></script>
    <link href="css/pace-theme-barber-shop.css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/1.7.0/jquery.min.js"></script>
    <script src="js/jquery.qrcode.min.js"></script>
    <script type="text/javascript">

        var theme_list_open = false;

        $(document).ready(function () {
            function fixHeight() {
                var headerHeight = $("#switcher").height();
                $("#iframe").attr("height", $(window).height()-54+ "px");
            }
            $(window).resize(function () {
                fixHeight();
            }).resize();

            $('.icon-monitor').addClass('active');

            $(".icon-mobile-3").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-3');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-2").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width-2');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-mobile-1").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('mobile-width');
                $('.icon-tablet,.icon-mobile,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-tablet").click(function () {
                $("#by").css("overflow-y", "auto");
                $('#iframe-wrap').removeClass().addClass('tablet-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });

            $(".icon-monitor").click(function () {
                $("#by").css("overflow-y", "hidden");
                $('#iframe-wrap').removeClass().addClass('full-width');
                $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
                $(this).addClass('active');
                return false;
            });
        });
    </script>
    <script type="text/javascript">
        function Responsive($a) {
            if ($a == true) $("#Device").css("opacity", "100");
            if ($a == false) $("#Device").css("opacity", "0");
            $('#iframe-wrap').removeClass().addClass('full-width');
            $('.icon-tablet,.icon-mobile-1,.icon-monitor,.icon-mobile-2,.icon-mobile-3').removeClass('active');
            $(this).addClass('active');
            return false;
        };
    </script>
</head>
<body id="by" style="overflow-y: hidden" >
    <div id="switcher">
        <div class="center">
            <ul>
                <div id="Device">
                    <li class="device-monitor"><a href="javascript:">
                        <div class="icon-monitor">
                        </div>
                    </a></li>
                    <li class="device-mobile"><a href="javascript:">
                        <div class="icon-tablet">
                        </div>
                    </a></li>
                    <li class="device-mobile"><a href="javascript:">
                        <div class="icon-mobile-1">
                        </div>
                    </a></li>
                    <li class="device-mobile-2"><a href="javascript:">
                        <div class="icon-mobile-2">
                        </div>
                    </a></li>
                    <li class="device-mobile-3"><a href="javascript:">
                        <div class="icon-mobile-3">
                        </div>
                    </a></li>
                </div>
                
                <script>
                jQuery('#output').qrcode({width:150,height: 150,text: window.location.href});
                </script>
                <li class="remove_frame"><a href="http://www.jq22.com/demo/jQuery40420161113"  title="移除框架">
                </a></li>
               
            </ul>
        </div>
    </div>
    <div id="iframe-wrap">
        <iframe id="iframe" src="http://www.jq22.com/demo/jQuery40420161113" frameborder="0"  width="100%">
        </iframe>
    </div>
 


    
    
    

    <script type="text/javascript">
        $(document).ready(function () {
            $(".fdr").click(function () {
                $(".fdad").hide();
            });
        });
    </script>

    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?b3a3fc356d0af38b811a0ef8d50716b8";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
</script>

</body>
</html>
