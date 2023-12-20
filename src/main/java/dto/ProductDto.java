package dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductDto {
	private int product_id;
	private String seller_id;
	private String category;
	private String title;
	private String description;
	private int org_price;
	private int sale_price;
	private String sales_state;
	private String thumbnail;
}