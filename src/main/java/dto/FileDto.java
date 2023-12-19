package dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class FileDto {
	private int num;
	private String writer; //로그인 사용자의 아이디
	private String title;
	private String orgFileName;
	private String saveFileName;
	private long fileSize;
	private String regdate;
}
