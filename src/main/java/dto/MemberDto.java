package dto;

import dto.MemberDto.MemberDtoBuilder;
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
	private String nickname; 
	private String role;
	private String phoneNumber;
	private String rank; 
	private String profileImage; 
	private boolean emailVerified; 
}
