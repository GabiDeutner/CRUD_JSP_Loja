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
    <title>Tabela Produto</title>  
      
      
    <script>  
     
   	function enviar(par){  
        
      	if (par == 'cadastrar'){  
        
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a descrição';  
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo do tipo de produto'; 
         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o preço de custo'; 
         }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o preço de venda';
         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o estoque';
         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a embalagem';
         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a IPI'; 
         }else {  
            document.cadastro.action='cadastrar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else {  
            document.cadastro.action='consultar_produtos.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo codigo';  
         }else if (document.cadastro.pro_descricaoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a descrição';  
         }else if (document.cadastro.tpp_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo do tipo de produto'; 
         }else if (document.cadastro.pro_precocustoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o preço de custo'; 
         }else if (document.cadastro.pro_precovendaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o preço de venda';
         }else if (document.cadastro.pro_estoqueField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o estoque';
         }else if (document.cadastro.pro_embalagemField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a embalagem';
         }else if (document.cadastro.pro_ipiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha a IPI';       
         }else {  
            document.cadastro.action='alterar_produtos.jsp';  
            document.cadastro.submit();  
         } 
      } else if (par == 'excluir'){  
     
         if (document.cadastro.pro_codigoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o codigo';  
         }else {  
            document.cadastro.action='excluir_produtos.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_produtos.jsp';  
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
   String pro_codigo = request.getParameter("pro_codigo");  
   String pro_descricao = request.getParameter("pro_descricao ");   
   String tpp_codigo = request.getParameter("tpp_codigo"); 
   String pro_precocusto = request.getParameter("pro_precocusto");  
   String pro_precovenda = request.getParameter("pro_precovenda"); 
   String pro_estoque = request.getParameter("pro_estoque");
   String pro_embalagem = request.getParameter("pro_embalagem");  
   String pro_ipi = request.getParameter("pro_ipi"); 
   String status = request.getParameter("status");  
   %>  
     
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Produtos</p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
          <input name="pro_codigoField" type="text" id="pro_codigoField" size="" value="<%=(pro_codigo==null)?"":pro_codigo%>"> 
            <p> <strong>Descrição :</strong>  
          <input name="pro_descricaoField" type="text" id="pro_descricaoField" size="" value="<%=(pro_descricao==null)?"":pro_descricao%>">            
            <p> <strong>Codigo Tipo do Produto :</strong>  
          <input name="tpp_codigoField" type="text" id="tpp_codigoField" size="" value="<%=(tpp_codigo==null)?"":tpp_codigo%>"> </p>  
            <p> <strong>Preço de Custo :</strong>  
          <input name="pro_precocustoField" type="text" id="pro_precocustoField" size="" value="<%=(pro_precocusto==null)?"":pro_precocusto%>"> </p>  
            <p> <strong>Preço de Venda :</strong>  
          <input name="pro_precovendaField" type="text" id="pro_precovendaField" size="" value="<%=(pro_precovenda==null)?"":pro_precovenda%>">  
            <p> <strong>Estoque :</strong>  
          <input name="pro_estoqueField" type="text" id="pro_estoqueField" size="" value="<%=(pro_estoque==null)?"":pro_estoque%>">  
            <p> <strong>Embalagem :</strong>  
          <input name="pro_embalagemField" type="text" id="pro_embalagemField" size="" value="<%=(pro_embalagem==null)?"":pro_embalagem%>"> </p>  
            <p> <strong>IPI :</strong>  
          <input name="pro_ipiField" type="text" id="pro_ipiField" size="" value="<%=(pro_ipi==null)?"":pro_ipi%>"> </p>
      
     
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