package model.oauth.kakao;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class KakaoUserInfo {
	@SerializedName("id")
	Long id; 
	
	@SerializedName("kakao_account")
	KakaoAccount kakaoAccount;
}
