package tn.spring.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import tn.spring.app.dao.UserDao;
import tn.spring.app.entity.UserEntity;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserDao userDao;

	@RequestMapping("/save/{num}")
	public String ajout(@PathVariable String num,@ModelAttribute UserEntity u, Model model) {
		
		if("0".equals(num)) {
			userDao.save(u);
		}else {
			userDao.update(u);
		}
		
		return "redirect:/user/list";
	}
	
	

	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("listUser", userDao.getListUser());
		return "list";
	}

	@RequestMapping("/editForm")
	public String editForm(Model model) {
		return "form";

	}
	@RequestMapping("/addForm")
	public String addForm(Model model) {
		model.addAttribute("action", "/springTest/user/save/0");
		return "form";

	}

	@RequestMapping("/edit/{login}")
	public String edit(Model model, @PathVariable Long login) {
		model.addAttribute("user", userDao.findUserByLogin(login));
		model.addAttribute("action", "/springTest/user/save/1");
		return "form";
	}
	
	
	@RequestMapping("/delete/{id}")
	public String delete( @PathVariable Long id, Model model) {
		UserEntity u = userDao.findUserByLogin(id);
		userDao.delete(u);
		return "redirect:/user/list";
	}

}
