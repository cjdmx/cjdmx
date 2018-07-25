package com.ujiuye.hospital.util;

import java.util.Comparator;

public class WeekComparator implements Comparator<String> {

    @Override
    public int compare(String o1, String o2) {
        int w1=change(o1);
        int w2=change(o2);
        return w1-w2;
    }

    public static int change(String str){
        int sum=0;
        switch (str){
            case "monday":{sum=2;break;}
            case "tuesday":{sum=3;break;}
            case "wednesday":{sum=4;break;}
            case "thursday":{sum=5;break;}
            case "friday":{sum=6;break;}
            case "saturday":{sum=7;break;}
            case "sunday":{sum=1;break;}
        }
        return sum;
    }
}
