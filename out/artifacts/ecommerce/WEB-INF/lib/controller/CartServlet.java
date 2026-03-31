package controller;

import dao.CartDao;
import dao.ProductDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.CartItem;
import model.Products;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Cart")
public class CartServlet extends HttpServlet {

    private CartDao cartDAO = new CartDao();
    private ProductDao productDAO = new ProductDao();

    public void service(HttpServletRequest request, HttpServletResponse response)
            throws IOException {

        String action = request.getParameter("action");

        HttpSession session = request.getSession();

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        if ("add".equals(action)) {

            int productId = Integer.parseInt(request.getParameter("productId"));
            Products p = null;
            try {
                p = productDAO.getProductById(productId);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

            CartItem item = new CartItem();
            item.setProductId(p.getProduct_id());
            item.setName(p.getName());
            item.setPrice(p.getPrice());
            item.setQuantity(1);
            item.setImage(p.getImage());

            cartDAO.addToCart(cart, item);

        } else if ("remove".equals(action)) {

            int productId = Integer.parseInt(request.getParameter("productId"));
            cartDAO.removeFromCart(cart, productId);
        }

        session.setAttribute("cart", cart);

        response.sendRedirect("cart.jsp");
    }
}


