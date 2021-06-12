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
       <title>Tabela Tipo Pagamento</title>  
         
         
       <script>  
        
         function enviar(par){  
           
            if (par == 'cadastrar'){  
           
            if (document.cadastro.tpg_codigoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o campo codigo';  
            }else if (document.cadastro.tpg_descricaoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha a descrição';  
              }else if (document.cadastro.tpg_qtdeField.value == ''){  
               document.cadastro.statusField.value = 'Preencha a quantidade';  
            }else if (document.cadastro.tpg_ativoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o Ativo';  
            }else {  
               document.cadastro.action='cadastrar_tipopagto.jsp';  
               document.cadastro.submit();  
            }  
        
         } else if (par == 'consultar'){  
        
            if (document.cadastro.tpg_codigoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o campo codigo';  
            }else {  
               document.cadastro.action='consultar_tipopagto.jsp';  
               document.cadastro.submit();  
            }  
        
         } else if (par == 'alterar'){  
        
            if (document.cadastro.tpg_codigoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o campo codigo';  
            }else if (document.cadastro.tpg_descricaoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha a descrição';  
            }else if (document.cadastro.tpg_qtdeField.value == ''){  
               document.cadastro.statusField.value = 'Preencha a quantidade';  
            }else if (document.cadastro.tpg_ativoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o Ativo';   
            }else {  
               document.cadastro.action='alterar_tipopagto.jsp';  
               document.cadastro.submit();  
            }  
         } else if (par == 'excluir'){  
        
            if (document.cadastro.tpg_codigoField.value == ''){  
               document.cadastro.statusField.value = 'Preencha o campo nome';  
            }else {  
               document.cadastro.action='excluir_tipopagto.jsp';  
               document.cadastro.submit();  
            }  
         } else if (par == 'listar'){  
            document.cadastro.action='listar_tipopagto.jsp';  
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
      String tpg_codigo = request.getParameter("tpg_codigo");  
      String tpg_descricao = request.getParameter("tpg_descricao");  
      String tpg_qtde = request.getParameter("tpg_qtde");  
      String tpg_ativo = request.getParameter("tpg_ativo");  
      String status = request.getParameter("status");  
      %>  
        
      <body>  
      <form name="cadastro" method="get">  
        
      <table width="" border="">  
        <tr>  
          <td width="" height="" bgcolor="red"><p align="left" class="style"> Cadastro Tipo de Pagamento </p>  
          </td>  
        </tr>  
        <tr>  
          <td height="" bgcolor="red"><p> <strong>Codigo :</strong>  
             <input name="tpg_codigoField" type="text" id="tpg_codigoField" size="" value="<%=(tpg_codigo==null)?"":tpg_codigo%>"> </p>  
               <p> <strong>Descrição :</strong>  
             <input name="tpg_descricaoField" type="text" id="tpg_descricaoField" size="" value="<%=(tpg_descricao==null)?"":tpg_descricao%>">  
               <p> <strong>Quantidade :</strong>  
             <input name="tpg_qtdeField" type="text" id="tpg_qtdeField" size="" value="<%=(tpg_qtde==null)?"":tpg_qtde%>">  
                <p> <strong>Ativo :</strong>  
             <input name="tpg_ativoField" type="text" id="tpg_ativoField" size="" value="<%=(tpg_ativo==null)?"":tpg_ativo%>">  
                     
        
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