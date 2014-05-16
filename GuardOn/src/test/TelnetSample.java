package test;

import java.io.InputStream;
import java.io.PrintStream;

import org.apache.commons.net.telnet.TelnetClient;

public class TelnetSample {

	private TelnetClient telnet = new TelnetClient();
	private InputStream in = null;
	private PrintStream out = null;
	private String hostPrompt;

	public void connect(String server, String user, String password) throws Exception{

			telnet.connect(server, 23);
			telnet.setSoTimeout(10000);

			in = telnet.getInputStream();
			out = new PrintStream(telnet.getOutputStream());

			readUntil("login:");
			write(user);

			readUntil("assword:");
			write(password);

			readUntil(hostPrompt);		
	}

	public void readUntil(String pattern) {
		try {
			char lastChar = pattern.charAt(pattern.length() - 1);
			StringBuffer sb = new StringBuffer();
			char ch = (char) in.read();

			while (true) {
				System.out.print(ch);
				sb.append(ch);
				if (ch == lastChar) {
					if (sb.toString().endsWith(pattern)) {
						break;
					}
				}

				ch = (char) in.read();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void write(String value) {
		try {
			out.println(value);
			out.flush();
			System.out.println(value);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void changePwd(String userId, String currentPwd, String newPwd) {
		/*
		 * //When server is based on linux try { write("passwd " + userId);
		 * readUntil(":"); write(currentPwd); readUntil(":"); write(newPwd);
		 * readUntil(":"); write(newPwd);
		 * 
		 * readUntil("\n"); readUntil("\n"); } catch (Exception e) {
		 * e.printStackTrace(); }
		 */

		// When server is based on windows
		try {
			write("net user " + userId + " *");
			readUntil(":");
			write(newPwd);
			readUntil(":");
			write(newPwd);

			readUntil(hostPrompt);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * Telnet ������댁����.
	 */
	public void disconnect() {
		try {
			telnet.disconnect();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getHostPrompt() {
		return hostPrompt;
	}

	public void setHostPrompt(String hostPrompt) {
		this.hostPrompt = hostPrompt;
	}
}
