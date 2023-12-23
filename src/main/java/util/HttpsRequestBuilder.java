package util;

import java.io.IOException;
import java.net.ProtocolException;
import java.net.URL;

import javax.net.ssl.HttpsURLConnection;

public class HttpsRequestBuilder {
	HttpsURLConnection conn;

	
	public HttpsRequestBuilder(String dst) throws IOException{
		URL url = new URL(dst);
		conn = (HttpsURLConnection)url.openConnection();
	}
	
	public HttpsRequestBuilder method(String method) throws ProtocolException {
		conn.setRequestMethod(method);
		return this;
	}
	
	public HttpsRequestBuilder contentType(String contentType) {
		conn.setRequestProperty("Content-type", contentType);
		return this;
	}
	
	public HttpsRequestBuilder authorization(String auth) {
		conn.addRequestProperty("Authorization", auth);
		return this;
	}
	
	public HttpsRequestResult send(String body) throws IOException {
		return new HttpsRequestResult(conn, body);
	}
}
