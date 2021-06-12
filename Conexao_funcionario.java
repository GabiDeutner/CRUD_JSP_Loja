package conexao_funcionario;

import java.sql.*;  

public class Conexao_funcionario {
    
public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 
   
 private int fun_codigo = 0;  
  private String fun_nome = null;   
   private String fun_endereco = null;  
   private String fun_numero = null;  
   private String fun_complemento = null; 
   private String fun_bairro = null;  
   private String fun_cidade = null;  
   private String fun_uf = null;  
   private String fun_cnpjcpf = null;  
   private String fun_rgie = null;  
   private String fun_sexo = null;
   private String fun_nascimento = null;
   private String fun_telefone = null;   
   private String fun_celular = null;  
   private String fun_email  = null;  
   private String fun_salario = null; 
  
  public Conexao_funcionario() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }      

    public int getFun_codigo() {
        return fun_codigo;
    }

    public String getFun_nome() {
        return fun_nome;
    }

    public String getFun_endereco() {
        return fun_endereco;
    }

    public String getFun_numero() {
        return fun_numero;
    }

    public String getFun_complemento() {
        return fun_complemento;
    }

    public String getFun_bairro() {
        return fun_bairro;
    }

    public String getFun_cidade() {
        return fun_cidade;
    }

    public String getFun_uf() {
        return fun_uf;
    }

    public String getFun_cnpjcpf() {
        return fun_cnpjcpf;
    }

    public String getFun_rgie() {
        return fun_rgie;
    }

    public String getFun_sexo() {
        return fun_sexo;
    }

    public String getFun_nascimento() {
        return fun_nascimento;
    }

    public String getFun_telefone() {
        return fun_telefone;
    }

    public String getFun_celular() {
        return fun_celular;
    }

    public String getFun_email() {
        return fun_email;
    }

    public String getFun_salario() {
        return fun_salario;
    }

    public void setFun_codigo(int fun_codigo) {
        this.fun_codigo = fun_codigo;
    }

    public void setFun_nome(String fun_nome) {
        this.fun_nome = fun_nome;
    }

    public void setFun_endereco(String fun_endereco) {
        this.fun_endereco = fun_endereco;
    }

    public void setFun_numero(String fun_numero) {
        this.fun_numero = fun_numero;
    }

    public void setFun_complemento(String fun_complemento) {
        this.fun_complemento = fun_complemento;
    }

    public void setFun_bairro(String fun_bairro) {
        this.fun_bairro = fun_bairro;
    }

    public void setFun_cidade(String fun_cidade) {
        this.fun_cidade = fun_cidade;
    }

    public void setFun_uf(String fun_uf) {
        this.fun_uf = fun_uf;
    }

    public void setFun_cnpjcpf(String fun_cnpjcpf) {
        this.fun_cnpjcpf = fun_cnpjcpf;
    }

    public void setFun_rgie(String fun_rgie) {
        this.fun_rgie = fun_rgie;
    }

    public void setFun_sexo(String fun_sexo) {
        this.fun_sexo = fun_sexo;
    }

    public void setFun_nascimento(String fun_nascimento) {
        this.fun_nascimento = fun_nascimento;
    }

    public void setFun_telefone(String fun_telefone) {
        this.fun_telefone = fun_telefone;
    }

    public void setFun_celular(String fun_celular) {
        this.fun_celular = fun_celular;
    }

    public void setFun_email(String fun_email) {
        this.fun_email = fun_email;
    }

    public void setFun_salario(String fun_salario) {
        this.fun_salario = fun_salario;
    }

  public void inserirDados(){  
    
     try {  
        String query = "insert into tb_funcionario(fun_codigo,fun_nome,"
                + "fun_endereco,fun_numero,fun_complemento,fun_bairro,fun_cidade,"
                + "fun_uf,fun_cnpjcpf,fun_rgie,fun_sexo,fun_nascimento,"
                + "fun_telefone,fun_celular,fun_email,fun_salario) values("+fun_codigo+","
                + " \""+fun_nome+"\",\""+fun_endereco+"\","
                 + " \""+fun_numero+"\",\""+fun_complemento+"\",\""+fun_bairro+"\","
                 + " \""+fun_cidade+"\",\""+fun_uf+"\","
                 + " \""+fun_cnpjcpf+"\",\""+fun_rgie+"\","
                + " \""+fun_sexo+"\",\""+fun_nascimento+"\","
                 + " \""+fun_telefone+"\",\""+fun_celular+"\","
                + " \""+fun_email+"\",\""+fun_salario+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  

public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_funcionario "
                + "set fun_nome = \""+fun_nome+"\","
                + "fun_endereco = \""+fun_endereco+"\","
                + "fun_numero = \""+fun_numero+"\","
                + "fun_complemento = \""+fun_complemento+"\","
                + "fun_bairro = \""+fun_bairro+"\","
                + "fun_cidade = \""+fun_cidade+"\","
                + "fun_uf = \""+fun_uf+"\","
                + "fun_cnpjcpf = \""+fun_cnpjcpf+"\","
                + "fun_rgie = \""+fun_rgie+"\","
                + "fun_sexo = \""+fun_sexo+"\","
                + "fun_nascimento = \""+fun_nascimento+"\","
                + "fun_telefone = \""+fun_telefone+"\","
                + "fun_celular = \""+fun_celular+"\","
                + "fun_email = \""+fun_email+"\","
                + "fun_salario = \""+fun_salario+"\" "
                + "where fun_codigo = "+fun_codigo+" ";  
 
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
        String query = "delete from tb_funcionario where fun_codigo='"+fun_codigo+"'";  
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
       String query = "select * from tb_funcionario where fun_codigo='"+fun_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_funcionario");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}  
  
   
    
}
