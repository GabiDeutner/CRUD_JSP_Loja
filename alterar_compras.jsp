<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_compras.Conexao_compras"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Alterar Compras</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="compras.jsp">  
  
<jsp:setProperty name="con" property="com_codigo" value='<%=Integer.parseInt(request.getParameter("com_codigoField"))%>'/>  
<jsp:setProperty name="con" property="tpg_codigo" value='<%=Integer.parseInt(request.getParameter("tpg_codigoField"))%>'/>   
<jsp:setProperty name="con" property="for_codigo" value='<%=Integer.parseInt(request.getParameter("for_codigoField"))%>'/>   
<jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>   
<jsp:setProperty name="con" property="com_datacompra" value='<%=(request.getParameter("com_datacompraField"))%>'/>   
<jsp:setProperty name="con" property="com_valortotal" value='<%=(request.getParameter("com_valortotalField"))%>'/>           
<jsp:setProperty name="con" property="com_observacoes" value='<%=(request.getParameter("com_observacoesField"))%>'/>           


<p><strong>Tabela Compras </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
    <td width=50><strong>  
      Codigo Compras
   </strong></td>      
   <td width=50><strong>  
      Codigo Tipo Pagamento
   </strong></td>    
   <td width=50><strong>  
      Codigo Fornecedor
   </strong></td>    
   <td width=50><strong>  
      Codigo Nota Fiscal 
   </strong></td>
   <td width=50><strong>  
      Data Compra
    </strong></td>  
    <td width=50><strong>  
      Valor Total  
    </strong></td>
    <td width=50><strong>  
      Observacoes  
    </strong></td>        
   </tr>  
  
  
<%      
   try {  
  
      boolean testa = con.alterarDados();  
                 
      if (con.alterarDados())  
      {           
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
      }else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/compras.jsp?status=Registro nao encontrado");  
      }     
   }catch (Exception e) {  
      e.printStackTrace();  
   }  
     
%>  
</table>  
  <p>  
    <input type="submit" name="Submit" value="voltar">  
</p>    
<p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("com_codigoField")%> foi alterado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 