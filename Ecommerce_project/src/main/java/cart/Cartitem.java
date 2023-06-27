package cart;
import Servletclass.Product;
import Servletclass.ProductDAO;
public class Cartitem {
    private Product product;
    private int quantity;

    public Cartitem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotalPrice() {
        return product.getPrice() * quantity;
    }
    public static Product getProductById(String productId) {
        return ProductDAO.getProductById(productId);
    }
}





