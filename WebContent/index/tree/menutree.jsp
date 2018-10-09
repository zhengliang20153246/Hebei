<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<script
	src="${pageContext.request.contextPath}/static/js/jquery-1.6.min.js"type="text/javascript"></script>
	<script
	src="${pageContext.request.contextPath}/index/tree/SimpleTree.js"type="text/javascript"></script>
	<script src='js/stopExecutionOnTimeout.js?t=1'></script>
	<script src='http://www.jq22.com/jquery/jquery-1.10.2.js'></script>
	<script src='js/jquery.velocity.min.js'></script>
	
	
	
<style type="text/css">
.menuTree{ margin-left:0px;}
.menuTree div{ padding-left:1px;}
.menuTree div ul{ overflow:hidden; display:none; height:auto; margin:0;}
.menuTree span{ display:block; height:10px; line-height:25px; padding-left:5px; margin:1px 0; cursor:pointer; border-bottom:1px solid #CCC;}
.menuTree span:hover{ background-color:#e6e6e6; color:#cf0404;}
.menuTree a{ color:#333; text-decoration:none;}
.menuTree a:hover{ color:#06F;}
.menuTree span{height: 35px;}
</style>

</head>

	
<body>
  <p>&nbsp;</p>
<div id="menuTree" class="menuTree"></div>
</body>
</html>
<script type="text/javascript">
var json = [
{
    "name": "科技活动类型",
    "userLevel":"",
},
    {
        "name": "基础研究      ",
        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=1&name=1",
        "userLevel":"+",
        "list": [
            {   
            	//显示名称
                "name": "一级学科",
                //跳转名称
                "url" :"#",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "语文",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=语文",
                        "userLevel":""
                    },
                    {
                        "name": "数学",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=数学",
                        "userLevel":""
                    },
                    {
                        "name": "英语",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=英语",
                        "userLevel":""
                    },
                    {
                        "name": "化学",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=化学",
                        "userLevel":""
                    },
                    {
                        "name": "美术",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=美术",
                        "userLevel":""
                    }
                ]
            },
            {
            	//显示名称
                "name": "二级学科",
                //跳转名称
                "url" :"#",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                     {
                        "name": "语文",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=语文",
                        "userLevel":""
                    },
                    {
                        "name": "数学",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=数学",
                        "userLevel":""
                    },
                    {
                        "name": "英语",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=英语",
                        "userLevel":""
                    },
                    {
                        "name": "化学",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=化学",
                        "userLevel":""
                    },
                    {
                        "name": "美术",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=2&name=美术",
                        "userLevel":""
                    }
                ]
            }
           
           
            
        ]
    },
    {
        "name": "非基础研究     ",
        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=1&name=2",
        "userLevel":"+",
        "list": [
            {
            	//显示名称
                "name": "应用研究",
                //跳转名称
                "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=3$name=应用研究",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "电子信息",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=电子信息",
                        "userLevel":""
                    },
                    {
                        "name": "光机电一体化",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=光机电一体化",
                        "userLevel":""
                    }
                ]
            },
            {
            	//显示名称
                "name": "试验发展",
                //跳转名称
                "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=3$name=试验发展",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "新材料及应用",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=新材料及应用",
                        "userLevel":""
                    },
                    {
                        "name": "现代农业",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=现代农业",
                        "userLevel":""
                    }
                ]
            },
            {
            	//显示名称
                "name": "研究发展与成果应用",
                //跳转名称
                "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=3$name=研究发展与成果应用",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "新能源与高效节能",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=新能源与高效节能",
                        "userLevel":""
                    },
                    {
                        "name": "资源与环境",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=资源与环境",
                        "userLevel":""
                    }
                ]
            },
            {
            	//显示名称
                "name": "技术推广与科技服务",
                //跳转名称
                "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=3$name=技术推广与科技服务",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "高技术服务业",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=高技术服务业",
                        "userLevel":""
                    },
                    {
                        "name": "海洋",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=海洋",
                        "userLevel":""
                    }
                ]
            },
            {
            	//显示名称
                "name": "生产性活动 ",
                //跳转名称
                "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=3$name=生产性活动",
                //用户等级
                "userLevel":"+",
                //下级
                "list": [
                    {
                        "name": "社会公共事业",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=社会公共事业",
                        "userLevel":""
                    },
                    {
                        "name": "医疗卫生",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=医疗卫生",
                        "userLevel":""
                    },
                    {
                        "name": "其它",
                        "url" :"${pageContext.request.contextPath}/admin/needsearchServlet?method=fenleisearch&shendu=4$name=其它",
                        "userLevel":""
                    }
                ]
            }
        ]
    }
]
/*递归实现获取无级树数据并生成DOM结构*/
	var str = "";
	var forTree = function(o){
	 	for(var i=0;i<o.length;i++){
	   		 var urlstr = "";
			 try{
	 				if(typeof o[i]["url"] == "undefined"){
			   	   		urlstr = "<div><span>"+o[i]["userLevel"]+ o[i]["name"] +"</span><ul>";
	 				}else{
	 					urlstr = "<div><span>"+o[i]["userLevel"]+"<a target=leftAction href="+ o[i]["url"] +">"+ o[i]["name"] +"</a></span><ul>"; 
	 				}
	 			str += urlstr;
	 			if(o[i]["list"] != null){
	 				forTree(o[i]["list"]);
	 			}
	   		 str += "</ul></div>";
	 		}catch(e){}
	 }
	 return str;
	}
	/*添加无级树*/
	document.getElementById("menuTree").innerHTML = forTree(json);

	/*树形菜单*/
	var menuTree = function(){
	 //给有子对象的元素加
		 $("#menuTree ul").each(function(index, element) {
	 		var ulContent = $(element).html();
	 		var spanContent = $(element).siblings("span").html();
	 		if(ulContent){
				 $(element).siblings("span").html(spanContent) 
	 		}
		 });

		 $("#menuTree").find("div span").click(function(){
		 	 var ul = $(this).siblings("ul");
			 var spanStr = $(this).html();
		 	 var spanContent = spanStr.substr(3,spanStr.length);
			 if(ul.find("div").html() != null){
				 if(ul.css("display") == "none"){
					 ul.show(300);
		 			 // $(this).html(" - " + spanContent);
		 		 }else{
		 			ul.hide(300);
		 			// $(this).html(" + " + spanContent);
		 		 }
		 	}
		 })
	}()

	/*树形列表展开*/
	$("#btn_open").click(function(){
		$("#menuTree ul").show(300);
	 	curzt("-");
	})

	/*收缩*/
	$("#btn_close").click(function(){
	 	$("#menuTree ul").hide(300);
	 	curzt("+");
	})
	function curzt(v){
	 $("#menuTree span").each(function(index, element) {
		 var ul = $(this).siblings("ul");
		 var spanStr = $(this).html();
		 var spanContent = spanStr.substr(3,spanStr.length);
		 if(ul.find("div").html() != null){
	 		$(this).html("["+ v +"] " + spanContent);
	 	 }
	 }); 
	}
</script>