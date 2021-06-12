<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Alterar Conta Pagar</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="contapagar.jsp">  
  
<jsp:setProperty name="con" property="cp_codigo" value='<%=Integer.parseInt(request.getParameter("cp_codigoField"))%>'/>  
<jsp:setProperty name="con" property="cp_valorconta" value='<%=(request.getParameter("cp_valorcontaField"))%>'/>   
<jsp:setProperty name="con" property="cp_datavencimento" value='<%=(request.getParameter("cp_datavencimentoField"))%>'/>   
<jsp:setProperty name="con" property="cp_datapagamento" value='<%=(request.getParameter("cp_datapagamentoField"))%>'/>   
<jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>   
<jsp:setProperty name="con" property="cp_observacoes" value='<%=(request.getParameter("cp_observacoesField"))%>'/>   


<p><strong>Tabela Conta Pagar </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
     <td width=50>
       <strong>  Codigo </strong>
     </td>      
      <td width=50>
       <strong>  Valor </strong>
     </td>    
      <td width=50>
       <strong>  Data vencimento </strong>
     </td>    
     <td width=50>
       <strong>  Data Pagamento  </strong>
     </td>  
     <td width=50>
       <strong>  Codigo Nota Fiscal </strong>
     </td>    
     <td width=50>
       <strong>  Observacoes  </strong>
     </td>     
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
               <%out.print(temp.getString("cp_codigo"));%>  
           </td>  
           <td width=50>  
               <%out.print(temp.getString("cp_valorconta"));%>  
           </td>  
             <td width=50>  
               <%out.print(temp.getString("cp_datavencimento"));%>  
           </td>  
             <td width=50>  
               <%out.print(temp.getString("cp_datapagamento"));%>  
           </td> 
           <td width=50>  
               <%out.print(temp.getString("nf_codigo"));%>  
           </td>  
           <td width=50>  
               <%out.print(temp.getString("cp_observacoes"));%>  
           </td>  
         </tr>  
         <%}  
      }else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/contapagar.jsp?status=Registro não encontrado");  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cp_codigoField")%> foi alterado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 