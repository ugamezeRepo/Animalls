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
	private int uploadId;
	private String uploaderId; //로그인 사용자의 아이디
	private String orgFilename;
	private String saveFilename;
	private long filesize;
	private String uploadedAt;
}
