<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contapagar.Conexao_contapagar"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Conta Pagar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="contapagar.jsp">  
   
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
   
       con.setCp_codigo(Integer.parseInt(request.getParameter("cp_codigoField")));  
       con.setCp_valorconta(request.getParameter("cp_valorcontaField"));  
	     con.setCp_datavencimento(request.getParameter("cp_datavencimentoField"));  
	     con.setCp_datapagamento(request.getParameter("cp_datapagamentoField")); 
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));  
       con.setCp_observacoes(request.getParameter("cp_observacoesField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("cp_codigoField").equals(temp.getString("cp_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/contapagar.jsp?status=Registro já existente");  
         
       do{  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cp_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 