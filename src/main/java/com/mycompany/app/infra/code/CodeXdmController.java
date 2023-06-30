package com.mycompany.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.codeGroup.CodeGroup;
import com.mycompany.app.infra.codeGroup.CodeGroupVo;



@Controller
public class CodeXdmController {

	@Autowired
	CodeXdmServiceImpl service;
	
	@RequestMapping(value="/codeXdmList")
	public String codeXdmList(CodeXdmVo vo ,Model model) {
		
		List<CodeXdm> list = service.selectList(vo);
		
		model.addAttribute("list",list);
		
		return "/xdm/infra/index/codeXdmList";
	}
	
	@RequestMapping(value="/codeXdmForm")
	public String indexXdmViewForm(CodeXdmVo vo, Model model) {
		
		model.addAttribute("item", service.selectOne(vo));
		
		return"xdm/infra/index/codeXdmForm";
	}
	
	@RequestMapping("/codeXdmUpdate")
	public String codeXdmUpdate(CodeXdm dto) {
		
		System.out.println("codeXdmUpdate");
		
		System.out.println("dto.getName(): " + dto.getName());
		System.out.println("dto.getSeq(): " + dto.getSeq());
		
		service.update(dto);
		
		
		return "redirect:/codeXdmList";
	}

	@RequestMapping("/codeXdmDelete")
	public String codeXdmUele(CodeXdm dto) {
		
	
		service.delete(dto);
		
		return "redirect:/codeXdmList";
	}
}