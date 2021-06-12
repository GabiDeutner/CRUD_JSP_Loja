<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_tipopagto.Conexao_tipopagto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Excluir Tipo Pagamento</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="tipopagto.jsp">  
   
 <p><strong>Tabela Tipo Pagamento </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
      <td width=50>
        <strong>  Codigo </strong>
      </td> 
      <td width=50>
        <strong>  Descricao </strong>
      </td>      
      <td width=50>
        <strong>  Quantidade </strong>
      </td>         
      <td width=50>
        <strong>  Ativo </strong>
      </td>    
    </tr>  
   
   
 <%      
    try {  
   
       con.setTpg_codigo(Integer.parseInt(request.getParameter("tpg_codigoField")));  
   
       if (con.excluirDados())  
       {  
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %>  
           <tr>  
              <td width=50>  
                <%out.print(temp.getString("tpg_codigo"));%>  
              </td> 
              <td width=50>  
                  <%out.print(temp.getString("tpg_descricao"));%>  
              </td>  
              <td width=50>  
                  <%out.print(temp.getString("tpg_qtde"));%>  
              </td> 
              <td width=50>  
                  <%out.print(temp.getString("tpg_ativo"));%>  
              </td>  
          </tr>  
          <%}  
       }  
       else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/tipopagto.jsp?status=Registro não encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("tpg_codigoField")%> foi excluido com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 