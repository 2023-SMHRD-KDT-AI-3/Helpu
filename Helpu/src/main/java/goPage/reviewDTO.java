package goPage;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class reviewDTO {

	private int rv_code;
	private String id;
	private int pro_code;
	private String rv_content;
	private String rv_img;
	private String created_at;
	private String ratings;

}
