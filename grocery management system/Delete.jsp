
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String id=request.getParameter("id");
  
    
    String query="delete from products where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="ProductsReports.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="ProductsReports.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>
</html>
