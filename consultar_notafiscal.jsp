<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_notafiscal.Conexao_notafiscal"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Nota Fiscal</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setNf_codigo(Integer.parseInt(request.getParameter("nf_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/notafiscal.jsp?status=Consulta efetuada com sucesso&nf_codigo="+  
             temp.getString("nf_codigo")+
			 "&nf_valornf="+temp.getString("nf_valornf")+
			 "&nf_taxaimpostonf="+temp.getString("nf_taxaimpostonf")+
			 "&nf_valorimposto="+temp.getString("nf_valorimposto"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/notafiscal.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 