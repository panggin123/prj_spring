package com.mycompany.app.infra.index;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mycompany.app.infra.product.Product;
import com.mycompany.app.infra.product.ProductVo;

@Controller
public class IndexController {


	@RequestMapping(value="/biographyUsrView")
	public String biographyUsrView() {
		return "/usr/infra/biography/biographyUsrView";
	}

//	@RequestMapping(value="/indexUsrShop")
//	public String indexShop() {
//		return "/usr/infra/index/indexUsrShop";
//	}

	

	
	
	  @RequestMapping(value="/loginView") 
  		public String loginView() {
		  return"/usr/infra/biography/loginView";
	  }
	 
	 
	@RequestMapping(value="/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	
	 @RequestMapping(value="/indexUsrLogin") 
		public String indexUsrLogin() {
		  return"/usr/infra/index/indexUsrLogin";
	  }
	 


	 @RequestMapping(value="/publicCorona1List")    // 가공 하는 법 중요!!
		public String publicCorona1List(Model model) throws Exception{
		 System.out.println("asdfasdff");
		 String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=EZWNW6BlgHFtp%2F81hbFA3R0JtEtLcRSqZPYcGxrVWsg5c3XyrFcHvrMr7oDDiL4U6gfaYW5eYfX0l2OA8FSv6w%3D%3D&type=json";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}
			
			bufferedReader.close();
			httpURLConnection.disconnect();
			
			ObjectMapper objectMapper = new ObjectMapper();
		      
		      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		      
		      System.out.println("######## Map");
				for (String key : map.keySet()) {
					String value = String.valueOf(map.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
				}
				
				
				Map<String, Object> header = new HashMap<String, Object>();
				header = (Map<String, Object>) map.get("header");
				
				System.out.println("######## Header");
				for (String key : header.keySet()) {
					String value = String.valueOf(header.get(key));	// ok
					System.out.println("[key]:" + key + ", [value]:" + value);
				}
				
				String aaa = (String) header.get("resultCode");
				
				System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
				System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
				
				Map<String, Object> body = new HashMap<String, Object>();
				body = (Map<String, Object>) map.get("body");
				
				List<Home> items = new ArrayList<Home>();
				items = (List<Home>) body.get("items");
				
				System.out.println("items.size(): " + items.size());
				
//				for(Home item : items) {
//					System.out.println(item.getMM());
//				}
				
				model.addAllAttributes(header);
				model.addAllAttributes(body);
				
		  return"/usr/infra/index/publicCorona1List";
	  }
	 
	 
	 

//@RequestMapping(value= "/")
//public String home() {
//// 여기에서 서버단에서 필요한 작업을 수행한다.	
//	
//// href="/resources/xdm/v1/css/commonXdm.css"
//
//	
//// 아래의 jsp 파일 호출	
//	return "home";
//}




//		@RequestMapping(value= "/home2")
//		public String home2() {
//			return "app/home/home2";
//		}
//	
//		@RequestMapping(value="/home3")
//		public String home3() {
//			return "app/home/home3";
//		}
//			
//		@RequestMapping(value="/home4")
//		public String home4() {
//			return "app/home/home4";
//		}
//	
//		@RequestMapping(value="/home5")
//		public String home5() {
//			return "app/home/home5";
//		}
//	
//		@RequestMapping(value="/home6")
//		public String home6() {
//			return "app/home/home6";
//		}
	
}

