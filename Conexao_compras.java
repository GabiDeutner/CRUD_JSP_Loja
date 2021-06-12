package conexao_compras;

import java.sql.*;  

public class Conexao_compras {
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 
    
  private int com_codigo = 0;  
  private int tpg_codigo = 0; 
  private int for_codigo = 0; 
  private int nf_codigo = 0; 
  private String com_datacompra = null;      
  private String com_valortotal = null;    
  private String com_observacoes = null;  

public Conexao_compras() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getCom_codigo() {
        return com_codigo;
    }

    public int getTpg_codigo() {
        return tpg_codigo;
    }

    public int getFor_codigo() {
        return for_codigo;
    }

    public int getNf_codigo() {
        return nf_codigo;
    }

    public String getCom_datacompra() {
        return com_datacompra;
    }

    public String getCom_valortotal() {
        return com_valortotal;
    }

    public String getCom_observacoes() {
        return com_observacoes;
    }

    public void setCom_codigo(int com_codigo) {
        this.com_codigo = com_codigo;
    }

    public void setTpg_codigo(int tpg_codigo) {
        this.tpg_codigo = tpg_codigo;
    }

    public void setFor_codigo(int for_codigo) {
        this.for_codigo = for_codigo;
    }

    public void setNf_codigo(int nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public void setCom_datacompra(String com_datacompra) {
        this.com_datacompra = com_datacompra;
    }

    public void setCom_valortotal(String com_valortotal) {
        this.com_valortotal = com_valortotal;
    }

    public void setCom_observacoes(String com_observacoes) {
        this.com_observacoes = com_observacoes;
    }
    
    
public void inserirDados(){  
    
     try {  
        String query = "insert into tb_compras(com_codigo,tpg_codigo,"
                + "for_codigo,nf_codigo,com_datacompra,com_valortotal,com_observacoes) values("+com_codigo+","
                + ""+tpg_codigo+","+for_codigo+","
                + ""+nf_codigo+",\""+com_datacompra+"\","
                + " \""+com_valortotal+"\",\""+com_observacoes+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  
 
  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_compras "
                + "set tpg_codigo = "+tpg_codigo+","
                + "set for_codigo = "+for_codigo+","
                + "set nf_codigo = "+nf_codigo+","
                + "com_datacompra = \""+com_datacompra+"\","
                + "com_valortotal = \""+com_valortotal+"\","
                + "com_observacoes = \""+com_observacoes+"\" "
                + "where com_codigo = "+com_codigo+" ";  
 
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
        String query = "delete from tb_compras where com_codigo='"+com_codigo+"'";  
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
       String query = "select * from tb_compras where com_codigo='"+com_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_compras");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}  
  
  
}
