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
	private int upload_id;
	private String uploader_id; //로그인 사용자의 아이디
	private String org_filename;
	private String save_filename;
	private long filesize;
	private String uploaded_at;
}
