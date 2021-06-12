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
<title>Tabela Compras</title>  
  
  
<script>  
 
function enviar(par){  
    
  if (par == 'cadastrar'){  
    
     if (document.cadastro.com_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da compra';  
     }else if (document.cadastro.tpg_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do tipo de pagamento';  
     }else if (document.cadastro.for_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do fornecedor';  
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.com_datacompraField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da data da compra';
     }else if (document.cadastro.com_valortotalField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor total';
     }else if (document.cadastro.com_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes';       
     }else {  
        document.cadastro.action='cadastrar_compras.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'consultar'){  
 
     if (document.cadastro.com_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='consultar_compras.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'alterar'){  
 
    if (document.cadastro.com_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da compra';  
     }else if (document.cadastro.tpg_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do tipo de pagamento';  
     }else if (document.cadastro.for_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do fornecedor';  
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da nota fiscal';
     }else if (document.cadastro.com_datacompraField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da data da compra';
     }else if (document.cadastro.com_valortotalField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor total';
     }else if (document.cadastro.com_observacoesField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo observacoes';   
     }else {  
        document.cadastro.action='alterar_compras.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'excluir'){  
 
     if (document.cadastro.com_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='excluir_compras.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'listar'){  
     document.cadastro.action='listar_compras.jsp';  
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
String com_codigo = request.getParameter("com_codigo");  
String tpg_codigo = request.getParameter("tpg_codigo");  
String for_codigo = request.getParameter("for_codigo");  
String nf_codigo = request.getParameter("nf_codigo");
String com_datacompra = request.getParameter("com_datacompra");
String com_valortotal = request.getParameter("com_valortotal");
String com_observacoes = request.getParameter("com_observacoes");   
String status = request.getParameter("status");  
%>  
 
<body>  
<form name="cadastro" method="get">  
 
<table width="" border="">  
 <tr>  
   <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Compras </p>  
   </td>  
 </tr>  
 <tr>  
   <td height="" bgcolor="red"><p> <strong>Codigo Compra :</strong>  
      <input name="com_codigoField" type="text" id="com_codigoField" size="" value="<%=(com_codigo==null)?"":com_codigo%>"> </p>  
        <p> <strong>Codigo Tipo Pagamento :</strong>  
      <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>">  
        <p> <strong> Codigo Fornecedor :</strong>  
      <input name="for_codigoField" type="text" id="for_codigoField" size="" value="<%=(for_codigo==null)?"":for_codigo%>">  
         <p> <strong> Codigo Nota Fiscal:</strong>  
      <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">  
         <p> <strong> Data Compra:</strong>  
      <input name="com_datacompraField" type="text" id="com_datacompraField" size="" value="<%=(com_datacompra==null)?"":com_datacompra%>">      
         <p> <strong> Valor Total:</strong>  
      <input name="com_valortotalField" type="text" id="com_valortotalField" size="" value="<%=(com_valortotal==null)?"":com_valortotal%>">  
         <p> <strong> Observacoes:</strong>  
      <input name="com_observacoesField" type="text" id="com_observacoesField" size="" value="<%=(com_observacoes==null)?"":com_observacoes%>"> 
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