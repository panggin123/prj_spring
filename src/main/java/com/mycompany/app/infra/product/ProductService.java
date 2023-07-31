package com.mycompany.app.infra.product;

import java.util.List;

public interface ProductService {

	public List<Product> selectList(ProductVo vo);
	
	public Product selectOne(ProductVo vo);

	public int selectOneCheckId(ProductVo vo);
	
	public int selectOneCount(ProductVo vo);
	
	public int update(Product dto);
	
	public int delete(Product dto);
	
	public int insert(Product dto);
	
	
	public int uelete(Product dto);
	
	
//	public List<CodeGroup> selectOne(CodeGroupVo vo);
	
//	public List<CodeGroup> selectList();	
	
//	public List<CodeGroup> selectList();
	
}