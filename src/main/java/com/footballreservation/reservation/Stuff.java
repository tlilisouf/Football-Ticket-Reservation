package com.footballreservation.reservation;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

public class Stuff {

	public static String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	public static Date getSQLDate(String birthday) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date date = null;
		Date sqlDate = null;
		try {

			date = formatter.parse(birthday);
			sqlDate = new java.sql.Date(date.getTime());
			System.out.println("SQL Date" + sqlDate);

		} catch (ParseException e) {
			e.printStackTrace();
		}
		return sqlDate;
	}

	public static int converToInteger(String fiedl) {
		int number = 0;
		try {
			number = Integer.parseInt(fiedl);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return number;

	}

	public static float converToFloat(String fiedl) {
		float number = 0;
		try {
			number = Float.parseFloat(fiedl);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		return number;
	}

}
