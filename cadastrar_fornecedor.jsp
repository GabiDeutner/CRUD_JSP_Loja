<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Cadastrar Fornecedor</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="fornecedor.jsp">  
  
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
  
      con.setFor_codigo(Integer.parseInt(request.getParameter("for_codigoField")));  
      con.setFor_nome(request.getParameter("for_nomeField"));  
      con.setFor_endereco(request.getParameter("for_enderecoField"));  
      con.setFor_numero(request.getParameter("for_numeroField"));
      con.setFor_bairro(request.getParameter("for_bairroField"));
      con.setFor_cidade(request.getParameter("for_cidadeField"));   
      con.setFor_uf(request.getParameter("for_ufField"));   
      con.setFor_cnpjcpf(request.getParameter("for_cnpjcpfField"));   
      con.setFor_rgie(request.getParameter("for_rgieField"));   
      con.setFor_telefone(request.getParameter("for_telefoneField"));   
      con.setFor_fax(request.getParameter("for_faxField"));   
      con.setFor_celular(request.getParameter("for_celularField"));   
      con.setFor_email(request.getParameter("for_emailField"));      
      con.inserirDados();  
                 
      con.setConsulta();  
      ResultSet temp = con.getResultado();  
      temp.next();  
        
      if(request.getParameter("for_codigoField").equals(temp.getString("for_codigo")))  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/fornecedor.jsp?status=Registro ja existente");  
        
      do{  
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
               <%out.print(temp.getString("nf_codigo"));%>  
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


      <%}while (temp.next());  
     
   }catch (Exception e) {  
      e.printStackTrace();  
   }  
     
%>  
</table>  
  <p> </p>  
  <p>  
    <input type="submit" name="Submit" value="voltar">  
</p>    
<p><strong>Status:  
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("for_codigoField")%> foi cadastrado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 