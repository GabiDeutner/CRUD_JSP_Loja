package conexao_contapagar;

 import java.sql.*;  

public class Conexao_contapagar {

    public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
    
    
private int cp_codigo = 0;
private String cp_valorconta = null ;
private String cp_datavencimento = null;
private String cp_datapagamento = null;
private int nf_codigo = 0;
private String cp_observacoes = null;
    
      public Conexao_contapagar() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }        

    public int getCp_codigo() {
        return cp_codigo;
    }

    public String getCp_valorconta() {
        return cp_valorconta;
    }

    public String getCp_datavencimento() {
        return cp_datavencimento;
    }

    public String getCp_datapagamento() {
        return cp_datapagamento;
    }

    public int getNf_codigo() {
        return nf_codigo;
    }

    public String getCp_observacoes() {
        return cp_observacoes;
    }

    public void setCp_codigo(int cp_codigo) {
        this.cp_codigo = cp_codigo;
    }

    public void setCp_valorconta(String cp_valorconta) {
        this.cp_valorconta = cp_valorconta;
    }

    public void setCp_datavencimento(String cp_datavencimento) {
        this.cp_datavencimento = cp_datavencimento;
    }

    public void setCp_datapagamento(String cp_datapagamento) {
        this.cp_datapagamento = cp_datapagamento;
    }

    public void setNf_codigo(int nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public void setCp_observacoes(String cp_observacoes) {
        this.cp_observacoes = cp_observacoes;
    }
  

   public void inserirDados(){  
        
         try {  
            String query = "insert into tb_contapagar(cp_codigo,cp_valorconta,"
+ "cp_datavencimento,cp_datapagamento,nf_codigo,cp_observacoes)"
+ "values("+cp_codigo+",\""+cp_valorconta+"\","
+ "\""+cp_datavencimento+"\",\""+cp_datapagamento+"\","
+ ""+nf_codigo+",\""+cp_observacoes+"\")";
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
    
    public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update tb_contapagar "
                    + "set cp_valorconta = \""+cp_valorconta+"\","
                    + "cp_datavencimento = \""+cp_datavencimento+"\","
                    + "cp_datapagamento = \""+cp_datapagamento+"\","
                    + "nf_codigo = "+nf_codigo+","
                    + "cp_observacoes = \""+cp_observacoes+"\" "
                    + "where cp_codigo = "+cp_codigo+" ";  
     
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
            String query = "delete from tb_contapagar where cp_codigo='"+cp_codigo+"'";  
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
           String query = "select * from tb_contapagar where cp_codigo='"+cp_codigo+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from tb_contapagar");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
    
        
}