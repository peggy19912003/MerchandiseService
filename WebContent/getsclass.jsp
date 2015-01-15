<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
    <%@page  import="momo.jaja.Submit_goodsStub"%>
    <%@ page import="momo.jaja.*" %>
<%
String type=request.getParameter("type");


  if (type!=null)
  {
	Submit_goodsStub stub = new Submit_goodsStub();
	Submit_goodsStub.Query_sclass querysclass = new Submit_goodsStub.Query_sclass();
	querysclass.setBclass(type);
	Submit_goodsStub.Query_sclassResponse sclassresponse = stub.query_sclass(querysclass);
	String[] result=sclassresponse.get_return(); 		
		
	for(int i=0;i<result.length;i+=2){
		out.println(result[i+1]);
	}
  }else
    {
	 	Submit_goodsStub stub = new Submit_goodsStub();
		Submit_goodsStub.Query_sclass querysclass = new Submit_goodsStub.Query_sclass();
		querysclass.setBclass("¼Æ¦ì");
		Submit_goodsStub.Query_sclassResponse sclassresponse = stub.query_sclass(querysclass);
		String[] result=sclassresponse.get_return(); 		
			
		for(int i=0;i<result.length;i+=2){
			out.println(result[i+1]);
		}
    }
  
  %>