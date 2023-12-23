package util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URLConnection;
import java.util.Map;

import com.google.gson.Gson;

public class HttpsRequestResult {
	String resp; 
	
	public HttpsRequestResult(URLConnection conn, String body) throws IOException {
		conn.setDoOutput(true);
		DataOutputStream out = new DataOutputStream(conn.getOutputStream());
		if (body != null) {
			out.writeBytes(body);	
		}		
		out.flush();
		out.close();
		
	    InputStream is = conn.getInputStream();
	    BufferedReader rd = new BufferedReader(new InputStreamReader(is));
	    StringBuilder sb = new StringBuilder();
	    String line;
	    while ((line = rd.readLine()) != null) {
	      sb.append(line);
	      sb.append('\r');
	    }
	    rd.close();
	    this.resp = sb.toString();
	}
	
	public String text() {
		return resp;
	}
	
	public <T> T json(Class<T> clazz) {
		return new Gson().fromJson(resp, clazz);
	}
	
	
}
