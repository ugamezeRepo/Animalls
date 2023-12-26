package model.oauth.kakao;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class KakaoProfile {
	@SerializedName("nickname")
	String nickname; 
	
	@SerializedName("thumbnail_image_url")
	String thumbnailImageUrl; 
	
	@SerializedName("profile_image_url")
	String profilfeImageUrl; 
}