<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Cadastrar Itens Venda</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="itensvenda.jsp">  
  
<p><strong>Tabela Itens Venda </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
    <tr>  
        <td width=50><strong>  
          Codigo Itens Venda
       </strong></td>      
       <td width=50><strong>  
          Codigo Venda
       </strong></td>    
       <td width=50><strong>  
          Codigo Produto
       </strong></td>    
       <td width=50><strong>  
          Codigo Tipo Produto
       </strong></td>
       <td width=50><strong>  
        Codigo Nota Fiscal
        </strong></td>  
        <td width=50><strong>  
        Codigo Tipo Pagamento 
        </strong></td>
        <td width=50><strong>  
        Codigo Funcionario  
        </strong></td>       
        <td width=50><strong>  
            Embalagem 
          </strong></td>   
          <td width=50><strong>  
            Quantidade 
          </strong></td>   
          <td width=50><strong>  
            Valor Unitário 
          </strong></td>   
          <td width=50><strong>  
            Desconto 
          </strong></td>   
          <td width=50><strong>  
            Valor Total 
          </strong></td>    
       </tr>  
  
  
<%      
   try {  
  
      con.setItensvenda_codigo(Integer.parseInt(request.getParameter("itensvenda_codigoField")));  
      con.setVen_codigo(request.getParameter("ven_codigoField"));  
      con.setPro_codigo(request.getParameter("pro_codigoField"));  
      con.setTpp_codigo(request.getParameter("tpp_codigoField"));
      con.setNf_codigo(request.getParameter("nf_codigoField"));  
      con.setTpg_codigo(request.getParameter("tpg_codigoField")); 
      con.setFun_codigo(request.getParameter("fun_codigoField"));   
      con.setItv_embalagem(request.getParameter("itv_embalagemField"));   
      con.setItv_qtde(request.getParameter("itv_qtdeField"));   
      con.setItv_valorun(request.getParameter("itv_valorunField"));   
      con.setItv_desc(request.getParameter("itv_descField"));   
      con.setItv_valortotal(request.getParameter("itv_valortotalField"));   
      con.inserirDados();  
                 
      con.setConsulta();  
      ResultSet temp = con.getResultado();  
      temp.next();  
        
      if(request.getParameter("itensvenda_codigoField").equals(temp.getString("itensvenda_codigo")))  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/itensvenda.jsp?status=Registro ja existente");  
        
      do{  
      %>  
      <tr>  
        <td width=50>  
             <%out.print(temp.getString("itensvenda_codigo"));%>  
       </td>  
        <td width=50>  
             <%out.print(temp.getString("ven_codigo"));%>  
       </td>  
        <td width=50>  
             <%out.print(temp.getString("pro_codigo"));%>  
       </td>  
        <td width=50>  
             <%out.print(temp.getString("tpp_codigo"));%>  
       </td>
       <td width=50>  
          <%out.print(temp.getString("nf_codigo"));%>  
       </td>  
       <td width=50>  
          <%out.print(temp.getString("tpg_codigo"));%>  
       </td>
       <td width=50>  
          <%out.print(temp.getString("fun_codigo"));%>  
       </td>       
       <td width=50>  
          <%out.print(temp.getString("itv_embalagem"));%>  
       </td>  
       <td width=50>  
          <%out.print(temp.getString("itv_qtde"));%>  
       </td>  
       <td width=50>  
          <%out.print(temp.getString("itv_valorun"));%>  
       </td>  
       <td width=50>  
          <%out.print(temp.getString("itv_desc"));%>  
       </td>  
       <td width=50>  
          <%out.print(temp.getString("itv_valortotal"));%>  
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itensvenda_codigoField")%> foi cadastrado com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 