package model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class cartDTO {
	
	private int cart_id;
	private int su;
	private Date p_date;
	private String id;
	private int pro_code;			
	
}
