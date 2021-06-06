package conexao_tipopagto;

import java.sql.*;  

public class Conexao_tipopagto {
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 

  private int tpg_codigo = 0;  
  private String tpg_descricao = null;  
  private String tpg_qtde = null;
  private String tpg_ativo = null;
    
 public Conexao_tipopagto() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getTpg_codigo() {
        return tpg_codigo;
    }

    public String getTpg_descricao() {
        return tpg_descricao;
    }

    public String getTpg_qtde() {
        return tpg_qtde;
    }

    public String getTpg_ativo() {
        return tpg_ativo;
    }

    public void setTpg_codigo(int tpg_codigo) {
        this.tpg_codigo = tpg_codigo;
    }

    public void setTpg_descricao(String tpg_descricao) {
        this.tpg_descricao = tpg_descricao;
    }

    public void setTpg_qtde(String tpg_qtde) {
        this.tpg_qtde = tpg_qtde;
    }

    public void setTpg_ativo(String tpg_ativo) {
        this.tpg_ativo = tpg_ativo;
    }
   
 public void inserirDados(){  
    
     try {  
        String query = "insert into tb_tipopagto(tpg_codigo,tpg_descricao,"
                + "tpg_qtde,tpg_ativo) values("+tpg_codigo+","
                + " \""+tpg_descricao+"\",\""+tpg_qtde+"\","
                + " \""+tpg_ativo+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  
 
  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_tipopagto "
                + "set tpg_descricao = \""+tpg_descricao+"\","
                + "tpg_qtde = \""+tpg_qtde+"\","
                + "tpg_ativo = \""+tpg_ativo+"\" "
                + "where tpg_codigo = "+tpg_codigo+" ";  
 
        int linhas = stm.executeUpdate(query);  
          
        if (linhas >0 )  
           testa = true;  
        else  
           testa = false;  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
     return testa;  
  }  
    
  public boolean excluirDados(){  
    
   boolean testa = false;  
    
     try {  
        String query = "delete from tb_tipopagto where tpg_codigo='"+tpg_codigo+"'";  
        int linhas = stm.executeUpdate(query);  
          
        if (linhas > 0)  
           testa = true;  
        else  
           testa = false;  
 
    }catch (SQLException e){System.out.println("Erro na exclusão:" + e.getMessage());}  
      
    return testa;  
 }  
   
 public boolean consultarDados(){  
      
    boolean testa = false;  
         
    try {  
       String query = "select * from tb_tipopagto where tpg_codigo='"+tpg_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_tipopagto");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}      
    
  
}
