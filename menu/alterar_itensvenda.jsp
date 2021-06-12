<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_itensvenda.Conexao_itensvenda"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
 <head>  
 <title>Alterar Itens venda</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="itensvenda.jsp">  
   
 <jsp:setProperty name="con" property="itensvenda_codigo" value='<%=Integer.parseInt(request.getParameter("itensvenda_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="ven_codigo" value='<%=Integer.parseInt(request.getParameter("ven_codigoField"))%>'/>   
 <jsp:setProperty name="con" property="pro_codigo" value='<%=Integer.parseInt(request.getParameter("pro_codigoField"))%>'/>   
 <jsp:setProperty name="con" property="tpp_codigo" value='<%=Integer.parseInt(request.getParameter("tpp_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>   
 <jsp:setProperty name="con" property="tpg_codigo" value='<%=Integer.parseInt(request.getParameter("tpg_codigoField"))%>'/>   
 <jsp:setProperty name="con" property="fun_codigo" value='<%=Integer.parseInt(request.getParameter("fun_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="itv_embalagem" value='<%=(request.getParameter("itv_embalagemField"))%>'/>  
 <jsp:setProperty name="con" property="itv_qtde" value='<%=(request.getParameter("itv_qtdeField"))%>'/>   
 <jsp:setProperty name="con" property="itv_valorun" value='<%=(request.getParameter("itv_valorunField"))%>'/>   
 <jsp:setProperty name="con" property="itv_desc" value='<%=(request.getParameter("itv_descField"))%>'/> 
 <jsp:setProperty name="con" property="itv_valortotal" value='<%=(request.getParameter("itv_valortotalField"))%>'/> 
 
 <p><strong>Tabela Itens venda </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50>
        <strong>  Codigo </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Venda </strong>
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
        <strong>  Codigo Tipo de Pagamento  </strong>
      </td> 
      <td width=50>
        <strong>  Codigo Funcionario </strong>
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
        <strong>  Valortotal  </strong>
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
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/itensvenda.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("itensvenda_codigoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 