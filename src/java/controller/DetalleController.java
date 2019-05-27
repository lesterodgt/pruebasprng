package controller;

import java.math.BigDecimal;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import service.ProductosService;

@Controller
public class DetalleController  {

    private ProductosService productosService = new ProductosService();

    @RequestMapping("/producto")
    public String producto(
            @RequestParam("id") String id,
            Model model) {
        Producto p = obtenerDetalle(id);
        model.addAttribute("producto", p);
        model.addAttribute("helloMessage", p.getNombre());
        return "detalle";
    }

    @RequestMapping("/agregar")
    public String agregarProducto(
            @RequestParam("id") String id,
            @RequestParam("cantidad") String cantidad,
            Model model) {
        productosService.agregarPedido(id, cantidad);
        return "redirect:../productos/productos.htm";
    }
    
    @RequestMapping("/quitar")
    public String quitarProducto(
            @RequestParam("id") String id,
            Model model) {
        productosService.quitarPedido(id);
        return "redirect:../detalle/cart.htm";
    }    
    
    @RequestMapping("/cart")
    public String carrocompras(Model model) {
        List<Producto> pedido = productosService.obtenerCarroCompras();
        model.addAttribute("lista", pedido);

        double total = 0;
        for (Producto p : pedido) {
            total += (p.getPrecio() * p.getCantidad());
        }
        
        model.addAttribute("total", Math.round(total*100d)/100.00);
        return "cart";
    }
    
    public Producto obtenerDetalle(String id){
        Producto p = productosService.obtenerdetalle(id);
        return p;
    }
    
}