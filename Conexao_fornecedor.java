package conexao_fornecedor;

import java.sql.*;  

public class Conexao_fornecedor {

 public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 
   
 private int for_codigo = 0;  
  private String for_nome = null;   
   private String for_endereco = null;  
   private String for_numero = null;  
   private String for_bairro = null;  
   private String for_cidade = null;  
   private String for_uf = null;  
   private String for_cnpjcpf = null;  
   private String for_rgie = null;  
   private String for_telefone = null;  
   private String for_fax = null;  
   private String for_celular = null;  
   private String for_email  = null;  
  
  public Conexao_fornecedor() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }  

    public int getFor_codigo() {
        return for_codigo;
    }

    public String getFor_nome() {
        return for_nome;
    }

    public String getFor_endereco() {
        return for_endereco;
    }

    public String getFor_numero() {
        return for_numero;
    }

    public String getFor_bairro() {
        return for_bairro;
    }

    public String getFor_cidade() {
        return for_cidade;
    }

    public String getFor_uf() {
        return for_uf;
    }

    public String getFor_cnpjcpf() {
        return for_cnpjcpf;
    }

    public String getFor_rgie() {
        return for_rgie;
    }

    public String getFor_telefone() {
        return for_telefone;
    }

    public String getFor_fax() {
        return for_fax;
    }

    public String getFor_celular() {
        return for_celular;
    }

    public String getFor_email() {
        return for_email;
    }

    public void setFor_codigo(int for_codigo) {
        this.for_codigo = for_codigo;
    }

    public void setFor_nome(String for_nome) {
        this.for_nome = for_nome;
    }

    public void setFor_endereco(String for_endereco) {
        this.for_endereco = for_endereco;
    }

    public void setFor_numero(String for_numero) {
        this.for_numero = for_numero;
    }

    public void setFor_bairro(String for_bairro) {
        this.for_bairro = for_bairro;
    }

    public void setFor_cidade(String for_cidade) {
        this.for_cidade = for_cidade;
    }

    public void setFor_uf(String for_uf) {
        this.for_uf = for_uf;
    }

    public void setFor_cnpjcpf(String for_cnpjcpf) {
        this.for_cnpjcpf = for_cnpjcpf;
    }

    public void setFor_rgie(String for_rgie) {
        this.for_rgie = for_rgie;
    }

    public void setFor_telefone(String for_telefone) {
        this.for_telefone = for_telefone;
    }

    public void setFor_fax(String for_fax) {
        this.for_fax = for_fax;
    }

    public void setFor_celular(String for_celular) {
        this.for_celular = for_celular;
    }

    public void setFor_email(String for_email) {
        this.for_email = for_email;
    }

    
public void inserirDados(){  
    
     try {  
        String query = "insert into tb_fornecedor(for_codigo,for_nome,"
                + "for_endereco,for_numero,for_bairro,for_cidade,"
                + "for_uf,for_cnpjcpf,for_rgie,for_telefone,"
                + "for_fax,for_celular,for_email) values("+for_codigo+","
                + " \""+for_nome+"\",\""+for_endereco+"\","
                 + " \""+for_numero+"\",\""+for_bairro+"\","
                 + " \""+for_cidade+"\",\""+for_uf+"\","
                 + " \""+for_cnpjcpf+"\",\""+for_rgie+"\","
                 + " \""+for_telefone+"\",\""+for_fax+"\","
                + " \""+for_celular+"\",\""+for_email+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  

public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_fornecedor "
                + "set for_nome = \""+for_nome+"\","
                + "for_endereco = \""+for_endereco+"\","
                + "for_numero = \""+for_numero+"\","
                + "for_bairro = \""+for_bairro+"\","
                + "for_cidade = \""+for_cidade+"\","
                + "for_uf = \""+for_uf+"\","
                + "for_cnpjcpf = \""+for_cnpjcpf+"\","
                + "for_rgie = \""+for_rgie+"\","
                + "for_telefone = \""+for_telefone+"\","
                + "for_fax = \""+for_fax+"\","
                + "for_celular = \""+for_celular+"\","
                + "for_email = \""+for_email+"\" "
                + "where for_codigo = "+for_codigo+" ";  
 
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
        String query = "delete from tb_fornecedor where for_codigo='"+for_codigo+"'";  
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
       String query = "select * from tb_fornecedor where for_codigo='"+for_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_fornecedor");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}  
  
} 
