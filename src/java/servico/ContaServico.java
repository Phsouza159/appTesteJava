/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servico;

import Repositorio.ContaRepositorio;
import domain.Conta;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author laboratorio
 */
public class ContaServico {
    
    private ContaRepositorio _repositorio;
    
    public ContaServico() {
        _repositorio = new ContaRepositorio();
    }
    
    public void AddConta(Conta conta) {
        try{
            _repositorio.OpenConnect();
            _repositorio.Add(conta);
            _repositorio.CloseConnect();
        }
        catch(Exception err) {
        
        }
    }
    
    public List<Conta> GetAll() {
        List<Conta> response = new ArrayList<Conta>();
        
        try{
         
            _repositorio.OpenConnect();
            response = _repositorio.GetAll();
            _repositorio.CloseConnect();
        }
        catch(Exception err) {
        
        }
        return response;
    }
}
