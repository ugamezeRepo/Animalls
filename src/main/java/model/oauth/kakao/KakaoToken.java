package model.oauth.kakao;

import com.google.gson.annotations.SerializedName;
import lombok.Data;

@Data
public class KakaoToken {
	@SerializedName("access_token")
	String accessToken;
	
	@SerializedName("token_type")
	String tokenType;
	
	@SerializedName("refresh_token")
	String refreshToken; 
	
	@SerializedName("expires_in")
	int expiresIn;
	
	@SerializedName("refresh_token_expires_in")
	int refreshTokenExpiresIn;
}
