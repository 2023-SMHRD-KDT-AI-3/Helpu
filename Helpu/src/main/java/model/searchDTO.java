package model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class searchDTO {

	private String name;
	private int price;
	private String img;
	private String maker;
}
