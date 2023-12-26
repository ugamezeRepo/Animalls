package util;

import java.io.UnsupportedEncodingException;
import java.util.Map;

public class QueryString {
	public static String from(Map<String, String> params) throws UnsupportedEncodingException {
		StringBuilder sb = new StringBuilder();
		for (Map.Entry<String, String> entry : params.entrySet()) {
			sb.append(URLConverter.encode(entry.getKey()));
			sb.append("=");
			sb.append(URLConverter.encode(entry.getValue()));
			sb.append("&");
        }
		String tmp = sb.toString();
		return tmp.length() > 0
		  ? tmp.substring(0, tmp.length() - 1)
		  : tmp;
	}
}
