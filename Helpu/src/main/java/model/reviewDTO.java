package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // 필드를 사용한 getter/setter 메소드 생성
@AllArgsConstructor // 모든 필드를 사용한 생성자 메소드 생성
@NoArgsConstructor // 매개변수가 없는 기본 생성자 메소드 생성
public class reviewDTO {

	private String rv_code;
	private String id;
	private String pro_code;
	private String rv_content;
	private String created_at;
	private String ratings;
}
