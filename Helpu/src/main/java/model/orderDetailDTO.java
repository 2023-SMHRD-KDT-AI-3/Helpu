package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class orderDetailDTO {
	private int od_code;
	private int order_code;
	private int pro_code;
	private int od_cnt;
}
