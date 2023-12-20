package dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DeliveryAddressDto {
	int deliveryId;
	int postalAddress; 
	String address; 
	String addressDetail; 
}
