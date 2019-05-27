package controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;
import service.ProductosService;

@Controller
public class ProductosController {
    @RequestMapping("/productos")
    public String porVendedor( Model model) {

        List<Producto> lproductos = new ProductosService().obtenerproductos();
        model.addAttribute("lista", lproductos);
        return "productos";
    }
    
    public Producto obtenerDetalle(String id){
        Producto p = new ProductosService().obtenerdetalle(id);
        return p;
    }
}
