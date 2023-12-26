package model.oauth.kakao;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class KakaoAccount {
	@SerializedName("profile")
	KakaoProfile profile;
}