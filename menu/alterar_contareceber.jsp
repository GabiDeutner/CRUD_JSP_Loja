<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Alterar Conta Receber</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="contareceber.jsp">  
  
<jsp:setProperty name="con" property="cr_codigo" value='<%=Integer.parseInt(request.getParameter("cr_codigoField"))%>'/>  
<jsp:setProperty name="con" property="cr_valorconta" value='<%=(request.getParameter("cr_valorcontaField"))%>'/>   
<jsp:setProperty name="con" property="cr_datavencimento" value='<%=(request.getParameter("cr_datavencimentoField"))%>'/>   
<jsp:setProperty name="con" property="cr_datarecebimento" value='<%=(request.getParameter("cr_datarecebimentoField"))%>'/>   
<jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>   
<jsp:setProperty name="con" property="cr_observacoes" value='<%=(request.getParameter("cr_observacoesField"))%>'/>           

<p><strong>Tabela Conta Receber </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
    <td width=50><strong>  
      Codigo 
   </strong></td>      
   <td width=50><strong>  
      Valor Conta
   </strong></td>    
   <td width=50><strong>  
      Data Vencimento 
   </strong></td>    
   <td width=50><strong>  
      Data Recebimento  
   </strong></td>
   <td width=50><strong>  
      Codigo 
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
               <%out.print(temp.getString("cr_codigo"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("cr_valorconta"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("cr_datavencimento"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("cr_datarecebimento"));%>  
         </td>
         <td width=50>  
            <%out.print(temp.getString("nf_codigo"));%>  
         </td>  
         <td width=50>  
            <%out.print(temp.getString("cr_observacoes"));%>  
         </td>      
      </tr>  
         <%}  
      }else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/contareceber.jsp?status=Registro nao encontrado");  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cr_codigoField")%> foi alterado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 