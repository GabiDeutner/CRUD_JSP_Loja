package conexao_produtos;

import java.sql.*; 

public class Conexao_produtos {
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 

  private int pro_codigo = 0;  
  private String pro_descricao = null; 
  private int tpp_codigo = 0; 
  private String pro_precocusto = null;
  private String pro_precovenda = null;
  private String pro_estoque = null;    
  private String pro_embalagem = null;    
  private String pro_ipi = null;    
    
 public Conexao_produtos() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getPro_codigo() {
        return pro_codigo;
    }

    public String getPro_descricao() {
        return pro_descricao;
    }

    public int getTpp_codigo() {
        return tpp_codigo;
    }

    public String getPro_precocusto() {
        return pro_precocusto;
    }

    public String getPro_precovenda() {
        return pro_precovenda;
    }

    public String getPro_estoque() {
        return pro_estoque;
    }

    public String getPro_embalagem() {
        return pro_embalagem;
    }

    public String getPro_ipi() {
        return pro_ipi;
    }

    public void setPro_codigo(int pro_codigo) {
        this.pro_codigo = pro_codigo;
    }

    public void setPro_descricao(String pro_descricao) {
        this.pro_descricao = pro_descricao;
    }

    public void setTpp_codigo(int tpp_codigo) {
        this.tpp_codigo = tpp_codigo;
    }

    public void setPro_precocusto(String pro_precocusto) {
        this.pro_precocusto = pro_precocusto;
    }

    public void setPro_precovenda(String pro_precovenda) {
        this.pro_precovenda = pro_precovenda;
    }

    public void setPro_estoque(String pro_estoque) {
        this.pro_estoque = pro_estoque;
    }

    public void setPro_embalagem(String pro_embalagem) {
        this.pro_embalagem = pro_embalagem;
    }

    public void setPro_ipi(String pro_ipi) {
        this.pro_ipi = pro_ipi;
    }
      
    
  public void inserirDados(){  
    
     try {  
        String query = "insert into tb_produtos(pro_codigo,pro_descricao,"
                + "tpp_codigo,pro_precocusto,pro_precovenda,"
                + "pro_estoque,pro_embalagem,pro_ipi) values("+pro_codigo+","
                + " \""+pro_descricao+"\","+tpp_codigo+","
                + " \""+pro_precocusto+"\",\""+pro_precovenda+"\","
                + " \""+pro_estoque+"\",\""+pro_embalagem+"\","
                + " \""+pro_ipi+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  

  
  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_produtos "
                + "set pro_descricao = \""+pro_descricao+"\","
                + "tpp_codigo = "+tpp_codigo+","
                + "pro_precocusto = \""+pro_precocusto+"\","
                + "pro_precovenda = \""+pro_precovenda+"\","
                + "pro_estoque = \""+pro_estoque+"\","
                + "pro_embalagem = \""+pro_embalagem+"\","
                + "pro_ipi = \""+pro_ipi+"\" "
                + "where pro_codigo = "+pro_codigo+" ";  
 
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
        String query = "delete from tb_produtos where pro_codigo='"+pro_codigo+"'";  
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
       String query = "select * from tb_produtos where pro_codigo='"+pro_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_produtos");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}        
    
    
}
