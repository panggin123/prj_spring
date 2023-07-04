package com.mycompany.app.infra.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo){
		System.out.println("service: vo.getShKeyword(): " + vo.getShKeyword());		
		return dao.selectList(vo);
		}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeGroup dto) {return dao.update(dto);}
	
	@Override
	public int delete(CodeGroup dto) {return dao.delete(dto);}
	
	@Override
	public int insert(CodeGroup dto) {return dao.insert(dto);}
	
	@Override
	public int uelete(CodeGroup dto) {return dao.uelete(dto);}

	@Override
	public int selectOneCount(CodeGroupVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
//	public List<CodeGroup> selectOne(CodeGroupVo vo){
//		return dao.selectList(vo);
//	}
}
