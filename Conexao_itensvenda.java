package conexao_itensvenda;

import java.sql.*;

public class Conexao_itensvenda {
    
    public Connection con;  
   public Statement stm;  
   public ResultSet res = null; 
    
  private int itensvenda_codigo = 0;  
  private int ven_codigo = 0; 
  private int pro_codigo = 0; 
  private int tpp_codigo = 0; 
  private int nf_codigo = 0; 
  private int tpg_codigo = 0;
  private int fun_codigo = 0; 
  private String itv_embalagem = null;      
  private String itv_qtde = null;    
  private String itv_valorun = null;  
  private String itv_desc = null;
  private String itv_valortotal = null;    
    
public Conexao_itensvenda() {  
 
     try {  
 
        Class.forName("org.gjt.mm.mysql.Driver");  
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_loja_noturno","root","vertrigo");  
        stm = con.createStatement();   
          
     } catch (Exception e) {  
        System.out.println("não foi possível conectar ao banco" + e.getMessage());  
     }  
  }      

    public Statement getStm() {
        return stm;
    }

    public int getItensvenda_codigo() {
        return itensvenda_codigo;
    }

    public int getVen_codigo() {
        return ven_codigo;
    }

    public int getPro_codigo() {
        return pro_codigo;
    }

    public int getTpp_codigo() {
        return tpp_codigo;
    }

    public int getNf_codigo() {
        return nf_codigo;
    }

    public int getTpg_codigo() {
        return tpg_codigo;
    }

    public int getFun_codigo() {
        return fun_codigo;
    }

    public String getItv_embalagem() {
        return itv_embalagem;
    }

    public String getItv_qtde() {
        return itv_qtde;
    }

    public String getItv_valorun() {
        return itv_valorun;
    }

    public String getItv_desc() {
        return itv_desc;
    }

    public String getItv_valortotal() {
        return itv_valortotal;
    }

    public void setItensvenda_codigo(int itensvenda_codigo) {
        this.itensvenda_codigo = itensvenda_codigo;
    }

    public void setVen_codigo(int ven_codigo) {
        this.ven_codigo = ven_codigo;
    }

    public void setPro_codigo(int pro_codigo) {
        this.pro_codigo = pro_codigo;
    }

    public void setTpp_codigo(int tpp_codigo) {
        this.tpp_codigo = tpp_codigo;
    }

    public void setNf_codigo(int nf_codigo) {
        this.nf_codigo = nf_codigo;
    }

    public void setTpg_codigo(int tpg_codigo) {
        this.tpg_codigo = tpg_codigo;
    }

    public void setFun_codigo(int fun_codigo) {
        this.fun_codigo = fun_codigo;
    }

    public void setItv_embalagem(String itv_embalagem) {
        this.itv_embalagem = itv_embalagem;
    }

    public void setItv_qtde(String itv_qtde) {
        this.itv_qtde = itv_qtde;
    }

    public void setItv_valorun(String itv_valorun) {
        this.itv_valorun = itv_valorun;
    }

    public void setItv_desc(String itv_desc) {
        this.itv_desc = itv_desc;
    }

    public void setItv_valortotal(String itv_valortotal) {
        this.itv_valortotal = itv_valortotal;
    }
    
public void inserirDados(){  
    
     try {  
        String query = "insert into tb_itensvenda(itensvenda_codigo,ven_codigo,"
                + "pro_codigo,tpp_codigo,nf_codigo,tpg_codigo,fun_codigo,"
                + "itv_embalagem,itv_qtde,itv_valorun,itv_desc,"
                + "itv_valortotal) values("+itensvenda_codigo+","
                + ""+ven_codigo+","+pro_codigo+","
                + ""+tpp_codigo+","+nf_codigo+","
                + ""+tpg_codigo+","+fun_codigo+","
                 + " \""+itv_embalagem+"\",\""+itv_qtde+"\","
                 + " \""+itv_valorun+"\",\""+itv_desc+"\","
                + " \""+itv_valortotal+"\")";  
        stm.executeUpdate(query);  
 
     }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
       
  }  


  public boolean alterarDados(){  
       
     boolean testa = false;  
    
     try {  
        String query = "update tb_itensvenda "
                + "set ven_codigo = "+ven_codigo+","
                + "pro_codigo = "+pro_codigo+","
                + "tpp_codigo = "+tpp_codigo+","
                + "nf_codigo = "+nf_codigo+","
                + "tpg_codigo = "+tpg_codigo+","
                + "fun_codigo = "+fun_codigo+","
                + "itv_embalagem = \""+itv_embalagem+"\","
                + "itv_qtde = \""+itv_qtde+"\","
                + "itv_valorun = \""+itv_valorun+"\","
                + "itv_desc = \""+itv_desc+"\","
                + "itv_valortotal = \""+itv_valortotal+"\" "
                + "where itensvenda_codigo = "+itensvenda_codigo+" ";  
 
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
        String query = "delete from tb_itensvenda where itensvenda_codigo='"+itensvenda_codigo+"'";  
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
       String query = "select * from tb_itensvenda where itensvenda_codigo='"+itensvenda_codigo+"'";  
       res = stm.executeQuery(query);  
         
       if (res.next()){testa = true;}  
       else{testa = false;}  
         
    }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
      
    return testa;  
 }     

 public void setConsulta() {  
      
    try {  
       res = stm.executeQuery("select * from tb_itensvenda");  
    }   
    catch (SQLException e){  
       e.printStackTrace();  
    }  

 }  

 public ResultSet getResultado() {  
    return res;  
}     
 
}
