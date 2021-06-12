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
<title>Tabela Itens Venda</title>  
  
  
<script>  
 
function enviar(par){  
  
  if (par == 'cadastrar'){  
  
     if (document.cadastro.itensvenda_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo de itens venda';  
     }else if (document.cadastro.ven_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo de vendas';  
     }else if (document.cadastro.pro_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do produto';  
     }else if (document.cadastro.tpp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do tipo de produto';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da Nota Fiscal';
     }else if (document.cadastro.tpg_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do Tipo de Pagamento';
    }else if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do funcionario';
     }else if (document.cadastro.itv_embalagemField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo embalagem';
     }else if (document.cadastro.itv_qtdeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo quantidade';
    }else if (document.cadastro.itv_valorunField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor unitário'; 
    }else if (document.cadastro.itv_itv_descField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo desconto'; 
    }else if (document.cadastro.itv_itv_valortotalField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor total';        
     }else {  
        document.cadastro.action='cadastrar_itensvenda.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'consultar'){  
 
     if (document.cadastro.itensvenda_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='consultar_itensvenda.jsp';  
        document.cadastro.submit();  
     }  
 
  } else if (par == 'alterar'){  
 
    if (document.cadastro.itensvenda_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo de itens venda';  
     }else if (document.cadastro.ven_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo de vendas';  
     }else if (document.cadastro.pro_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do produto';  
     }else if (document.cadastro.tpp_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do tipo de produto';
     }else if (document.cadastro.nf_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo da Nota Fiscal';
     }else if (document.cadastro.tpg_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do Tipo de Pagamento';
    }else if (document.cadastro.fun_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo do funcionario';
     }else if (document.cadastro.itv_embalagemField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo embalagem';
     }else if (document.cadastro.itv_qtdeField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo quantidade';
    }else if (document.cadastro.itv_valorunField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor unitário'; 
    }else if (document.cadastro.itv_itv_descField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo desconto'; 
    }else if (document.cadastro.itv_itv_valortotalField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo valor total';
     }else {  
        document.cadastro.action='alterar_itensvenda.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'excluir'){  
 
     if (document.cadastro.itensvenda_codigoField.value == ''){  
        document.cadastro.statusField.value = 'Preencha o campo codigo';  
     }else {  
        document.cadastro.action='excluir_itensvenda.jsp';  
        document.cadastro.submit();  
     }  
  } else if (par == 'listar'){  
     document.cadastro.action='listar_itensvenda.jsp';  
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
String itensvenda_codigo = request.getParameter("itensvenda_codigo");  
String ven_codigo = request.getParameter("ven_codigo");  
String pro_codigo = request.getParameter("pro_codigo");  
String tpp_codigo = request.getParameter("tpp_codigo");
String nf_codigo = request.getParameter("nf_codigo");
String tpg_codigo = request.getParameter("tpg_codigo");
String fun_codigo = request.getParameter("fun_codigo");
String itv_embalagem = request.getParameter("itv_embalagem"); 
String itv_qtde = request.getParameter("itv_qtde"); 
String itv_valorun = request.getParameter("itv_valorun"); 
String itv_desc = request.getParameter("itv_desc"); 
String itv_valortotal = request.getParameter("itv_valortotal");     
String status = request.getParameter("status");  
%>  
 
<body>  
<funm name="cadastro" method="get">  
 
<table width="" border="">  
 <tr>  
   <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Itens Venda </p>  
   </td>  
 </tr>  

 <tr>  
   <td height="" bgcolor="red"><p> <strong>Codigo Itens Venda :</strong>  
      <input name="itensvenda_codigoField" type="text" id="itensvenda_codigoField" size="" value="<%=(itensvenda_codigo==null)?"":itensvenda_codigo%>"> </p>  
        
        <p> <strong>Codigo Venda :</strong>  
      <input name="ven_codigoField" type="text" id="ven_codigoField" size="" value="<%=(ven_codigo==null)?"":ven_codigo%>">  
        
        <p> <strong> Codigo Produto :</strong>  
      <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>">  
         
         <p> <strong> Codigo Tipo de Produto:</strong>  
      <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>">  
         
         <p> <strong> Data Nota Fiscal:</strong>  
      <input name="nf_codigoField" type="text" id="nf_codigoField" size="" value="<%=(nf_codigo==null)?"":nf_codigo%>">      
         
              
         <p> <strong> Tipo de Pagamento:</strong>  
      <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> 
        
        <p> <strong> Funcionario:</strong>  
      <input name="fun_codigoField" type="text" id="fun_codigoField" size="" value="<%=(fun_codigo==null)?"":fun_codigo%>">  

         <p> <strong> Embalagem:</strong>  
      <input name="itv_embalagemField" type="text" id="itv_embalagemField" size="" value="<%=(itv_embalagem==null)?"":itv_embalagem%>"> 

      <p> <strong> Quantidade:</strong>  
      <input name="itv_qtdeField" type="text" id="itv_qtdeField" size="" value="<%=(itv_qtde==null)?"":itv_qtde%>"> 

      <p> <strong> Valor Unitario:</strong>  
      <input name="itv_valorunField" type="text" id="itv_valorunField" size="" value="<%=(itv_valorun==null)?"":itv_valorun%>"> 

      <p> <strong> Desconto:</strong>  
      <input name="itv_descField" type="text" id="itv_descField" size="" value="<%=(itv_desc==null)?"":itv_desc%>"> 

      <p> <strong> Valor Total:</strong>  
      <input name="itv_valortotalField" type="text" id="itv_valortotalField" size="" value="<%=(itv_valortotal==null)?"":itv_valortotal%>"> 
        
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
</funm>  
</body>  
</html>  