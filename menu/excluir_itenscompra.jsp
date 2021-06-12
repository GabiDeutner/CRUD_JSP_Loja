<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<title>Excluir Itens compra</title>  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
</head>  
  
<body>  
<form name="form1" method="post" action="itenscompra.jsp">  
  
<p><strong>Tabela Itens compra </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
    <tr>  
        <td width=50><strong>  
          Codigo Itens Compra
       </strong></td>      
       <td width=50><strong>  
          Codigo Compra
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
          Codigo Fornecedor  
        </strong></td>
        <td width=50><strong>  
          Codigo Tipo Pagamento 
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
  
      con.setItenscompra_codigo(Integer.parseInt(request.getParameter(itenscompra_codigoField")));  
  
      if (con.excluirDados())  
      {  
         con.setConsulta();  
         ResultSet temp = con.getResultado();  
        
         while (temp.next()){  
         %>  
         <tr>  
            <td width=50>  
                 <%out.print(temp.getString("itenscompra_codigo"));%>  
           </td>  
            <td width=50>  
                 <%out.print(temp.getString("com_codigo"));%>  
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
              <%out.print(temp.getString("for_codigo"));%>  
           </td>
           <td width=50>  
              <%out.print(temp.getString("pro_codigo"));%>  
           </td>       
           <td width=50>  
              <%out.print(temp.getString("itc_embalagem"));%>  
           </td>  
           <td width=50>  
              <%out.print(temp.getString("itc_qtde"));%>  
           </td>  
           <td width=50>  
              <%out.print(temp.getString("itc_valorun"));%>  
           </td>  
           <td width=50>  
              <%out.print(temp.getString("itc_desc"));%>  
           </td>  
           <td width=50>  
              <%out.print(temp.getString("itc_valortotal"));%>  
           </td>  
        </tr>  
         <%}  
      }  
      else{  
         response.sendRedirect("http://localhost:8084/sistema_loja_noturno/itenscompra.jsp?status=Registro nao encontrado");  
      }     
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
    <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itenscompra_codigoField")%> foi excluido com sucesso">  
      </strong></p>  
</form>  
</body>  
</html> 