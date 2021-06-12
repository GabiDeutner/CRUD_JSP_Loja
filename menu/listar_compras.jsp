<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
  <html>  
   <head>  
   <title>Listar Compras</title>  
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   </head>  
     
  <body>  
  <form name="form" method="post" action="compras.jsp">  
    
  <p><strong>Tabela Compras </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
     <td width=50>
       <strong>  Codigo </strong>
     </td>      
     <td width=50>
       <strong>  Codigo Tipo de pagamento </strong>
     </td>    
     <td width=50>
       <strong>  Codigo fornecedor </strong>
     </td>    
     <td width=50>
       <strong>  Codigo Nota Fiscal </strong>
     </td> 
     <td width=50>
       <strong>  Data compra  </strong>
     </td>  
     <td width=50>
       <strong>  Valor total  </strong>
     </td> 
     <td width=50>
       <strong>  Observacoes  </strong>
     </td>       
   </tr>  
    
    
  <%      
     try {  
        con.setConsulta();  
        ResultSet temp = con.getResultado();  
          
        while (temp.next()){  
        %>  
        <tr>  
           <td width=50>  
               <%out.print(temp.getString("com_codigo"));%>  
           </td>  
           <td width=50>  
               <%out.print(temp.getString("tpg_codigo"));%>  
           </td>  
           <td width=50>  
               <%out.print(temp.getString("for_codigo"));%>  
           </td>  
           <td width=50>  
               <%out.print(temp.getString("nf_codigo"));%>  
           </td> 
           <td width=50>  
               <%out.print(temp.getString("com_datacompra"));%>  
           </td> 
           <td width=50>  
               <%out.print(temp.getString("com_valortotal"));%>  
           </td> 
           <td width=50>  
               <%out.print(temp.getString("com_observacoes"));%>  
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