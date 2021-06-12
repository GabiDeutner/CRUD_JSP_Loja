<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_funcionario.Conexao_funcionario"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  


 <title>Consulta Funcionario</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setFun_codigo(Integer.parseInt(request.getParameter("fun_codigoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/funcionario.jsp?status=Consulta efetuada com sucesso&fun_codigo="+  
             temp.getString("fun_codigo")+
			 "&fun_nome="+temp.getString("fun_nome")+
			 "&fun_endereco="+temp.getString("fun_endereco")+
			 "&fun_numero="+temp.getString("fun_numero")+
             "&fun_complemento="+temp.getString("fun_complemento")+ 
             "&fun_bairro="+temp.getString("fun_bairro")+ 
             "&fun_cidade="+temp.getString("fun_cidade")+
             "&fun_uf="+temp.getString("fun_uf")+
             "&fun_cnpjcpf="+temp.getString("fun_cnpjcpf")+
             "&fun_rgie="+temp.getString("fun_rgie")+
             "&fun_sexo="+temp.getString("fun_sexo")+
             "&fun_nascimento="+temp.getString("fun_nascimento")+
             "&fun_telefone="+temp.getString("fun_telefone")+
             "&fun_celular="+temp.getString("fun_celular")+
             "&fun_email="+temp.getString("fun_email")+
             "&fun_salario="+temp.getString("fun_salario"));   
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_loja_noturno/funcionario.jsp?status=Registro nao encontrado");  
       }  
       
               
 %>  
 </form>  
 </body>  
 </html> 