/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bean;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author fgmrr
 */
public class ListaMcDonaldsBean {
    private List<McDonaldsBean> lista;
    
    public ListaMcDonaldsBean (){
        lista = new ArrayList<>();
    }
    
    public void agregar(McDonaldsBean comida){
        lista.add(comida);
    }

    public List<McDonaldsBean> getLista() {
        return lista;
    }
   
}
