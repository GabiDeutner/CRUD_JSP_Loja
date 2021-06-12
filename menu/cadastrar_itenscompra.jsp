<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itenscompra.Conexao_itenscompra"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Itens Compra</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itenscompra.jsp">  
   
 <p><strong>Tabela Itens Compra </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50>
        <strong>  Codigo </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Compra </strong>
      </td>      
      <td width=50>
        <strong>  Codigo Produto </strong>
      </td>         
      <td width=50>
        <strong>  Codigo Tipo de Produto </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Nota Fiscal </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Fornecedor </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Tipo de Pagamento </strong>
      </td>
      <td width=50>
        <strong>  Embalagem  </strong>
      </td>  
      <td width=50>
        <strong>  Quantidade  </strong>
      </td> 
      <td width=50>
        <strong>  Valor Unitario  </strong>
      </td>  
      <td width=50>
        <strong>  Desconto  </strong>
      </td>   
      <td width=50>
        <strong>  Valor total  </strong>
      </td>
    </tr>  
   
   
 <%      
    try {  
   
       con.setItenscompra_codigo(Integer.parseInt(request.getParameter("itenscompra_codigoField")));
       con.setCom_codigo(Integer.parseInt(request.getParameter("com_codigoField")));   
       con.setPro_codigo(Integer.parseInt(request.getParameter("pro_codigoField")));         
       con.setTpp_codigo(Integer.parseInt(request.getParameter("tpp_codigoField"))); 
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField"))); 
       con.setFor_codigo(Integer.parseInt(request.getParameter("for_codigoField"))); 
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField"))); 
       con.setItc_embalagem(request.getParameter("itc_embalagemField"));
       con.setItc_qtde(request.getParameter("itc_qtdeField"));
       con.setItc_valorun(request.getParameter("itc_valorunField"));
       con.setItc_desc(request.getParameter("itc_descField"));
       con.setItc_valortotal(request.getParameter("itc_valortotalField"));
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("itenscompra_codigoField").equals(temp.getString("itenscompra_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/itenscompra.jsp?status=Registro já existente");  
         
       do{  
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
                <%out.print(temp.getString("tpg_codigo"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itenscompra_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 