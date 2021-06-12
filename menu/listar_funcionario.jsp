<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
<jsp:useBean id="con" class="conexao_funcionario.Conexao_funcionario"/>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
  <html>  
   <head>  
   <title>Listar Funcionario</title>  
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   </head>  
     
  <body>  
  <form name="funm" method="post" action="funcionario.jsp">  
    
  <p><strong>Tabela Funcionario </strong></p>  
<table border=1 cellspacing=0 cellpadding=0 >  
  
    <tr>  
        <td width=50><strong>  
          Codigo 
       </strong></td>      
       <td width=50><strong>  
          Nome
       </strong></td>    
       <td width=50><strong>  
          Endereco
       </strong></td>    
       <td width=50><strong>  
          Numero 
       </strong></td>
       <td width=50><strong>  
        Complemento
        </strong></td>
       <td width=50><strong>  
          Bairro 
        </strong></td>  
        <td width=50><strong>  
          Cidade  
        </strong></td> 
        <td width=50><strong>  
            UF 
          </strong></td> 
          <td width=50><strong>  
            CNPJCPF  
          </strong></td> 
          <td width=50><strong>  
            RGIE  
          </strong></td> 
          <td width=50><strong>  
            Sexo  
          </strong></td>
          <td width=50><strong>  
            Nascimento  
          </strong></td>
          <td width=50><strong>  
            Telefone  
          </strong></td> 
          <td width=50><strong>  
            Celular  
          </strong></td> 
          <td width=50><strong>  
            E-mail  
          </strong></td>
          <td width=50><strong>  
            Salario  
          </strong></td>         
       </tr>  
    
  <%      
     try {  
        con.setConsulta();  
        ResultSet temp = con.getResultado();  
          
        while (temp.next()){  
        %>  
        <tr>  
            <td width=50>  
                 <%out.print(temp.getString("fun_codigo"));%>  
           </td>  
            <td width=50>  
                 <%out.print(temp.getString("fun_nome"));%>  
           </td>  
            <td width=50>  
                 <%out.print(temp.getString("fun_endereco"));%>  
           </td>  
            <td width=50>  
                 <%out.print(temp.getString("fun_numero"));%>  
           </td>
           <td width=50>  
              <%out.print(temp.getString("fun_complemento"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_bairro"));%>  
           </td>  
           <td width=50>  
              <%out.print(temp.getString("fun_cidade"));%>  
           </td>
           <td width=50>  
              <%out.print(temp.getString("fun_uf"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_cnpjcpf"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_rgie"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_sexo"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_nascimento"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_telefone"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_celular"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_email"));%>  
           </td> 
           <td width=50>  
              <%out.print(temp.getString("fun_salario"));%>  
           </td>       
        </tr>  
        <%}  
       
     }catch (Exception e) {  
        e.printStackTrace();  
     }  
       
  %>  
  </table>  
    <p>  
      <input type="submit" name="Submit" value="voltar">  
  </p>  
  </form>  
  </body>  
  </html>  