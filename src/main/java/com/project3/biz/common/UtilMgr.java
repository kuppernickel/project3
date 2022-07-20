package com.project3.biz.common;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZoneId;

public class UtilMgr {
	public static String calcDay() {
		LocalDate nowDate = LocalDate.now(ZoneId.of("Asia/Seoul"));
		DayOfWeek dayW = nowDate.getDayOfWeek();
		String day = null;
		switch (dayW) {
		case MONDAY:
			day = "1월";
			break;
		case TUESDAY:
			day = "2화";
			break;
		case WEDNESDAY:
			day = "3수";
			break;
		case THURSDAY:
			day = "4목";
			break;
		case FRIDAY:
			day = "5금";
			break;
		default:
			break;
		}
		return day;
	}
}
