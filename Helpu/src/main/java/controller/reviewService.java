package controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.reviewDAO;
import model.reviewDTO;

public class reviewService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// 게시글을 추가하는 기능

		// request → 파일전송시 MultipartRequest 객체 사용

		// - request : MultipartRequest와 연결될 request
		// - path : 서버에 저장하고자 하는 경로
		// - maxSize : 파일의 최대 크기
		// - encoding : 파일의 이름 인코딩
		// - DefaultFileRenamePolicy : 파일을 업로드시 이름이 중복되지 않도록 관리하는 객체

		// path : 'file'이라는 경로를 찾아옴
		String path = request.getServletContext().getRealPath("file");

		// maxSize : 1byte 기준(1MB = 1024*1024)
		int maxSize = 1024 * 1024 * 5;

		// encoding
		String encoding = "utf-8";

		
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, path, maxSize, encoding, new DefaultFileRenamePolicy());
			// 데이터 수집
			String r_code = multi.getParameter("rv_code");
			String id = multi.getParameter("id");
			String p_code = multi.getParameter("pro_code");
			String img = multi.getFilesystemName("rv_img");
			String ratings = multi.getFilesystemName("ratings");

			// DB에 추가하고자 하는 내용 연결하기
			reviewDAO dao = new reviewDAO();

			// 여러개 데이터를 Board 타입으로 사용할 수 있는 객체 생성
			reviewDTO dto = new reviewDTO();
			dto.setRv_code(Integer.valueOf(r_code));
			dto.setId(id);
			dto.setPro_code(Integer.valueOf(p_code));
			dto.setRv_img(img);
			dto.setRatings(ratings);

			int cnt = dao.write(dto); // → insert 작업! → return값이 int형

			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;
	}

}
