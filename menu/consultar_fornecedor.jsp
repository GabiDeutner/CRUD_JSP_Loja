<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>   
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setFor_codigo(Integer.parseInt(request.getParameter("for_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/fornecedor.jsp?status=Consulta efetuada com sucesso&for_codigo="+  
             temp.getString("for_codigo")+
      			 "&for_nome="+temp.getString("for_nome")+
             "&for_endereco="+temp.getString("for_endereco")+
             "&for_numero="+temp.getString("for_numero")+
             "&for_bairro="+temp.getString("for_bairro")+
             "&for_cidade="+temp.getString("for_cidade")+
             "&for_uf="+temp.getString("for_uf")+
             "&for_cnpjcpf="+temp.getString("for_cnpjcpf")+
             "&for_rgie="+temp.getString("for_rgie")+
             "&for_telefone="+temp.getString("for_telefone")+
             "&for_fax="+temp.getString("for_fax")+
             "&for_celular="+temp.getString("for_celular")+
      			 "&for_email="+temp.getString("for_email"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/menu/fornecedor.jsp?status=Registro não encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 