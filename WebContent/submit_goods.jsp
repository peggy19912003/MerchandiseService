<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page  import="momo.jaja.Submit_goodsStub"
			import="java.io.File"
   			import="java.util.ArrayList"
   			import="java.util.List"
   			import="java.util.Iterator"
   			import="java.text.SimpleDateFormat"
   			import="java.text.DateFormat"%>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*"
import="org.apache.commons.io.FilenameUtils" %>
<%@ page import="momo.jaja.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script language=javascript>
      function updateData(v)
      {
        var value=v.options[v.selectedIndex].value;
        $("#sclass").empty(); 
        if (value!="") 
        {
          jQuery.post("getsclass.jsp","type="+value,updatesclass);
        }
      }
      function updatesclass(data)
      {
        var numberData=jQuery.trim(data).split("\n");
        var number=document.getElementById("sclass");
        for (i=0;i<numberData.length;i++)
        {
          value=numberData[i]
          option=new Option(value,value); 
          number.options[i]=option; 
        }
      }
</script>
<title>好租!!</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- DataTables CSS -->
<link
	href="./bootstrap/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
	rel="stylesheet">
<!-- DataTables Responsive CSS -->
<link
	href="./bootstrap/bower_components/datatables-responsive/css/dataTables.responsive.css"
	rel="stylesheet">
<!-- MetisMenu CSS -->
<link
	href="./bootstrap/bower_components/metisMenu/dist/metisMenu.min.css"
	rel="stylesheet">
<!-- Custom Fonts -->
<link href="./bootstrap/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<div ng-app="" ng-controller="customersController">
		
		<div class="row">
			<div class="col-md-2">
				<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><h2>Hello World!</h2></li>
					<li><a href="MemberCenter.jsp">
						<h3><span class="glyphicon glyphicon-user"></span>Member Center</h3></a></li>
					<li><a href="submit_goods.jsp">
						<h3><span class="glyphicon glyphicon-cloud-upload"></span>Upload My Merchandise</h3></a></li>
					<li><a href="goods_management.jsp">
						<h3><span class="glyphicon glyphicon-list-alt"></span>Merchandise Management</h3></a></li>
						
						
					<li><a href="index.html">
						<h3>All Categories</h3></a></li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 數位<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=11">手機/平板/配件</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=12">藍芽/耳機</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=13">電玩</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 家電<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=21">美容/按摩</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=22">電視/音響</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=23">清淨除濕</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=24">淨/飲水/咖啡機</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=25">暖氣/電風扇</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=26">廚房家電</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 生活<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=31">玩具</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=32">寢具/桌椅</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=33">餐廚</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=34">設計雜貨</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=35">文具</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=36">電工/五金/園藝</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=37">汽機車百貨</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=38">運動/戶外</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=39">情趣</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 服飾<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=41">男裝</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=42">女裝</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=43">童裝</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=44">鞋子</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=45">內睡衣</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=46">美妝/保養品</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=47">手錶/精品</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=48">珠寶</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 文學<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=51">電腦資訊</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=52">語言學習</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=53">教科考用</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=54">宗教信仰</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=55">健康養生</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=56">藝術/設計</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=57">旅遊</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=58">親子教育</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=59">外文書</a>
                            </li>
                            <li>
                                <a href="index.html?RGNO=510">雜類</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li>
						<a href="#"><i class="fa fa-wrench fa-fw"></i> 其他<span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
                            <li>
                                <a href="index.html?RGNO=61">其他</a>
                            </li>
                            
                        </ul>
                        <!-- /.nav-second-level -->
					</li>
					<li><a href="logout.jsp">
						<h3><span class="glyphicon glyphicon-log-out"></span>Logout</h3></a></li>
				</ul>
				</div>
				</div>
			</div>
			<div>
			<h1 class="page-header">Upload My Merchandise</h1>
					<% String ddd = "12345";
					String name="";String describe="";int days=0;String pic="";Double money=0.0;String bclass="";String sclass="";
					boolean isupdate = false; String up="false";
					System.out.println("type"+request.getParameter("type"));
					System.out.println("submit"+request.getParameter("submit"));
					System.out.println("update"+request.getParameter("update"));
					System.out.println("up"+request.getParameter("up"));
					if("update".equals(request.getParameter("type"))){
						System.out.println("in update get parameter");
						isupdate = true;
						int id=Integer.parseInt(request.getParameter("id"));
						String account=request.getParameter("account");
						String[] result=querybuid(id,account);
						if(result!=null){
							name=result[1];describe=result[2];days=Integer.parseInt(result[5]);pic=result[7];money=Double.parseDouble(result[6]);
							bclass=result[8];sclass=result[9];
						}
					}
					%>
					
						<form action="submit_goods.jsp" method="POST" name="submitgoods" enctype="multipart/form-data"><!-- enctype="multipart/form-data"  -->
							名稱：<input type="text" name="name" value=<%out.print(name);%> ><br/>
							描述：<input type="text" name="describe" value=<%out.print(describe);%>  /><br/>
							出租天數：<input type="text" name="days" value=<%out.print(days);%> ><br/>
							照片：<input type="file" name="pic" /><br>
							金額：<input type="text" name="money" value=<%out.print(money);%> ><br>
							大分類：<select id="bclass" name="bclass" onchange="updateData(this)">
							<% 
							//dropdownlist elements
							Submit_goodsStub stub = new Submit_goodsStub();
							Submit_goodsStub.Query_bclass querybclass = new Submit_goodsStub.Query_bclass();
							Submit_goodsStub.Query_bclassResponse bclassresponse = stub.query_bclass(querybclass);
							String[] result=bclassresponse.get_return(); 		
					 		
					 		for(int i=0;i<result.length;i+=2){
					 			out.print("<option value="+result[i+1]+">"+result[i+1]+"</option>");
					 		}
							%>
								</select><br>
							小分類：<select id="sclass" name="sclass" value=<%out.print(sclass);%>>
							</select><br>
							
							<%
							boolean issubmit = false;
							if(isupdate){
								out.print("<input type=\"hidden\" name=\"up\" value=\"true\"/>");
								out.print("<input type=\"submit\" name=\"update\" value=\"update\"/>");
								issubmit=false;
							}else if("delete".equals(request.getParameter("type"))){
								System.out.println("in delete equals");
								int id=Integer.parseInt(request.getParameter("id"));
								String account=request.getParameter("account");
								
								stub = new Submit_goodsStub();
						 		Submit_goodsStub.Delete_mygood deletegood = new Submit_goodsStub.Delete_mygood();
						 		deletegood.setId(id);deletegood.setAccount(account);
						 		Submit_goodsStub.Delete_mygoodResponse response_delgood = stub.delete_mygood(deletegood);
					
					
						 		String[] result0=querybuid(id,account);
						 		if(result0!=null){
						 			name=result[1];describe=result[2];days=Integer.parseInt(result[5]);pic=result[7];money=Double.parseDouble(result[6]);
						 			bclass=result[8];sclass=result[9];
						 			File f = new File(application.getRealPath("/pic/")+pic);
						 			    if (f.exists()) {
						 			    	try{
						 			    		f.delete();
						 			    	}catch(Exception e){
						 			    		out.print("<meta http-equiv=\"refresh\" content=\"0;url=goods_management.jsp?renttype=myrent\" />");
						 			    	}
						 			    }
						 		}
						 		
								out.print("<meta http-equiv=\"refresh\" content=\"0;url=goods_management.jsp?renttype=myrent\" />");
							}else{
								if(request.getParameter("update")==null){
									out.print("<input type=\"hidden\" name=\"up\" value=\"false\"/>");
									out.print("<input type=\"submit\" name=\"submit\" value=\"submit\"/>");
									issubmit=true;
								}
								if(request.getParameter("submit")!=null){issubmit=true;}
							}
							%>
							<!-- 送出<input type="submit" name="submit"/> -->
							<input type="reset" value="reset"/>
						</form>
			
			</div>
		</div>
	</div>
<!-- jQuery -->
	<script src="./bootstrap/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="./bootstrap/bower_components/metisMenu/dist/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="./bootstrap/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script
		src="./bootstrap/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
<script>
$(function() {

    $('#side-menu').metisMenu();

});
</script>


<%
/******************session*********************/
String account="";
//session.setAttribute("usr_account", "MinChuan");
if(session.getAttribute("usr_account")==null){
	//out.println("user_account："+session.getAttribute("usr_account"));
	out.print("<meta http-equiv=\"refresh\" content=\"5;url=http://140.118.109.39:8080/jsp/login.jsp\" />");
}else{
	account=(String)session.getAttribute("usr_account");
	//out.println("user_account："+session.getAttribute("usr_account"));
}

/**********************************************/


DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
String today = df.format(new java.util.Date());

 request.setCharacterEncoding("UTF-8");

 		/**************************upload file****************************/
 		File TempDirectory = new File("/tmp");
 		int MaxMemorySize = 1024 * 1024 * 1024;
 		boolean writeToFile = true;
		String allowedFileTypes = ".gif .jpg .jpeg .png .bmp";  //legal file type

		String saveDirectory = application.getRealPath("/pic");
		String path2 = request.getRequestURI();
		int end1 = path2.lastIndexOf('/')+1;
		String webdir = path2.substring(0,end1);
		String realdir = request.getRealPath(webdir);
		System.out.println("real path"+realdir);
		// Check that we have a file upload request
	    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
		if(isMultipart){
	    //out.println("isMultipart=" + isMultipart + "<br>");
	 	
	    // Create a factory for disk-based file items
	    DiskFileItemFactory factory = new DiskFileItemFactory(MaxMemorySize, TempDirectory);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// Set overall request size constraint
		upload.setSizeMax(MaxMemorySize);

		//Create a progress listener
		ProgressListener progressListener = new ProgressListener() {
        	private long megaBytes = -1;
	        public void update(long pBytesRead, long pContentLength, int pItems) {
	            long mBytes = pBytesRead / 1000000;
	            if (megaBytes == mBytes) {
	                return;
	            }
	            megaBytes = mBytes;
	            System.out.println("We are currently reading item " + pItems);
	            if (pContentLength == -1) {
	                System.out.println("So far, " + pBytesRead  + " bytes have been read.");
	            } else {
	                System.out.println("So far, " + pBytesRead + " of " + pContentLength + " bytes have been read.");
	            }
	        }
   	 	};
    	upload.setProgressListener(progressListener);

    	try {
    		        // Parse the request
    		        List items = upload.parseRequest(request);

    		        // Process the uploaded items
    		        Iterator iter = items.iterator();
    		        while (iter.hasNext()) {
    		            FileItem item = (FileItem) iter.next();

    		            if (item.isFormField()) {
    		                // Process a regular form field
    		                //processFormField(item);      
    		                String fname = item.getFieldName();
    		                String value = item.getString("UTF-8");
    		                out.println(fname + "=" + value + "<br />");
    		                if(fname.equals("name")) name=value;
    		                if(fname.equals("describe")) describe=value;
    		                if(fname.equals("days")) days=Integer.parseInt(value);
    		                if(fname.equals("money")) money=Double.parseDouble(value);
    		                if(fname.equals("bclass")) bclass=value;
    		                if(fname.equals("sclass")) sclass=value;
    		                if(fname.equals("up")){ up=value; System.out.println("up have!!!"+up);}
    		            } else {
    		                // Process a file upload
    		                //processUploadedFile(item);                       
    		                String fieldName = item.getFieldName();
    		                String fileName = item.getName();
    		                String contentType = item.getContentType();
    		                boolean isInMemory = item.isInMemory();
    		                long sizeInBytes = item.getSize();
    		              //  out.println("fieldName=" + fieldName + "<br />");
    		             //   out.println("fileName=" + fileName + "<br />");
    		             //   out.println("contentType=" + contentType + "<br />");
    		             //   out.println("isInMemory=" + isInMemory + "<br />");
    		            //    out.println("sizeInBytes=" + sizeInBytes + "<br />");
    		                if (fileName != null && !"".equals(fileName)) {
    		                    if (writeToFile) {
    		                        String orifilename=FilenameUtils.getName(fileName);
    		                    	fileName = account+"_"+new SimpleDateFormat("yyyyMMddHHmmss").format(new java.util.Date())+orifilename.substring(orifilename.length()-4);
    		                        pic=fileName;
    		                     //   out.println("fileName to be saved=" + new SimpleDateFormat("yyyyMMdd").format(new java.util.Date())+fileName + "<br />");
    		                        String extension = FilenameUtils.getExtension(fileName);
    		                        if (allowedFileTypes.indexOf(extension.toLowerCase()) != -1) {
    		                            File uploadedFile = new File(saveDirectory, fileName);                    
    		                            item.write(uploadedFile);
    		                            System.out.println(saveDirectory+fileName+"save ok");
    		                        } else {
    		                            out.println("上傳的檔案不能是" + extension + "<br />");    		                        }
    		                    } else {
    		                        //InputStream uploadedStream = item.getInputStream();
    		                        //...
    		                        //uploadedStream.close();
    		                        // Process a file upload in memory
    		                        byte[] data = item.get();
    		                        out.println("data size=" + data.length + "<br />");
    		                    }
    		                }
    		            }
    		        }
    		    } catch (FileUploadBase.SizeLimitExceededException ex1) {
    		        out.println("上傳檔案超過最大檔案允許大小" + MaxMemorySize / (1024 * 1024) + "MB !");
    		    }
		
 		/**************************upload file****************************/
 		
 		
 		
 		
 		
 		
 		if(issubmit){
 			if("".equals(name)||"".equals(describe)||"".equals(sclass)){
 				out.println("<script>alert(\"some empty!!\");  </script>");
 				
 				
 			}else{
 				stub = new Submit_goodsStub();
 	 	    	 //		/*******set parameter*******
    	 		Submit_goodsStub.Submit submitgood = new Submit_goodsStub.Submit();
    	 		submitgood.setName(name);submitgood.setDescribe(describe);submitgood.setDays(days);
    	 		submitgood.setPic(pic);submitgood.setMoney(money);submitgood.setBclass(bclass);
    	 		submitgood.setSclass(sclass);submitgood.setDate(today);submitgood.setAccount(account);
    	 		Submit_goodsStub.SubmitResponse response_good = stub.submit(submitgood);
    			
    	 		int good_id=response_good.get_return();
    	 		if(good_id!=0) out.println("submit good success!!"+good_id); 
    	 		else out.println("submit good fail!!");
 			}
 			
 			
 		}else{
 			if(up.equals("true")){
	 			stub = new Submit_goodsStub();
				System.out.println(name+describe);
				Submit_goodsStub.Update_mygood updategood = new Submit_goodsStub.Update_mygood();
				updategood.setName(name);updategood.setDescribe(describe);updategood.setDays(days);
				updategood.setPic(pic);updategood.setMoney(money);updategood.setBclass(bclass);
	   	 		updategood.setSclass(sclass);updategood.setDate(today);updategood.setAccount(account);
	   	 		Submit_goodsStub.Update_mygoodResponse responsegood = stub.update_mygood(updategood);
	
	   	 		int good_id=responsegood.get_return();
	   	 		if(good_id!=0) out.println("update good success!!"+good_id); 
	   	 		else out.println("submit good fail!!");
 			}
 		}
    	
 	}
 		
 	
 	
 	%>
<%!
	String[] querybuid(int id, String account){
	String[] result=null;
	try{
			Submit_goodsStub stub = new Submit_goodsStub();
			Submit_goodsStub.Query_goods querygoods = new Submit_goodsStub.Query_goods();
			querygoods.setId(id);
			Submit_goodsStub.Query_goodsResponse responsegood = stub.query_goods(querygoods);
			result = responsegood.get_return();
		
		}catch(Exception e){System.out.println("query by id"+e.getMessage());}
			
	return result;}


%>

</body>
</html>