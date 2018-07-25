package com.ujiuye.hospital.util;

import com.ujiuye.hospital.bean.Bespeakstate;
import com.ujiuye.hospital.bean.Worktime;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class WeekUtil {

    /*通过字符串更改工作状态*/
    public static void initWorkTime(Worktime work,String weekString){
        String[] weeks = weekString.split(",");//把字符串编程数组
        /*先让所有星期的工作状态为未工作*/
        work.setSunday("1");
        work.setMonday("1");
        work.setTuesday("1");
        work.setWednesday("1");
        work.setThursday("1");
        work.setFriday("1");
        work.setSaturday("1");
        /*通过遍历数组，设置一周的哪一天工作*/
        for (String week:weeks){
            switch (week){
                case "sunday":{work.setSunday("0");break;}
                case "monday":{work.setMonday("0");break;}
                case "tuesday":{work.setTuesday("0");break;}
                case "wednesday":{work.setWednesday("0");break;}
                case "thursday":{work.setThursday("0");break;}
                case "friday":{work.setFriday("0");break;}
            }
        }
    }

    public static Map<String,String> getWeekMap(Worktime worktime){
        Map<String,String> map = new TreeMap<String,String>(new WeekComparator());
        if(worktime.getSunday().equals("0")){
            map.put("sunday","星期日");
        }

        if(worktime.getMonday().equals("0")){
            map.put("monday","星期一");
        }

        if(worktime.getTuesday().equals("0")){
            map.put("tuesday","星期二");
        }

        if(worktime.getWednesday().equals("0")){
            map.put("wednesday","星期三");
        }

        if(worktime.getThursday().equals("0")){
            map.put("thursday","星期四");
        }

        if(worktime.getFriday().equals("0")){
            map.put("friday","星期五");
        }

        if(worktime.getSaturday().equals("0")){
            map.put("saturday","星期六");
        }
        return map;
    }

    public static String getWeekName(String week){
        Map<String,String> map = new TreeMap<String,String>(new WeekComparator());
        switch (week){
            case "sunday":{return "星期日";}
            case "monday":{return "星期一";}
            case "tuesday":{return "星期二";}
            case "wednesday":{return "星期三";}
            case "thursday":{return "星期四";}
            case "friday":{return "星期五";}
            case "saturday":{return "星期六";}
        }
        return "未知";
    }

    /*把'0'和'1'转换为'是'和'否'*/
    public static void weekChanger(Worktime worktime){
        if(worktime.getSunday().equals("0")){
            worktime.setSunday("是");
        }else {
            worktime.setSunday("否");
        }

        if(worktime.getMonday().equals("0")){
            worktime.setMonday("是");
        }else {
            worktime.setMonday("否");
        }

        if(worktime.getTuesday().equals("0")){
            worktime.setTuesday("是");
        }else {
            worktime.setTuesday("否");
        }

        if(worktime.getWednesday().equals("0")){
            worktime.setWednesday("是");
        }else {
            worktime.setWednesday("否");
        }

        if(worktime.getThursday().equals("0")){
            worktime.setThursday("是");
        }else {
            worktime.setThursday("否");
        }

        if(worktime.getFriday().equals("0")){
            worktime.setFriday("是");
        }else {
            worktime.setFriday("否");
        }

        if(worktime.getSaturday().equals("0")){
            worktime.setSaturday("是");
        }else {
            worktime.setSaturday("否");
        }
    }

    public static void weekAdder(Bespeakstate state, String week) {
        switch (week){
            case "sunday":{state.setSunday_state(state.getSunday_state()+1);break;}
            case "monday":{state.setMonday_state(state.getMonday_state()+1);break;}
            case "tuesday":{state.setTuesday_state(state.getTuesday_state()+1);break;}
            case "wednesday":{state.setWednesday_state(state.getWednesday_state()+1);break;}
            case "thursday":{state.setThursday_state(state.getThursday_state()+1);break;}
            case "friday":{state.setFriday_state(state.getFriday_state()+1);break;}
        }
    }
}
