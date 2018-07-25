package com.ujiuye.hospital.converter;

import org.springframework.core.convert.converter.Converter;

public class ToNullConvertor  implements Converter<String, String> {
    @Override
    public String convert(String s) {
        if (s.length()==0){
        return null;}
        return s;
    }
}
