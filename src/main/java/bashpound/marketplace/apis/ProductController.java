package bashpound.marketplace.apis;

import java.io.File;
import java.io.FileOutputStream;
import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.io.ClassPathResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import bashpound.marketplace.domain.model.Member;
import bashpound.marketplace.domain.model.Product;
import bashpound.marketplace.services.member.MemberService;
import bashpound.marketplace.services.product.ProductService;
import bashpound.marketplace.utils.Message;

//김종찬 작성
@RestController
@RequestMapping("/api")
public class ProductController {
	@Autowired
	@Qualifier("productServiceImpl")
	ProductService ps;

	@Autowired
	@Qualifier("memberDetailsServiceImpl")
	MemberService ms;

	@RequestMapping(value = "/ProductRegister", method = RequestMethod.POST)
	public void productRegister(@RequestBody Map<String, Object> param) {
		Product product = new Product();
		product.setName((String) param.get("productName"));
		product.setThumbNail((String) param.get("thumbImage"));
		product.setStock(Integer.parseInt((String) param.get("stock")));
		product.setPrice(Integer.parseInt((String) param.get("price")));
		product.setCategory((String) param.get("category"));
		Member member = ms.selectByUsername((String) param.get("username"));
		product.setSeller(member);
		System.out.println(product);
		ps.productRegister(product);
	}

	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public void fileupload(MultipartFile file,
			@RequestParam(value = "category", defaultValue = "category") String category) {
		ClassPathResource classPath = new ClassPathResource("/src/main/resources/static/upload");
		String dir = classPath.getPath().toString();
		File uploadPath = new File(dir, category);
		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		String fileName = file.getOriginalFilename();
		try {
			FileOutputStream fos = new FileOutputStream(new File(uploadPath, fileName));
			fos.write(file.getBytes());
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/listProductAll", method = RequestMethod.GET)
	public List<Product> listAll() {
		return ps.listProductAll();
	}

	@RequestMapping(value = "/SearchResult", method = RequestMethod.GET)
	public List<Product> searchProduct(@RequestParam(value = "category", defaultValue = "") String category,
			@RequestParam(value = "key", defaultValue = "") String key) {
		List<Product> list = ps.searchProduct(category, key);

		return list;
	}

	@RequestMapping(value = "/details/{productId}", method = RequestMethod.GET)
	public Product productDetail(@PathVariable Long productId) {
		return ps.productDetail(productId);
	}

	@RequestMapping(value = "/getProductById", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Object> getProductById(@RequestBody List<Integer> pids) {
		pids.forEach(i -> System.out.println(i));
		try {
			List<Product> prodlist = ps.processGetProductById(pids);
			return new ResponseEntity<Object>(prodlist, HttpStatus.OK);
		} catch (Exception e) {
			String message = e.getMessage();
			return new ResponseEntity<Object>(new Message.Builder(message).build(), HttpStatus.BAD_REQUEST);
		}

	}
}
