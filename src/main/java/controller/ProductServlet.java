package controller;

import dao.ProductDao;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Products;

import java.sql.SQLException;
import java.util.List;
@WebServlet("/products")
public class ProductServlet extends HttpServlet {

    public void service (HttpServletRequest req, HttpServletResponse res)

    {   System.out.println("Servlet is called");
        ProductDao pd= new ProductDao();
        try {
            List<Products> products=pd.getProducts();
            req.setAttribute("products",products);
            req.getRequestDispatcher("products.jsp").forward(req,res);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
