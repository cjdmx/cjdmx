import com.ujiuye.hospital.bean.Worktime;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Main2 {
    public static void main(String[] args) {
        String str = "d:/temp/";
        File file = new File(str);
//        System.out.println(file.delete());
        System.out.println(file.getPath());
    }

    public void getWeek(List<Worktime> works, String workDay){
        String[] split = workDay.split(",");
        for(Worktime work:works){
            work.setSunday("1");
            work.setMonday("1");
            work.setTuesday("1");
            work.setWednesday("1");
            work.setThursday("1");
            work.setFriday("1");
            work.setSaturday("1");
            switch (workDay){
                case "sunday":work.setSunday("0");break;
                case "monday":work.setMonday("0");break;
                case "tuesday":work.setThursday("0");break;
                case "wednesday":work.setWednesday("0");break;
                case "thursday":work.setThursday("0");break;
                case "friday":work.setFriday("0");break;
            }
        }
    }
}
