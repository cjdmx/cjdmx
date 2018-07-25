package com.ujiuye.hospital.converter;

import org.springframework.core.convert.converter.Converter;

public class StringTrim implements Converter<String, String> {

	@Override
	public String convert(String info) {
		String ninfo = info.trim();
		return ninfo;
	}
}
