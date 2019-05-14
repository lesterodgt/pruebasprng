package controller;

import conexion.DBUtils;
import java.sql.Connection;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
/**
 *
 * @author nbuser
 */
@Controller
public class DetalleController  {

    @RequestMapping("/producto")
    public String porVendedor(
            @RequestParam("id") String id,
            Model model) {

        Producto p = obtenerDetalle(id);
        model.addAttribute("producto", p);
        model.addAttribute("helloMessage", p.getNombre());
        return "detalle";
    }
    
    
    public Producto obtenerDetalle(String id){
        Random rand = new Random();
        double precio = 100 + ( 200 - 100 ) * rand.nextDouble();
        
        Producto p = new Producto(id, nombre(Integer.parseInt(id)) ,((double)Math.round(precio*100d))/100 , "producto de prueba 123......");
        /*try{
            Producto p = null;
            Connection con=DBUtils.conectar("esquema","clave","ip","8080","servicio ocl");
            Object datosinsert[]={id};
            List<String> datos = DBUtils.ejecutaConsulta(con, "SELECT nombre, precio, descripcion FROM producto WHERE id=?", datosinsert);
            if(datos.size()==3){
                p = new Producto(id, datos.get(0), Double.parseDouble(datos.get(1)), datos.get(2));
            }
        }catch(Exception e){
            System.out.println("error al conectar con la bd");
        }*/
        return p;
    }
    
    public String nombre(int indice) {
        switch (indice) {
            case 1:
                return "jeaans negros";
            case 2:
                return "Vestido blanco";
            case 3:
                return "Zapatos NIke";
            case 4:
                return "Lentes de sol";
            case 5:
                return "Falda cafe";
            default:
                return "Producto Y";
        }
    }
}