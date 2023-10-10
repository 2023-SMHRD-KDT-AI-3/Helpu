package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class joinDTO {
	
	private String id;
	private String pw;
	private String m_allergy;
	private String birthdate;
	private String phone_number;
	private String gender;
	private String address;
	
}
