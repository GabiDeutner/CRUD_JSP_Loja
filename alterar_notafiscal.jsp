 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_notafiscal.Conexao_notafiscal"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
 <head>  
 <title>Alterar Nota Fiscal</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="notafiscal.jsp">  
   
 <jsp:setProperty name="con" property="nf_codigo" value='<%=Integer.parseInt(request.getParameter("nf_codigoField"))%>'/>  
 <jsp:setProperty name="con" property="nf_valornf" value='<%=(request.getParameter("nf_valornfField"))%>'/>   
 <jsp:setProperty name="con" property="nf_taxaimpostonf" value='<%=(request.getParameter("nf_taxaimpostonfField"))%>'/>   
 <jsp:setProperty name="con" property="nf_valorimposto" value='<%=(request.getParameter("nf_valorimpostoField"))%>'/>   
 
 
 <p><strong>Tabela Nota Fiscal </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       Codigo 
    </strong></td>      
	<td width=50><strong>  
       Valor 
    </strong></td>    
	<td width=50><strong>  
       Taxa 
    </strong></td>    
    <td width=50><strong>  
       Valor Imposto  
    </strong></td>      
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
                <%out.print(temp.getString("nf_codigo"));%>  
          </td>  
           <td width=50>  
                <%out.print(temp.getString("nf_valornf"));%>  
          </td>  
		   <td width=50>  
                <%out.print(temp.getString("nf_taxaimpostonf"));%>  
          </td>  
		   <td width=50>  
                <%out.print(temp.getString("nf_valorimposto"));%>  
          </td>  
       </tr>  
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/notafiscal.jsp?status=Registro nao encontrado");  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("nf_codigoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 