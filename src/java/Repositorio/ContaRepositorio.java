/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Repositorio;

import domain.Conta;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author laboratorio
 */
public class ContaRepositorio {
    
    public Connection _connection;
    public ResultSet _result;
    public PreparedStatement _pst;
    
    public ContaRepositorio() {
    }
    
    public void Add(Conta tentity) {
    try{
            String _query = "INSERT INTO app_001_conta(ID,valor,tipo,dth_cadastro) VALUES(NULL,?,?,?)";
            this._pst = (PreparedStatement) this._connection.prepareStatement(_query);
            
            this._pst.setFloat(1 , tentity.getValor());
            this._pst.setInt(2, tentity.getTipo());
            this._pst.setDate(3, new java.sql.Date(Calendar.getInstance().getTimeInMillis())); 
                    
            this._pst.execute();
            
        }
        catch(Exception err){
            
            Logger.getLogger(ContaRepositorio.class.getName()).log(Level.SEVERE, null, err);
        }
    }
    
    public List<Conta> GetAll() {
        List<Conta> response = new ArrayList<Conta>();
        
        try{
            String _query = "SELECT * FROM app_001_conta";
            this._pst = (PreparedStatement) this._connection.prepareStatement(_query);
            
            this._result = this._pst.executeQuery(_query);
            
            while(this._result.next()) {
                
                response.add(this.MappingResultToTEntity(this._result));
            }
            
        }catch(Exception err) {
            Logger.getLogger(ContaRepositorio.class.getName()).log(Level.SEVERE, null, err);
        }
        
        return response;
    }
    
    protected Conta MappingResultToTEntity(ResultSet resultQuery) {
        
        Conta element = new Conta();
        
        try{
        
            element.setId(/****************/resultQuery.getInt/*******/("id"));
            element.setValor(/*************/resultQuery.getFloat/*****/("valor"));
            element.setTipo(/**************/resultQuery.getInt/*******/("tipo"));
            element.setDataCadastro(/******/resultQuery.getDate/******/("dth_cadastro"));
            
        }catch(Exception ex){
            Logger.getLogger(ContaRepositorio.class.getName()).log(Level.SEVERE, null, ex);
     
        }   
        
        return element;
    }
    
    public boolean OpenConnect() throws SQLException  {
        try {
            Class.forName("com.mysql.jdbc.Driver");//classe para utilização do arquivo com configurções do serivdor mysql
        
            String url = "jdbc:mysql://127.0.0.1:3306/db_appteste";// drive servidor e banco de dados a serem utilizados e indicação do banco a ser utilizado
            String user ="root";// usuario do banco de dados
            String senha ="";//senha do usuario do banco de dados    
        
            this._connection =(Connection) DriverManager.getConnection(url,user,senha);//metodo que usa os parametros para conectar com o banco
            System.out.println("Conectado ao banco de dados ");
            
            return !this._connection.isClosed();
            
        } catch (Exception ex) {
            
            Logger.getLogger(ContaRepositorio.class.getName()).log(Level.SEVERE, null, ex);
        } 
        
        
        return false;
    }
    
    public void CloseConnect() throws Exception{//criando metodo que fechao conexão com o banco
        try{
            if (this._pst!= null) { //limpando os dados de conexão   
                this._pst.close();//fechando o ambiente de conexão
            }
        }catch(Exception ex){
             
            Logger.getLogger(ContaRepositorio.class.getName()).log(Level.SEVERE, null, ex);
       }
    }
}
