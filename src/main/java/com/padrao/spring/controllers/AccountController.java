package com.padrao.spring.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.padrao.spring.conversion.RoleEditor;
import com.padrao.spring.entities.Account;
import com.padrao.spring.entities.Role;
import com.padrao.spring.models.RoleModel;

@Controller
@RequestMapping(value = "account")
public class AccountController {
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		webDataBinder.registerCustomEditor(Role.class, new RoleEditor());
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String index(ModelMap modelMap) {
		RoleModel roleModel = new RoleModel();
		Account account = new Account();
		account.setRole(roleModel.find("r3"));
		modelMap.put("account", account);
		modelMap.put("roles", roleModel.findAll());
		return "account/index";
	}
	
	@RequestMapping(value = "save", method = RequestMethod.POST)
	public String save(@ModelAttribute("account") Account account, ModelMap modelMap) {
		modelMap.put("account", account);
		return "account/success";
	}
}
