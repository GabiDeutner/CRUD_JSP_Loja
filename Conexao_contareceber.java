package conexao_contareceber;

 import java.sql.*;  

public class Conexao_contareceber {
    
    public Connection con;  
       public Statement stm;  
       public ResultSet res = null; 
    
    
private int cr_codigo = 0;
private String cr_valorconta = null ;
private String cr_datavencimento = null;
private String cr_datarecebimento = null;
private int nf_codigo = 0;
private String cr_observacoes = null;
    
      public Conexao_contareceber() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }      

    public int getCr_codigo() {
        return cr_codigo;
    }

    public String getCr_valorconta() {
        return cr_valorconta;
    }

    public String getCr_datavencimento() {
        return cr_datavencimento;
    }

    public String getCr_datarecebimento() {
        return cr_datarecebimento;
    }

    public int getNf_codigo() {
        return nf_codigo;
    }

    public String getCr_observacoes() {
        return cr_observacoes;
    }

    public void setCr_codigo(int cr_codigo) {
        this.cr_codigo = cr_codigo;
    }

    public void setCr_valorconta(String cr_valorconta) {
        this.cr_valorconta = cr_valorconta;
    }

    public void setCr_datavencimento(String cr_datavencimento) {
        this.cr_datavencimento = cr_datavencimento;
    }

    public void setCr_datarecebimento(String cr_datarecebimento) {
        this.cr_datarecebimento = cr_datarecebimento;
    }

    public void setNf_codigo(int nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public void setCr_observacoes(String cr_observacoes) {
        this.cr_observacoes = cr_observacoes;
    }
    
    public void inserirDados(){  
        
         try {  
            String query = "insert into tb_contareceber(cr_codigo,cr_valorconta,"
+ "cr_datavencimento,cr_datarecebimento,nf_codigo,cr_observacoes)"
+ "values("+cr_codigo+",\""+cr_valorconta+"\","
+ "\""+cr_datavencimento+"\",\""+cr_datarecebimento+"\","
+ ""+nf_codigo+",\""+cr_observacoes+"\")";
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
    
    public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update tb_contareceber "
                    + "set cr_valorconta = \""+cr_valorconta+"\","
                    + "cr_datavencimento = \""+cr_datavencimento+"\","
                    + "cr_datarecebimento = \""+cr_datarecebimento+"\","
                    + "nf_codigo = "+nf_codigo+","
                    + "cr_observacoes = \""+cr_observacoes+"\" "
                    + "where cr_codigo = "+cr_codigo+" ";  
     
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
            String query = "delete from tb_contareceber where cr_codigo='"+cr_codigo+"'";  
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
           String query = "select * from tb_contareceber where cr_codigo='"+cr_codigo+"'";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from tb_contareceber");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
    
} 

