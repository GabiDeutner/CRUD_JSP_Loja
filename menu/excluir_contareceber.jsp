<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Excluir Conta Receber</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="contareceber.jsp">  
   
 <p><strong>Tabela Conta Receber </strong></p>  
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
        <strong>  Data Recebimento  </strong>
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
   
       con.setCr_codigo(Integer.parseInt(request.getParameter("cr_codigoField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
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
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/contareceber.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("cr_codigoField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 