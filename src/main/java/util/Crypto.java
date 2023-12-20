package util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class Crypto {
	public static String hash(String plainText) {
		try {
			String secretKey = "blowfish-secret-owo-123";
	        MessageDigest md = MessageDigest.getInstance("SHA-256");
	        md.update(secretKey.getBytes(StandardCharsets.UTF_8));
	        byte[] hashedKey = md.digest();
	        SecretKey key = new SecretKeySpec(hashedKey, "Blowfish");
	        Cipher cipher;
			cipher = Cipher.getInstance("Blowfish");
	        cipher.init(Cipher.ENCRYPT_MODE, key);

	        byte[] encryptedBytes = cipher.doFinal(plainText.getBytes(StandardCharsets.UTF_8));
	        StringBuilder hexString = new StringBuilder();
	        for (byte encryptedByte : encryptedBytes) {
	            hexString.append(String.format("%02x", encryptedByte));
	        }
	        return hexString.toString();
		} catch (Exception e) {
			throw new RuntimeException("Unable to handle error");
		}
	}
}
