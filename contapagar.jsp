<%@ page contentType="text/html"%>  
<!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
  
<html>  
<head><center>  
<title>Tabela Contas a Pagar</title>  
  
  
<script>  
 
function enviar(par){  
    
  if (par == 'cadastrar'){  
    
     if (document.cadastro.cp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.cp_valorcontaField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor da conta';  
     }else if (document.cadastro.cp_datavencimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
     }else if (document.cadastro.cp_datapagamentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de pagamento';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.cp_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes';      
     }else {  
        document.cadastro.action='cadastrar_contapagar.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'consultar'){  
 
     if (document.cadastro.cp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='consultar_contapagar.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'alterar'){  
 
    if (document.cadastro.cp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.cp_valorcontaField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor da conta';  
     }else if (document.cadastro.cp_datavencimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
     }else if (document.cadastro.cp_datapagamentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de pagamento';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.cp_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes'; 
     }else {  
        document.cadastro.action='alterar_contapagar.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'excluir'){  
 
     if (document.cadastro.cp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='excluir_contapagar.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'listar'){  
     document.cadastro.action='listar_contapagar.jsp';  
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
String cp_codigo = request.getParameter("cp_codigo");  
String cp_valorconta = request.getParameter("cp_valorconta");  
String cp_datavencimento = request.getParameter("cp_datavencimento");  
String cp_datapagamento = request.getParameter("cp_datapagamento");
String nf_codigo = request.getParameter("nf_codigo");
String cp_observacoes = request.getParameter("cp_observacoes");  
String status = request.getParameter("status");  
%>  
 
<body>  
<form name="cadastro" method="get">  
 
<table width="" border="">  
 <tr>  
   <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Contas a Pagar </p>  
   </td>  
 </tr>  
 <tr>  
   <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
      <input name="cp_codigoField" type="text" id="cp_codigoField" size="" value="<%=(cp_codigo==null)?"":cp_codigo%>"> </p>  
        <p> <strong>Valor :</strong>  
      <input name="cp_valorcontaField" type="text" id="cp_valorcontaField" size="" value="<%=(cp_valorconta==null)?"":cp_valorconta%>">  
        <p> <strong> Data de Vencimento :</strong>  
      <input name="cp_datavencimentoField" type="text" id="cp_datavencimentoField" size="" value="<%=(cp_datavencimento==null)?"":cp_datavencimento%>">  
         <p> <strong> Data de Pagamento:</strong>  
      <input name="cp_datapagamentoField" type="text" id="cp_datapagamentoField" size="" value="<%=(cp_datapagamento==null)?"":cp_datapagamento%>">  
         <p> <strong> Codigo Nota Fiscal:</strong>  
      <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">      
         <p> <strong> Observacoes:</strong>  
      <input name="cp_observacoesField" type="text" id="cp_observacoesField" size="" value="<%=(cp_observacoes==null)?"":cp_observacoes%>">  
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