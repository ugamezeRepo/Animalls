package dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NoticeItemDto {
	int noticeItemId; 
	String writerId; 
	String noticeTitle; 
	String noticeContent; 
	String createdAt; 
}
