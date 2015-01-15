<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page  import="momo.jaja.Submit_goodsStub"%>
    <%@ page import="momo.jaja.*" %>
    <%@ page import="search.*" %>
    <%@ page import="myrent.*"%>
<html>
<head>
		<title>GOOD</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="template/js/jquery.min.js"></script>
		<script src="template/js/jquery.dropotron.min.js"></script>
		<script src="template/js/skel.min.js"></script>
		<script src="template/js/skel-layers.min.js"></script>
		<script src="template/js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="template/css/skel.css" />
			<link rel="stylesheet" href="template/css/style.css" />
			<link rel="stylesheet" href="template/css/style-wide.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
<body>

<!-- 
<div style="background-color: #30FFFF;margin:0 auto;display: table;padding:5px;">
<table align="center" border="3">
<tr><td>
<form method="GET">
	<input type = "submit" name="renttype" value="myrent" />
</form>
</td><td>
<form method="GET"><input type="submit" name="renttype" value="rent"></form>
</td>
 -->
<%

String account="";
//session.setAttribute("usr_account", "MinChuan");
//session.setAttribute("usr_id", "ken");
//out.print(request.getParameter("renttype"));
String renttype=request.getParameter("renttype");
account=(String)session.getAttribute("usr_account");
String userID = "";
if(session.getAttribute("usr_account")==null){
	//out.println("user_account："+session.getAttribute("usr_account"));
	//response.sendRedirect("http://140.118.109.39:8080/Login/login.jsp");
	out.print("<meta http-equiv=\"refresh\" content=\"5;url=http://140.118.109.39:8080/jsp/login.jsp\" />");
	out.print("<script>alert(\"Please log in your account\");</script>");
}else{
	userID = (String) session.getAttribute("usr_id");
	account=(String)session.getAttribute("usr_account");
	//out.println("user_account："+session.getAttribute("usr_account"));
}
/*if("myrent".equals(renttype)){out.print(getmyrent(account));}


else if("rent".equals(renttype)){out.print("rent");}
else {
	out.print(getmyrent(account));
	}*/

%>
<!-- 
</table>
</div>
 -->
<!-- Wrapper -->
			<div class="wrapper style1">

				<!-- Header -->
					<div id="header" class="skel-panels-fixed">
						<div id="logo">
							<h1><a href="index.html">Hello World</a></h1>
							<span class="tag">by Group 8</span>
						</div>
						<nav id="nav">
							<ul>
								<li class="active"><a href="index.html">Homepage</a></li>
								<li><a href="goods_management.jsp?renttype=myrent">Merchandise</a></li>
								<li><a href="goods_management.jsp?renttype=rent">Record</a></li>
								<li><a href="submit_goods.jsp">new</a></li>
							</ul>
						</nav>
					</div>

				<!-- Banner 
					<div id="banner" class="container">
						<section>
							<p>This is <strong>Phase Shift</strong>, a responsive HTML5 site template freebie by <a href="http://templated.co">TEMPLATED</a>. Released for free under the <a href="http://templated.co/license">Creative Commons Attribution</a> license, so use it for whatever (personal or commercial) &ndash; just give us credit! Check out more of our stuff at <a href="http://templated.co">our site</a> or follow us on <a href="http://twitter.com/templatedco">Twitter</a>.</p>
							<a href="#" class="button medium">Read More</a>
						</section>
					</div>
					-->

				<!-- Extra -->
				<%
				if("myrent".equals(renttype)){
					out.print(getmyrent(account));
				}else if("rent".equals(renttype)){
					out.print(rent(userID));
					//out.print("rent");
				}else {
					out.print(getmyrent(account));
				}
				%>
				
	</div>

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				<div class="copyright">
					<p>Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)</p>
					<ul class="icons">
						<li><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
						<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
						<li><a href="#" class="fa fa-google-plus"><span>Google+</span></a></li>
					</ul>
				</div>
			</div>
		</div>

</body>
</html>



<%!
	String getmyrent(String account){//我的出租
		String returnvalue="";
		try{
		ItemSearchServiceStub s_stub = new ItemSearchServiceStub();
	
		ItemSearchServiceStub.GetItemByAccount getbyaccount = new ItemSearchServiceStub.GetItemByAccount();
		getbyaccount.setAccount(account);
		ItemSearchServiceStub.GetItemByAccountResponse getbyaccount_response = s_stub.getItemByAccount(getbyaccount);
		ItemSearchServiceStub.ArrayOfString[] result = getbyaccount_response.get_return();
		int threecount=0;
		
		for(int i=0;i<result.length;i++){
			String[] aa = result[i].getArray();
			if(i==0){
				returnvalue+="<div id=\"extra\"><div class=\"container\">";
			}
			if(threecount==0){
				returnvalue+="<div class=\"row no-collapse-1\">";
			}
			
			returnvalue+="<section class=\"4u\"> <a href=\"#\" class=\"image featured\"><img src=pic/"+aa[6]+" alt=\"\"></a><div class=\"box\"><p>"+"name: "+aa[0]+"<br>describe: "+aa[1]+"<br>Rent: "+aa[5]+"<br>date: "+aa[3]+"<br>day: "+aa[4]+"<br>class: "+aa[7]+"/"+aa[8]+"</p><a href=\"submit_goods.jsp?type=update&id="+aa[9]+"&account="+account+"\" class=\"button\">Update</a><a href=\"submit_goods.jsp?type=delete&id="+aa[9]+"&account="+account+"\">Delete</a> </div></section>";
			
			++threecount;
			
			if(threecount==3){
				threecount=0;
				returnvalue+="</div>";
			}
			
			if(i==result.length-1){
				returnvalue+="</div></div>";
			}
			
			
			
			/*returnvalue+="<tr>";
			String[] aa = result[i].getArray();
			returnvalue+="<td><a href=\"submit_goods.jsp?type=update&id="+aa[9]+"&account="+account+"\">"+aa[0]+"</a></td><td><a href=\"submit_goods.jsp?type=delete&id="+aa[9]+"&account="+account+"\">Delete</a></td>";*/
		}
			//return "<tr><td>顯示詳細資料頁</td><td><a href=\"submit_goods.jsp?type=delete&id=19&account=a123456789\">刪除</a></td><td>789</td></tr>";
		}catch(Exception e){System.out.println(e.getMessage());}
	return returnvalue;
	}

	String rent(String userID){
		
		String returnvalue="";
		try{
			MemberInformationStub stubr = new MemberInformationStub();
			MemberInformationStub.Print_LessorRecords requestLessorRecords = new MemberInformationStub.Print_LessorRecords();
			requestLessorRecords.setUserID(userID);
			MemberInformationStub.Print_LessorRecordsResponse responsetLessorRecords = stubr.print_LessorRecords(requestLessorRecords);
			String LessorRecords[] = responsetLessorRecords.get_return();
			returnvalue+="<div id=\"extra\"><div class=\"container\">";
			returnvalue+="<div class=\"row no-collapse-1\">";
			returnvalue+="<section class=\"4u\"> <a href=\"#\" class=\"image featured\"><img src=template/images/bg.jpg alt=\"\"></a><div class=\"box\"><p>";
			returnvalue+="<table border=\"2\" cellpadding=\"2\" cellspacing=\"2\">";
			if(LessorRecords.length>1){
				for (int i = 0; i <= LessorRecords.length - 1; i++) {
					if ((i + 1) % 7 == 1) {
						returnvalue+="<tr>";
					}
					if ((i + 1) % 7 == 1) {
						returnvalue+="<td align='center' width='105'>"+  LessorRecords[i] + "</td>";
					} else if ((i + 1) % 7 == 2) {
						returnvalue+="<td align='center' width='362'><a href='http://140.118.109.39:8080/jsp/MerchandiseInfo.html?id="+LessorRecords[i+4]+"'>"+  LessorRecords[i] + "</a></td>";
					} 
					 else if ((i + 1) % 7 == 3) {
						 returnvalue+="<td align='center' width='90'>"+ LessorRecords[i] + "</td>";
					}
					 else if ((i + 1) % 7 == 4) {
						 int state =Integer.valueOf(LessorRecords[i]) ;
						 String dealString="";
						 switch(state){
						 case 0:
							 dealString="交易開始";
							 break; 
						 case 1:
							 dealString="貨品寄出";
							 break; 
						 case 2:
							 dealString="對方收到";
							 break; 
						 case 3:
							 dealString="對方寄出";
							 break; 
						 case 4:
							 dealString="交易完成";
							 break; 
							 default:
								 break; 
							  }
						 returnvalue+="<td align='center' width='163'>"+  dealString + "</td>";
						
						returnvalue+="</tr>";
					 }
					
				}
			}else{
				returnvalue+="<tr><td colspan='6'>No Found!!</td></tr>";
			}
			returnvalue+="</table>";
			returnvalue+="</p></div></section></div></div>";
		}catch(Exception e){
			
			System.out.println("123"+e.getMessage());
			
		}
		System.out.println(returnvalue);
		return returnvalue;
	}

%>






