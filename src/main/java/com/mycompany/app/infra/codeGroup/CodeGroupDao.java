package com.mycompany.app.infra.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.codeGroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		System.out.println("dao: vo.getShKeyword(): " + vo.getShKeyword());
		return sqlSession.selectList(namespace + ".selectList", vo);
		}
	
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne",vo);
		return codeGroup;
	}
	
	public int selectOneCount(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	
	public int update(CodeGroup dto) { return sqlSession.update(namespace + ".update",dto);}
	
	public int delete(CodeGroup dto) { return sqlSession.delete(namespace + ".delete",dto);}
	
	public int insert(CodeGroup dto) { return sqlSession.insert(namespace + ".insert",dto);}
	
	public int uelete(CodeGroup dto) {return sqlSession.insert(namespace + ".insert",dto);} 

	
	
	
	
	
	
	
	//public List<CodeGroup> selectList(CodeGroupVo vo){
	//	return sqlSession.selectList(namespace+".selectList",vo)
	//}
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
//	}
	//@ 언어테이션
}
