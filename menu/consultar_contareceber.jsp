<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_contareceber.Conexao_contareceber"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Conta Receber</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setCr_codigo(Integer.parseInt(request.getParameter("cr_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/contareceber.jsp?status=Consulta efetuada com sucesso&cr_codigo="+  
             temp.getString("cr_codigo")+
			 "&cr_valorconta="+temp.getString("cr_valorconta")+
			 "&cr_datavencimento="+temp.getString("cr_datavencimento")+
       "&cr_datarecebimento="+temp.getString("cr_datarecebimento")+
       "&nf_codigo="+temp.getString("nf_codigo")+
			 "&cr_observacoes="+temp.getString("cr_observacoes"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/contareceber.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 