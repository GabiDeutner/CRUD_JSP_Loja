<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Alterar Fornecedor</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="fornecedor.jsp">  
  
<jsp:setProperty name="con" property="for_codigo" value='<%=Integer.parseInt(request.getParameter("for_codigoField"))%>'/>  
<jsp:setProperty name="con" property="for_nome" value='<%=(request.getParameter("for_nomeField"))%>'/>   
<jsp:setProperty name="con" property="for_endereco" value='<%=(request.getParameter("for_enderecoField"))%>'/>   
<jsp:setProperty name="con" property="for_numero" value='<%=(request.getParameter("for_numeroField"))%>'/>   
<jsp:setProperty name="con" property="for_bairro" value='<%=(request.getParameter("for_bairroField"))%>'/>   
<jsp:setProperty name="con" property="for_cidade" value='<%=(request.getParameter("for_cidadeField"))%>'/>           
<jsp:setProperty name="con" property="for_uf" value='<%=(request.getParameter("for_ufField"))%>'/>
<jsp:setProperty name="con" property="for_cnpjcpf" value='<%=(request.getParameter("for_cnpjcpfField"))%>'/>
<jsp:setProperty name="con" property="for_rgie" value='<%=(request.getParameter("for_rgieField"))%>'/>
<jsp:setProperty name="con" property="for_telefone" value='<%=(request.getParameter("for_telefoneField"))%>'/>
<jsp:setProperty name="con" property="for_fax" value='<%=(request.getParameter("for_faxField"))%>'/>
<jsp:setProperty name="con" property="for_celular" value='<%=(request.getParameter("for_celularField"))%>'/>
<jsp:setProperty name="con" property="for_email" value='<%=(request.getParameter("for_emailField"))%>'/>



<p><strong>Tabela Fornecedor </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
    <td width=50><strong>  
      Codigo 
   </strong></td>      
   <td width=50><strong>  
      Nome
   </strong></td>    
   <td width=50><strong>  
      Endereco
   </strong></td>    
   <td width=50><strong>  
      Numero 
   </strong></td>
   <td width=50><strong>  
      Bairro 
    </strong></td>  
    <td width=50><strong>  
      Cidade  
    </strong></td> 
    <td width=50><strong>  
        UF 
      </strong></td> 
      <td width=50><strong>  
        CNPJCPF  
      </strong></td> 
      <td width=50><strong>  
        RGIE  
      </strong></td> 
      <td width=50><strong>  
        Telefone  
      </strong></td> 
      <td width=50><strong>  
        Fax  
      </strong></td> 
      <td width=50><strong>  
        Celular  
      </strong></td> 
      <td width=50><strong>  
        E-mail  
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
               <%out.print(temp.getString("for_codigo"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("for_nome"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("for_endereco"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("for_numero"));%>  
         </td>
         <td width=50>  
            <%out.print(temp.getString("for_bairro"));%>  
         </td>  
         <td width=50>  
            <%out.print(temp.getString("for_cidade"));%>  
         </td>
         <td width=50>  
            <%out.print(temp.getString("for_uf"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_cnpjcpf"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_rgie"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_telefone"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_fax"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_celular"));%>  
         </td> 
         <td width=50>  
            <%out.print(temp.getString("for_email"));%>  
         </td>       
      </tr>  
         <%}  
      }else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/fornecedor.jsp?status=Registro nao encontrado");  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("for_codigoField")%> foi alterado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 