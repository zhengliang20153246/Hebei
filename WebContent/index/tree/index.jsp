<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel='stylesheet prefetch' href='css/foundation.css'>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	
</head>
<body >
	<div class="htmleaf-container">
		
		<div class="htmleaf-content bgcolor-3">
			<!-- This is mtree list -->
			<ul class=mtree>
			  <li ><a href="#">科技活动类型</a>
			    <ul>
			      <li ><a target="leftAction" href="javascript：void(0)" onclick="${pageContext.request.contextPath}/index/index.jsp">基础研究</a>
			        <ul>
			          <li><a href="#">一级学科</a>
			            <ul>			              
			              <li><a href="#">二级学科</a>
			                <ul>
			                    <li><a target="leftAction" href="${pageContext.request.contextPath}/index/index.jsp">语文</a></li>
			              		<li><a href="#">数学</a></li>
			              		<li><a href="#">英语</a></li>
			              		<li><a href="#">化学</a></li>
			              		<li><a href="#">美术</a></li>
			                </ul>
			              </li>
			              <li><a href="#">语文</a></li>
			              <li><a href="#">数学</a></li>
			              <li><a href="#">英语</a></li>
			              <li><a href="#">化学</a></li>
			              <li><a href="#">美术</a></li>
			            </ul>
			          </li>
			        </ul>
			      </li>
			      <li ><a href="#">应用研究</a>
			        <ul>
			          <li><a href="#">电子信息</a></li>
			          <li><a href="#">光机电一体化</a></li>
			          <li><a href="#">生物技术与制药</a></li>
			          <li><a href="#">新材料及应用</a></li>
			          <li><a href="#">现代农业</a></li>
			          <li><a href="#">新能源与高效节能</a></li>
			          <li><a href="#">资源与环境</a></li>
			          <li><a href="#">高技术服务业</a></li>
			          <li><a href="#">海洋</a></li>
			          <li><a href="#">需求应用行业</a>
			          <ul>
			              <li><a href="#">医药</a></li>
			              <li><a href="#">IT</a></li>
			              <li><a href="#">经理</a></li>
			              <li><a href="#">老师</a></li>
			              <li><a href="#">公务员</a></li>
			          </ul>
			          </li>
			         </ul>
			      </li>
			       <li ><a href="#">试验发展</a>
			        
			      </li>
			       <li ><a href="#">研究发展与成果应用</a>
			        
			      </li>
			       <li ><a href="#">技术推广与科技服务</a>
			      </li>
			       <li ><a href="#">生产性活动 </a>
			        
			      </li>
			     
			    </ul>
			  </li>
			  
			   
			 
			  
			</ul>
		</div>
	</div>
	
	<script src='js/stopExecutionOnTimeout.js?t=1'></script>
	<script src='http://www.jq22.com/jquery/jquery-1.10.2.js'></script>
	<script src='js/jquery.velocity.min.js'></script>
	<script>
	;(function ($, window, document, undefined) {
	    if ($('ul.mtree').length) {
	        var collapsed = true;
	        var close_same_level = false;
	        var duration = 400;
	        var listAnim = true;
	        var easing = 'easeOutQuart';
	        $('.mtree ul').css({
	            'overflow': 'hidden',
	            'height': collapsed ? 0 : 'auto',
	            'display': collapsed ? 'none' : 'block'
	        });
	        var node = $('.mtree li:has(ul)');
	        node.each(function (index, val) {
	            $(this).children(':first-child').css('cursor', 'pointer');
	            $(this).addClass('mtree-node mtree-' + (collapsed ? 'closed' : 'open'));
	            $(this).children('ul').addClass('mtree-level-' + ($(this).parentsUntil($('ul.mtree'), 'ul').length + 1));
	        });
	        $('.mtree li > *:first-child').on('click.mtree-active', function (e) {
	            if ($(this).parent().hasClass('mtree-closed')) {
	                $('.mtree-active').not($(this).parent()).removeClass('mtree-active');
	                $(this).parent().addClass('mtree-active');
	            } else if ($(this).parent().hasClass('mtree-open')) {
	                $(this).parent().removeClass('mtree-active');
	            } else {
	                $('.mtree-active').not($(this).parent()).removeClass('mtree-active');
	                $(this).parent().toggleClass('mtree-active');
	            }
	        });
	        node.children(':first-child').on('click.mtree', function (e) {
	            var el = $(this).parent().children('ul').first();
	            var isOpen = $(this).parent().hasClass('mtree-open');
	            if ((close_same_level || $('.csl').hasClass('active')) && !isOpen) {
	                var close_items = $(this).closest('ul').children('.mtree-open').not($(this).parent()).children('ul');
	                if ($.Velocity) {
	                    close_items.velocity({ height: 0 }, {
	                        duration: duration,
	                        easing: easing,
	                        display: 'none',
	                        delay: 100,
	                        complete: function () {
	                            setNodeClass($(this).parent(), true);
	                        }
	                    });
	                } else {
	                    close_items.delay(100).slideToggle(duration, function () {
	                        setNodeClass($(this).parent(), true);
	                    });
	                }
	            }
	            el.css({ 'height': 'auto' });
	            if (!isOpen && $.Velocity && listAnim)
	                el.find(' > li, li.mtree-open > ul > li').css({ 'opacity': 0 }).velocity('stop').velocity('list');
	            if ($.Velocity) {
	                el.velocity('stop').velocity({
	                    height: isOpen ? [
	                        0,
	                        el.outerHeight()
	                    ] : [
	                        el.outerHeight(),
	                        0
	                    ]
	                }, {
	                    queue: false,
	                    duration: duration,
	                    easing: easing,
	                    display: isOpen ? 'none' : 'block',
	                    begin: setNodeClass($(this).parent(), isOpen),
	                    complete: function () {
	                        if (!isOpen)
	                            $(this).css('height', 'auto');
	                    }
	                });
	            } else {
	                setNodeClass($(this).parent(), isOpen);
	                el.slideToggle(duration);
	            }
	            e.preventDefault();
	        });
	        function setNodeClass(el, isOpen) {
	            if (isOpen) {
	                el.removeClass('mtree-open').addClass('mtree-closed');
	            } else {
	                el.removeClass('mtree-closed').addClass('mtree-open');
	            }
	        }
	        if ($.Velocity && listAnim) {
	            $.Velocity.Sequences.list = function (element, options, index, size) {
	                $.Velocity.animate(element, {
	                    opacity: [
	                        1,
	                        0
	                    ],
	                    translateY: [
	                        0,
	                        -(index + 1)
	                    ]
	                }, {
	                    delay: index * (duration / size / 2),
	                    duration: duration,
	                    easing: easing
	                });
	            };
	        }
	        if ($('.mtree').css('opacity') == 0) {
	            if ($.Velocity) {
	                $('.mtree').css('opacity', 1).children().css('opacity', 0).velocity('list');
	            } else {
	                $('.mtree').show(200);
	            }
	        }
	    }
	}(jQuery, this, this.document));
	
	$(document).ready(function () {
	    var mtree = $('ul.mtree');
	    mtree.wrap('<div class=mtree-demo></div>');
	    var skins = [
	        'bubba',
	        'skinny',
	        'transit',
	        'jet',
	        'nix'
	    ];
	    mtree.addClass(skins[0]);    
	    var s = $('.mtree-skin-selector');
	    $.each(skins, function (index, val) {
	        s.find('ul').append('<li><button class="small skin">' + val + '</button></li>');
	    });
	    s.find('ul').append('<li><button class="small csl active">Close Same Level</button></li>');
	    s.find('button.skin').each(function (index) {
	        $(this).on('click.mtree-skin-selector', function () {
	            s.find('button.skin.active').removeClass('active');
	            $(this).addClass('active');
	            mtree.removeClass(skins.join(' ')).addClass(skins[index]);
	        });
	    });
	    s.find('button:first').addClass('active');
	    s.find('.csl').on('click.mtree-close-same-level', function () {
	        $(this).toggleClass('active');
	    });
	});
	</script>
</body>
</html>