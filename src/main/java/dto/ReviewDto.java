package dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ReviewDto {
	private int review_id;
	private int product_id; //로그인 사용자의 아이디
	private String reviewer_id;
	private String title;
	private String content;
	private String thumbnail;
	private int rating;
	private int like_count;
	private String created_at;
	private String updated_at;

}
