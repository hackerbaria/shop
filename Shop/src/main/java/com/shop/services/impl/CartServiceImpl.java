package com.shop.services.impl;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dto.CartDTO;
import com.shop.model.Customer;
import com.shop.model.Product;
import com.shop.services.CartService;
import com.shop.services.ProductServices;


@Service
public class CartServiceImpl implements CartService {
	public static final String CART="cartContain";
	@Autowired
	ProductServices productService;
	
	/*@Autowired
	OrderDao orderDao;
	
	@Autowired
	OrderDetailDao orderDetailDao;*/
	
	
	HttpSession session;
	
	CartDTO cart;
	
	private final int NOT_SHIP_NOT_PAY=1;
	
	public CartServiceImpl() {
		
	}
	
	
	public void addCart(int id, int quantity) {;
		Product product= productService.getProductById(id);
		if(product != null){
			int newQuan=0;
			if(cart.getListProduct().containsKey(product)){
				int oldQuan=cart.getListProduct().get(product);
				newQuan=oldQuan+quantity;
			}else{
				newQuan=quantity;
			}
			cart.getListProduct().put(product, newQuan);
		}
	}

	
	public void removeCart(int id) {
		Product product= null;
				//productService.getProductDTOById(id);
		cart.getListProduct().remove(product);
	}
	
	

	public void payment() {
		// TODO Auto-generated method stub

	}

	public HttpSession getSession() {
		return session;
	}

	public void setSession(HttpSession session) {
		this.session = session;
		getCart();
	}

	
	public void getCart() {
		if(session!=null){
			cart=(CartDTO)session.getAttribute("cartContain");
			if(cart==null){
				cart=new CartDTO();
				session.setAttribute("cartContain", cart);
			}
		}
	}

	public void setCart(CartDTO cart) {
		this.cart = cart;
	}

	
	public void changeQuantity(int id, int quantity) {
		Product product= null;
				//productService.getProductDTOById(id);
		if(product!=null){
			cart.getListProduct().put(product, quantity);
		}
	}

	public CartDTO getCartDTO() {
		return this.cart;
	}

	
	public void update(HttpServletRequest request) {
		Map<Product,Integer> map=cart.getListProduct();
		for(Product p:map.keySet()){
			int newValue=Integer.parseInt(request.getParameter(p.getId()+""));
			map.put(p,newValue);
		}
	}

	
	public boolean checkEmptyCart() {
		if(cart.getListProduct().isEmpty()){
			return true;
		}
		return false;
	}

	
	public void order(Customer customer){
		/*Order order=new Order();
		order.setCusAddress(customer.getAddress());
		order.setCusAddressShip(customer.getAddress());
		order.setCusName(customer.getName());
		order.setCusPhone(customer.getPhone());
		order.setCode("#1231231232");
		order.setCusEmail("fuck");
		order.setDate(Utility.getNowDate());
		order.setStatus(NOT_SHIP_NOT_PAY);
		orderDao.create(order);
		Map<ProductDTO,Integer> map = cart.getListProduct();
		for(ProductDTO p:map.keySet()){
			Product pro=productService.getProductById(p.getId());
			Promotion promotion=pro.getPromo();
			OrderDetail orderDetail=new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setProduct(pro);
			orderDetail.setPromotion(promotion);
			orderDetail.setQuantity(map.get(p));
			orderDetail.setDate(Utility.getNowDate());
			orderDetail.setOriginalPrice(p.getPrice());
			if(p.getPromotePrice()==0){
				orderDetail.setPayPrice(p.getPrice());
			}else{
				orderDetail.setPayPrice(p.getPromotePrice());
			}
			orderDetail.setStatus(NOT_SHIP_NOT_PAY);
			orderDetailDao.create(orderDetail);
			session.setAttribute(CART, null);
		}*/
	}

	
	
	
}
