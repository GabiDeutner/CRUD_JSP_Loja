<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_vendas.Conexao_vendas"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Vendas</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setVen_codigo(Integer.parseInt(request.getParameter("ven_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/vendas.jsp?status=Consulta efetuada com sucesso&ven_codigo="+  
             temp.getString("ven_codigo")+
             "&fun_codigo="+temp.getString("fun_codigo")+
      			 "&tpg_codigo="+temp.getString("tpg_codigo")+
             "&nf_codigo="+temp.getString("nf_codigo")+
             "&ven_datavenda="+temp.getString("ven_datavenda")+
             "&ven_valortotal="+temp.getString("ven_valortotal")+
      			 "&ven_observacoes="+temp.getString("ven_observacoes"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/vendas.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 