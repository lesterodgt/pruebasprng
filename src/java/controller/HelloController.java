package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import service.HelloService;
import service.ProductosService;

/**
 *
 * @author nbuser
 */
public class HelloController extends SimpleFormController {

    private HelloService helloService;

    public void setHelloService(HelloService helloService) {
        this.helloService = helloService;
    }

    public HelloController() {
        //Initialize controller properties here or
        //in the Web Application Context

        setCommandClass(Name.class);
        setCommandName("name");
        setSuccessView("helloView");
        setFormView("nameView");
    }

    //Use onSubmit instead of doSubmitAction
    //when you need access to the Request, Response, or BindException objects
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception {
        Name name = (Name) command;
        ModelAndView mv = new ModelAndView(getSuccessView());
        mv.addObject("helloMessage", helloService.sayHello(name.getValue()));
        return mv;
    }
    
    protected Map referenceData(HttpServletRequest request) throws Exception {
        Map referenceData = new HashMap();
        //Data referencing for web framework checkboxes
        List<Producto> lproductos = new ProductosService().obtenerproductos();
        referenceData.put("lista", lproductos);
        referenceData.put("producto", "lester123..");
        return referenceData;
    }

}
