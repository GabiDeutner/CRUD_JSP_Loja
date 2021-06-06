package conexao_tipoproduto;

import java.sql.*;  

public class Conexao_tipoproduto {
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 

  private int tpp_codigo = 0;  
  private String tpp_descricao = null;  

  
 public Conexao_tipoproduto() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getTpp_codigo() {
        return tpp_codigo;
    }

    public String getTpp_descricao() {
        return tpp_descricao;
    }

    public void setTpp_codigo(int tpp_codigo) {
        this.tpp_codigo = tpp_codigo;
    }

    public void setTpp_descricao(String tpp_descricao) {
        this.tpp_descricao = tpp_descricao;
    }
 
public void inserirDados(){  
    
     try {  
        String query = "insert into tb_tipoproduto(tpp_codigo,"
                + "tpp_descricao) values("+tpp_codigo+","
                + " \""+tpp_descricao+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  
 
  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_tipoproduto "
                + "set tpp_descricao = \""+tpp_descricao+"\" "
                + "where tpp_codigo = "+tpp_codigo+" ";  
 
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
        String query = "delete from tb_tipoproduto where tpp_codigo='"+tpp_codigo+"'";  
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
       String query = "select * from tb_tipoproduto where tpp_codigo='"+tpp_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_tipoproduto");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}      
 
}
