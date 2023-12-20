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
public class OrderRequestDto {
	private int order_id;
	private int postal_address;
	private String state;
	private String detailed_address;
	private String delivery_message;
	private int payment_method;
	private String message;
	private String ordered_date;
}
