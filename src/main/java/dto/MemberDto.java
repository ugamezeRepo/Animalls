package dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberDto {
	private String memberId; 
	private int deliveryId; 
	private String password;
	private String name;
	private String nickname; 
	private String role;
	private String phoneNumber;
	private String rank; 
	private String profileImage; 
	private String email;
	private boolean emailVerified; 
	private String registeredDate;
}
