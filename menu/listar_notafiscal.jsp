    <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_notafiscal.Conexao_notafiscal"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
   <html>  
    <head>  
    <title>Listar Nota Fiscal</title>  
    <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
    </head>  
      
   <body>  
   <form name="form" method="post" action="notafiscal.jsp">  
     
   <p><strong>Tabela Nota Fiscal </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Codigo 
    </strong></td>      
	<td width=50><strong>  
       Valor 
    </strong></td>    
	<td width=50><strong>  
       Taxa 
    </strong></td>    
    <td width=50><strong>  
       Valor Imposto  
    </strong></td>      
    </tr>  
     
     
   <%      
      try {  
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
           
         while (temp.next()){  
         %>  
         <tr>  
           <td width=50>  
                <%out.print(temp.getString("nf_codigo"));%>  
          </td>  
           <td width=50>  
                <%out.print(temp.getString("nf_valornf"));%>  
          </td>  
		   <td width=50>  
                <%out.print(temp.getString("nf_taxaimpostonf"));%>  
          </td>  
		   <td width=50>  
                <%out.print(temp.getString("nf_valorimposto"));%>  
          </td>  
       </tr>  
         <%}  
        
      }catch (Exception e) {  
         e.printStackTrace();  
      }  
        
   %>  
   </table>  
     <p>  
       <input type="submit" name="Submit" value="voltar">  
   </p>  
   </form>  
   </body>  
   </html>  