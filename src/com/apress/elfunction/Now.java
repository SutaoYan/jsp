package com.apress.elfunction;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Now {

	public static String now() {
		Calendar currentDate = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MMM/dd HH:mm:ss");
		String now = formatter.format(currentDate.getTime());

		return now;
	}
}
