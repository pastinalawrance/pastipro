<!DOCTYPE html>
<%@page import="cart.Cartitem"%>
<%@page import="cart.Cart"%>
<%@page import="product.ProductDAO"%>
<%@page import="product.Product"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add to Cart</title>
</head>
<body>
    <%
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productIdString = Integer.toString(productId);
        Product product = ProductDAO.getProductById(productIdString);
        
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        Cartitem cartItem = new Cartitem(product, 1);
        cart.addItem(cartItem);
        
        response.sendRedirect("Cart.jsp");
    %>
</body>
</html>
