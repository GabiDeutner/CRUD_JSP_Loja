<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Conta Receber</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="contareceber.jsp">  
   
 <p><strong>Tabela Conta Receber </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50>
        <strong>  Código </strong>
      </td>      
      <td width=50>
        <strong>  Valor </strong>
      </td>    
      <td width=50>
        <strong>  Data vencimento </strong>
      </td>    
      <td width=50>
        <strong>  Data Recebimento  </strong>
      </td>  
      <td width=50>
        <strong>  Código Nota Fiscal </strong>
      </td>    
      <td width=50>
        <strong>  Observações  </strong>
      </td>     
    </tr>  
   
   
 <%      
    try {  
   
       con.setCr_codigo(Integer.parseInt(request.getParameter("cr_codigoField")));  
       con.setCr_valorconta(request.getParameter("cr_valorcontaField"));  
	     con.setCr_datavencimento(request.getParameter("cr_datavencimentoField"));  
	     con.setCr_datarecebimento(request.getParameter("cr_datarecebimentoField")); 
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));  
       con.setCr_observacoes(request.getParameter("cr_observacoesField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("cr_codigoField").equals(temp.getString("cr_codigo")))  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/contareceber.jsp?status=Registro já existente");  
         
       do{  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cr_codigoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 