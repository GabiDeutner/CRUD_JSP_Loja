<%@ page contentType="text/html"%>  
<!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
  
<html>  
<head><center>  
<title>Tabela Fornecedor</title>  
  
  
<script>  
 
function enviar(par){  
  
  if (par == 'cadastrar'){  
   
     if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.fun_nomeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo Nome';  
     }else if (document.cadastro.fun_enderecoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo Endereco';  
     }else if (document.cadastro.fun_numeroField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo numero';
     }else if (document.cadastro.fun_complementoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo complemento';
     }else if (document.cadastro.fun_bairroField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo bairro';
     }else if (document.cadastro.fun_cidadeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo cidade';
    }else if (document.cadastro.fun_ufField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo uf';
    }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo cnpjcpf';
    }else if (document.cadastro.fun_rgieField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo rg';
    }else if (document.cadastro.fun_sexoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo sexo';
    }else if (document.cadastro.fun_nascimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo nascimento';    
    }else if (document.cadastro.fun_telefoneField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo telefone';
    }else if (document.cadastro.fun_celularField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo celular';
    }else if (document.cadastro.fun_emailField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo e-mail';
    }else if (document.cadastro.fun_salarioField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo salario';        
     }else {  
        document.cadastro.action='cadastrar_funcionario.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'consultar'){  
 
     if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='consultar_funcionario.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'alterar'){  
 
    if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.fun_nomeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo Nome';  
     }else if (document.cadastro.fun_enderecoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo Endereco';  
     }else if (document.cadastro.fun_numeroField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo numero';
     }else if (document.cadastro.fun_complementoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo complemento';
     }else if (document.cadastro.fun_bairroField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo bairro';
     }else if (document.cadastro.fun_cidadeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo cidade';
    }else if (document.cadastro.fun_ufField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo uf';
    }else if (document.cadastro.fun_cnpjcpfField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo cnpjcpf';
    }else if (document.cadastro.fun_rgieField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo rg';
    }else if (document.cadastro.fun_sexoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo sexo';
    }else if (document.cadastro.fun_nascimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo nascimento';    
    }else if (document.cadastro.fun_telefoneField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo telefone';
    }else if (document.cadastro.fun_celularField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo celular';
    }else if (document.cadastro.fun_emailField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo e-mail';
    }else if (document.cadastro.fun_salarioField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo salario';  
     }else {  
        document.cadastro.action='alterar_funcionario.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'excluir'){  
 
     if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='excluir_funcionario.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'listar'){  
     document.cadastro.action='listar_funcionario.jsp';  
     document.cadastro.submit();  
  }  
}  
 
</script>  
 
<meta http-equiv="Content-Type" content="text/html; charset=iso--">  
<style type="text/css">  
<!--  
.style {&nbsp; &nbsp;font-size: px;  
&nbsp; &nbsp;font-weight: bold;  
}  
-->  
</style>  
</head>  
 

<%  
String fun_codigo = request.getParameter("fun_codigo");  
String fun_nome = request.getParameter("fun_nome");  
String fun_endereco = request.getParameter("fun_endereco");  
String fun_numero = request.getParameter("fun_numero");
String fun_complemento = request.getParameter("fun_complemento");
String fun_bairro = request.getParameter("fun_bairro");
String fun_cidade = request.getParameter("fun_cidade");
String fun_uf = request.getParameter("fun_uf");
String fun_cnpjcpf = request.getParameter("fun_cnpjcpf");  
String fun_rgie = request.getParameter("fun_rgie");  
String fun_sexo = request.getParameter("fun_sexo"); 
String fun_nascimento = request.getParameter("fun_nascimento");  
String fun_telefone = request.getParameter("fun_telefone");   
String fun_celular = request.getParameter("fun_celular");
String fun_email = request.getParameter("fun_email");
String fun_salario = request.getParameter("fun_salario");          
String status = request.getParameter("status");  
%>  
 
<body>  
<form name="cadastro" method="get">  
 
<table width="" border="">  
 <tr>  
   <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Funcionario </p>  
   </td>  
 </tr>  
 <tr>  

   <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
      <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>"> </p>  
        <p> <strong>Nome :</strong>  
      <input name="fun_nomeField" type="text" id="fun_nomeField" size="" value="<%=(fun_nome==null)?"":fun_nome%>">  
        <p> <strong> Endereco :</strong>  
      <input name="fun_enderecoField" type="text" id="fun_enderecoField" size="" value="<%=(fun_endereco==null)?"":fun_endereco%>">  
         <p> <strong> Numero:</strong>  
      <input name="fun_numeroField" type="text" id="fun_numeroField" size="" value="<%=(fun_numero==null)?"":fun_numero%>">  
         <p> <strong> Complemento:</strong>  
      <input name="fun_complementoField" type="text" id="fun_complementoField" size="" value="<%=(fun_complemento==null)?"":fun_complemento%>">  
         <p> <strong> Bairro:</strong>  
      <input name="fun_bairroField" type="text" id="fun_bairroField" size="" value="<%=(fun_bairro==null)?"":fun_bairro%>">      
         <p> <strong> Cidade:</strong>  
      <input name="fun_cidadeField" type="text" id="fun_cidadeField" size="" value="<%=(fun_cidade==null)?"":fun_cidade%>">  
         <p> <strong>UF:</strong>  
      <input name="fun_ufField" type="text" id="fun_ufField" size="" value="<%=(fun_uf==null)?"":fun_uf%>">  
         <p> <strong>CNPJCPF:</strong>  
      <input name="fun_cnpjcpfField" type="text" id="fun_cnpjcpfField" size="" value="<%=(fun_cnpjcpf==null)?"":fun_cnpjcpf%>">  
         <p> <strong>RG:</strong>  
      <input name="fun_rgieField" type="text" id="fun_rgieField" size="" value="<%=(fun_rgie==null)?"":fun_rgie%>">  
         <p> <strong>Sexo:</strong>  
      <input name="fun_sexoField" type="text" id="fun_sexoField" size="" value="<%=(fun_sexo==null)?"":fun_sexo%>"> 
         <p> <strong>Nascimento:</strong>  
      <input name="fun_nascimentoField" type="text" id="fun_nascimentoField" size="" value="<%=(fun_nascimento==null)?"":fun_nascimento%>"> 
         <p> <strong>Telefone:</strong>  
      <input name="fun_telefoneField" type="text" id="fun_telefoneField" size="" value="<%=(fun_telefone==null)?"":fun_telefone%>">  
         <p> <strong>Celular:</strong>  
      <input name="fun_celularField" type="text" id="fun_celularField" size="" value="<%=(fun_celular==null)?"":fun_celular%>">  
         <p> <strong>E-mail:</strong>  
      <input name="fun_emailField" type="text" id="fun_emailField" size="" value="<%=(fun_email==null)?"":fun_email%>">  
         <p> <strong>Salario:</strong> 
      <input name="fun_salarioField" type="text" id="fun_salarioField" size="" value="<%=(fun_salario==null)?"":fun_salario%>">  
        </p>
              
  </td>  
</tr>  
<tr>  
  <td height="" bgcolor="red"><p>   
      <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
      <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
      <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
      <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
      <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
    </p>  
    <p> <strong>Status:  
 <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
    </strong></p>  
 </td>  
</tr>  
</table>  
</form>  
</body>  
</html>  