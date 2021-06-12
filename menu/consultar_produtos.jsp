<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_produtos.Conexao_produtos"/>   
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Produtos</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setPro_codigo(Integer.parseInt(request.getParameter("pro_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/produtos.jsp?status=Consulta efetuada com sucesso&pro_codigo="+  
             temp.getString("pro_codigo")+
      			 "&pro_descricao="+temp.getString("pro_descricao")+
             "&tpp_codigo="+temp.getString("tpp_codigo")+
             "&pro_precocusto="+temp.getString("pro_precocusto")+
             "&pro_precovenda="+temp.getString("pro_precovenda")+
             "&pro_estoque="+temp.getString("pro_estoque")+
             "&pro_embalagem="+temp.getString("pro_embalagem")+
      			 "&pro_ipi="+temp.getString("pro_ipi"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/produtos.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 