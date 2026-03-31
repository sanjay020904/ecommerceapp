package dao;

import model.CartItem;

import java.util.List;

public class CartDao {
    public void addToCart(List<CartItem> cart, CartItem newItem) {
        boolean found = false;

        for (CartItem item : cart) {
            if (item.getProductId() == newItem.getProductId()) {
                item.setQuantity(item.getQuantity() + 1);
                found = true;
                break;
            }
        }

        if (!found) {
            cart.add(newItem);
        }
    }

    // REMOVE ITEM
    public void removeFromCart(List<CartItem> cart, int productId) {
        cart.removeIf(item -> item.getProductId() == productId);
    }

    // TOTAL
    public double getTotal(List<CartItem> cart) {
        double total = 0;
        for (CartItem item : cart) {
            total += item.getPrice() * item.getQuantity();
        }
        return total;
    }
}
