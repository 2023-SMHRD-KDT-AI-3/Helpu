package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class allergyDTO {
	
	
	private int al_code;
	private String al_name;
	private String al_info;
	
}
