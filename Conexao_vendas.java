package conexao_vendas;

import java.sql.*;  

public class Conexao_vendas {
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 
        
  private int ven_codigo = 0;  
  private int fun_codigo = 0; 
  private int tpg_codigo = 0; 
  private int nf_codigo = 0; 
  private String ven_datavenda = null;      
  private String ven_valortotal = null;    
  private String ven_observacoes  = null;     
    
public Conexao_vendas() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getVen_codigo() {
        return ven_codigo;
    }

    public int getFun_codigo() {
        return fun_codigo;
    }

    public int getTpg_codigo() {
        return tpg_codigo;
    }

    public int getNf_codigo() {
        return nf_codigo;
    }

    public String getVen_datavenda() {
        return ven_datavenda;
    }

    public String getVen_valortotal() {
        return ven_valortotal;
    }

    public String getVen_observacoes() {
        return ven_observacoes;
    }

    public void setVen_codigo(int ven_codigo) {
        this.ven_codigo = ven_codigo;
    }

    public void setFun_codigo(int fun_codigo) {
        this.fun_codigo = fun_codigo;
    }

    public void setTpg_codigo(int tpg_codigo) {
        this.tpg_codigo = tpg_codigo;
    }

    public void setNf_codigo(int nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public void setVen_datavenda(String ven_datavenda) {
        this.ven_datavenda = ven_datavenda;
    }

    public void setVen_valortotal(String ven_valortotal) {
        this.ven_valortotal = ven_valortotal;
    }

    public void setVen_observacoes(String ven_observacoes) {
        this.ven_observacoes = ven_observacoes;
    }


    
public void inserirDados(){  
    
     try {  
        String query = "insert into tb_vendas(ven_codigo,fun_codigo,"
                + "tpg_codigo,nf_codigo,ven_datavenda,ven_valortotal,ven_observacoes) values("+ven_codigo+","
                + ""+fun_codigo+","+tpg_codigo+","
                + ""+nf_codigo+",\""+ven_datavenda+"\","
                + " \""+ven_valortotal+"\",\""+ven_observacoes+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  


  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_vendas "
                + "set fun_codigo = "+fun_codigo+","
                + "tpg_codigo = "+tpg_codigo+","
                + "nf_codigo = "+nf_codigo+","
                + "ven_datavenda = \""+ven_datavenda+"\","
                + "ven_valortotal = \""+ven_valortotal+"\","
                + "ven_observacoes = \""+ven_observacoes+"\" "
                + "where ven_codigo = "+ven_codigo+" ";  
 
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
        String query = "delete from tb_vendas where ven_codigo='"+ven_codigo+"'";  
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
       String query = "select * from tb_vendas where ven_codigo='"+ven_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_vendas");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}    
    
}
