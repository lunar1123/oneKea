package com.example.jpetstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.jpetstore.domain.Item;
import com.example.jpetstore.service.OneKeaFacade;

/**
 * @author Juergen Hoeller
 * @since 30.11.2003
 * @modified-by Changsup Park
 */
@Controller
public class ViewItemController { 

	private OneKeaFacade oneKea;

	@Autowired
	public void setPetStore(OneKeaFacade oneKea) {
		this.oneKea = oneKea;
	}

	@RequestMapping("/shop/viewItem.do")
	public String handleRequest(
			@RequestParam("itemId") String itemId,
			ModelMap model) throws Exception {
		Item item = this.oneKea.getItem(itemId);
		model.put("item", item);
		model.put("product", item.getProduct());
		return "Item";
	}

}
