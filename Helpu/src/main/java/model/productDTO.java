package model;

import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class productDTO {

	private int pro_code;
	private String pro_name;
	private String pro_maker;
	private String pro_img;
	private int pro_price;
	private int pro_gramper;
	private int pro_calories;
	private int pro_sugars;
	private int pro_sodium;
	private int pro_protein;
	private int pro_fat;
	private String pro_ingredients;
	private int pro_carbohydrate;
	private int pro_cnt;
	private String pro_haveIngredients;
	private String pro_m_haveIngredients;
}
