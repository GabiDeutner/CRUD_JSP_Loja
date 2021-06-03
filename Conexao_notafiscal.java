package conexao_notafiscal;  
      
import java.sql.*;  
 
public class Conexao_notafiscal {  
    
   public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 

  private int nf_codigo = 0;  
  private String nf_valornf = null;  
  private String nf_taxaimpostonf = null;
  private String nf_valorimposto = null;
 
  public Conexao_notafiscal() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

public void setNf_codigo(int nf_codigo) {
    this.nf_codigo = nf_codigo;
}

public void setNf_valornf(String nf_valornf) {
    this.nf_valornf = nf_valornf;
}

public void setNf_taxaimpostonf(String nf_taxaimpostonf) {
    this.nf_taxaimpostonf = nf_taxaimpostonf;
}

public void setNf_valorimposto(String nf_valorimposto) {
    this.nf_valorimposto = nf_valorimposto;
}

public int getNf_codigo() {
    return nf_codigo;
}

public String getNf_valornf() {
    return nf_valornf;
}

public String getNf_taxaimpostonf() {
    return nf_taxaimpostonf;
}

public String getNf_valorimposto() {
    return nf_valorimposto;
}
  
  public void inserirDados(){  
    
     try {  
        String query = "insert into tb_notafiscal(nf_codigo,nf_valornf,"
                + "nf_taxaimpostonf,nf_valorimposto) values("+nf_codigo+","
                + " \""+nf_valornf+"\",\""+nf_taxaimpostonf+"\","
                + " \""+nf_valorimposto+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  
 
  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_notafiscal "
                + "set nf_valornf = \""+nf_valornf+"\","
                + "nf_taxaimpostonf = \""+nf_taxaimpostonf+"\","
                + "nf_valorimposto = \""+nf_valorimposto+"\" "
                + "where nf_codigo = "+nf_codigo+" ";  
 
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
        String query = "delete from tb_notafiscal where nf_codigo='"+nf_codigo+"'";  
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
       String query = "select * from tb_notafiscal where nf_codigo='"+nf_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_notafiscal");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}  
}  