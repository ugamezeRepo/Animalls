package util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class URLConverter {
	public static String encode(String plain) throws UnsupportedEncodingException {
		return URLEncoder.encode(plain, "utf-8");
	}
	
	public static String decode(String encoded) throws UnsupportedEncodingException {
		return URLDecoder.decode(encoded, "utf-8");
	}
}
