<html>
   <head>
   <title>Untitled Document</title>
   <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
   <style>
   .A:link {
     TEXT-DECORATION: none;
     font-family:Verdana;
     color:#FFFFFF;
   }
   .A:visited { TEXT-DECORATION: none; font-family:Verdana; color:#333333}
   .A:hover {
     TEXT-DECORATION: none;
     font-family:Verdana;
     color:#0088FF;
   }
   </style>
   </head>
   
   <body>
   <table width="98%" border="0" cellspacing="0" cellpadding="0">
     <tr align="left" valign="top"> 
       <td colspan="3"><span> </span> </td>
     </tr>
     <tr align="left" valign="top"> 
       <td height="28"></td>
       <td height="28">&nbsp;</td>
       <td height="28" align="right"></td>
     </tr>
     <tr> 
       <td width="3%"></td>
       <td width="94%" align="left" valign="top"><div id="build-menu"></div></td>
       <td width="3%" align="right"></td>
     </tr>
     <tr> 
       <td colspan="3">&nbsp;</td>
     </tr>
   </table>
   <script src="teste2.js"></script>
   </body>
   </html>


<%@ page contentType="text/html"%>  
<!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
  
<html>  
<head><center>  
<title>Tabela Contas a Receber</title>  
  
  
<script>  
 
function enviar(par){  
    
  if (par == 'cadastrar'){  
    
     if (document.cadastro.cr_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.cr_valorcontaField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor da conta';  
     }else if (document.cadastro.cr_datavencimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
     }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de recebimento';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.cr_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes';      
     }else {  
        document.cadastro.action='cadastrar_contareceber.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'consultar'){  
 
     if (document.cadastro.cr_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='consultar_contareceber.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'alterar'){  
 
    if (document.cadastro.cr_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else if (document.cadastro.cr_valorcontaField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor da conta';  
     }else if (document.cadastro.cr_datavencimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de vencimento';  
     }else if (document.cadastro.cr_datarecebimentoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo data de recebimento';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.cr_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes'; 
     }else {  
        document.cadastro.action='alterar_contareceber.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'excluir'){  
 
     if (document.cadastro.cr_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='excluir_contareceber.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'listar'){  
     document.cadastro.action='listar_contareceber.jsp';  
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
String cr_codigo = request.getParameter("cr_codigo");  
String cr_valorconta = request.getParameter("cr_valorconta");  
String cr_datavencimento = request.getParameter("cr_datavencimento");  
String cr_datarecebimento = request.getParameter("cr_datarecebimento");
String nf_codigo = request.getParameter("nf_codigo");
String cr_observacoes = request.getParameter("cr_observacoes");  
String status = request.getParameter("status");  
%>  
 
<body>  
<form name="cadastro" method="get">  
 
<table width="" border="">  
 <tr>  
   <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Contas a Receber </p>  
   </td>  
 </tr>  
 <tr>  
   <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
      <input name="cr_codigoField" type="text" id="cr_codigoField" size="" value="<%=(cr_codigo==null)?"":cr_codigo%>"> </p>  
        <p> <strong>Valor :</strong>  
      <input name="cr_valorcontaField" type="text" id="cr_valorcontaField" size="" value="<%=(cr_valorconta==null)?"":cr_valorconta%>">  
        <p> <strong> Data de Vencimento :</strong>  
      <input name="cr_datavencimentoField" type="text" id="cr_datavencimentoField" size="" value="<%=(cr_datavencimento==null)?"":cr_datavencimento%>">  
         <p> <strong> Data de Recebimento:</strong>  
      <input name="cr_datarecebimentoField" type="text" id="cr_datarecebimentoField" size="" value="<%=(cr_datarecebimento==null)?"":cr_datarecebimento%>">  
         <p> <strong> Codigo Nota Fiscal:</strong>  
      <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">      
         <p> <strong> Observacoes:</strong>  
      <input name="cr_observacoesField" type="text" id="cr_observacoesField" size="" value="<%=(cr_observacoes==null)?"":cr_observacoes%>">  
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