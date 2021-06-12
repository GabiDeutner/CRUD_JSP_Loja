<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_tipoproduto.Conexao_tipoproduto"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Cadastrar Tipo Produto</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="tipoproduto.jsp">  
  
<p><strong>Tabela Tipo Produto </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
   <tr>  
    <td width=50><strong>  
      Codigo 
   </strong></td>      
   <td width=50><strong>  
      Descricao
   </strong></td>       
   </tr>  
  
  
<%      
   try {  
  
      con.setTpp_codigo(Integer.parseInt(request.getParameter("tpp_codigoField")));  
      con.setTpp_descricao(request.getParameter("tpp_descricaoField"));  
      con.inserirDados();  
                 
      con.setConsulta();  
      ResultSet temp = con.getResultado();  
      temp.next();  
        
      if(request.getParameter("tpp_codigoField").equals(temp.getString("tpp_codigo")))  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/tipoproduto.jsp?status=Registro ja existente");  
        
      do{  
      %>  
      <tr>  
          <td width=50>  
               <%out.print(temp.getString("tpp_codigo"));%>  
         </td>  
          <td width=50>  
               <%out.print(temp.getString("tpp_descricao"));%>  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("tpp_codigoField")%> foi cadastrado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 