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
	private int orderId;
	private int postalAddress;
	private String state;
	private String address;
	private String detailedAddress;
	private String deliveryMessage;
	private int paymentMethod;
	private String message;
	private String orderedDate;
}