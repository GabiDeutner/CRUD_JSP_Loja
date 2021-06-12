<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Vendas</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="vendas.jsp">  
   
 <p><strong>Tabela Vendas </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50>
        <strong>  Codigo </strong>
      </td> 
      <td width=50>
        <strong>  Codigo funcionario </strong>
      </td>      
      <td width=50>
        <strong>  Codigo Tipo de pagamento </strong>
      </td>         
      <td width=50>
        <strong>  Codigo Nota Fiscal </strong>
      </td> 
      <td width=50>
        <strong>  Data venda  </strong>
      </td>  
      <td width=50>
        <strong>  Valor total  </strong>
      </td> 
      <td width=50>
        <strong>  Observacoes  </strong>
      </td>  
    </tr>  
   
   
 <%      
    try {  
   
       con.setVen_codigo(Integer.parseInt(request.getParameter("ven_codigoField")));
       con.setFun_codigo(Integer.parseInt(request.getParameter("fun_codigoField")));   
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));         
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField"))); 
       con.setVen_datavenda(request.getParameter("ven_datavendaField")); 
       con.setVen_valortotal(request.getParameter("ven_valortotalField")); 
       con.setVen_observacoes(request.getParameter("ven_observacoesField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("ven_codigoField").equals(temp.getString("ven_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/vendas.jsp?status=Registro já existente");  
         
       do{  
       %>  
        <tr>  
           <td width=50>  
                <%out.print(temp.getString("ven_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("fun_codigo"));%>  
            </td>  
            <td width=50>  
                <%out.print(temp.getString("tpg_codigo"));%>  
            </td>  
            <td width=50>  
                <%out.print(temp.getString("nf_codigo"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("ven_datavenda"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("ven_valortotal"));%>  
            </td> 
            <td width=50>  
                <%out.print(temp.getString("ven_observacoes"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("ven_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 