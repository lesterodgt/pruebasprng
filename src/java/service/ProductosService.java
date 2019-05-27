/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import conexion.DBUtils;
import controller.Producto;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.springframework.context.annotation.Scope;

@Scope("session")
public class ProductosService {
    
    List<Producto> lproductos = new ArrayList();
    @Inject
    HashMap<String, Producto> lpedido;
    
    public ProductosService(){
        this.lpedido = new HashMap();
        
        lproductos.add( new Producto("1","jeaans negros", 2.7, "jeaans negros"));
        lproductos.add( new Producto("2","Vestido blanco", 1.8, "Vestido blanco"));
        lproductos.add( new Producto("3","Zapatos NIke", 6.9, "Zapatos NIke"));
        lproductos.add( new Producto("4","Lentes de sol", 8.10, "Lentes de sol"));
        lproductos.add( new Producto("5","Falda cafe", 7.11, "Falda cafe"));
        lproductos.add( new Producto("6","Producto Y", 8.12, "Producto Y"));
    }
    
    public List<Producto> obtenerproductos(){
        
//      List<Producto>  lista = new ArrayList();           
//        try{
//            Producto p = null;
//            Connection con=DBUtils.conectar("esquema","clave","ip","8080","servicio ocl");
//            Object datosinsert[]={};
//            List<String> datos = DBUtils.ejecutaConsulta(con, "SELECT id_producto, nom_producto, precio_producto, desc_producto FROM producto ", datosinsert);
//            int j = 0;
//            for(int i = 0; i < datos.size()/4; i++){
//                j+=4;
//                p = new Producto( datos.get(j+0), datos.get(j+1), Double.parseDouble(datos.get(j+2)), datos.get(j+3));
//                lista.add(p);
//            }
//        }catch(Exception e){
//            System.out.println("error al conectar con la bd");
//        }
//        return lista;
        return lproductos;
    }
    
    public void agregarPedido(String id, String cantidad){
        Producto p = obtenerdetalle(id);
        p.setCantidad(Integer.parseInt(cantidad));
        lpedido.put(id, p);
    }
    
    public void quitarPedido(String id){
        lpedido.remove(id);
    }
    
     public List<Producto> obtenerCarroCompras(){
        List<Producto> pedido = new ArrayList();
        for (Map.Entry<String, Producto> entry : lpedido.entrySet()) {
            pedido.add(entry.getValue());
        }
        return pedido;
    }
    
    public String printPedidos(){
        return Arrays.asList(lpedido).toString();
    }
    
    public Producto obtenerdetalle(String id){
        /*try{
            Producto p = null;
            Connection con=DBUtils.conectar("esquema","clave","ip","8080","servicio ocl");
            Object datosinsert[]={id};
            List<String> datos = DBUtils.ejecutaConsulta(con, "SELECT nom_producto, precio_producto, desc_producto FROM producto WHERE id=?", datosinsert);
            if(datos.size()==3){
                p = new Producto(id, datos.get(0), Double.parseDouble(datos.get(1)), datos.get(2));
            }
        }catch(Exception e){
            System.out.println("error al conectar con la bd");
        }*/
        
        return lproductos.get(Integer.parseInt(id)-1);
    }
    
    
}
