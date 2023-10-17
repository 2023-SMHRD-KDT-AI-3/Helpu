package model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class member_orderDTO {

	private int pro_code;
	private String pro_name;
	private int pro_price;
	private String order_at;
	private int od_cnt;
	private String pro_img;
	
	
}
