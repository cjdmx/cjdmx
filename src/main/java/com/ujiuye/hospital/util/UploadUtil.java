package com.ujiuye.hospital.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

public class UploadUtil {
    public static boolean upload(MultipartFile file,String path){
        if (file.getSize()>0){
            //准备好变量：文件名，路径名
            File dir = new File(path);
            String filename = file.getOriginalFilename();
            String filepath = path+filename;
            System.out.println(filepath);
            //检查文件夹是否存在
            if(!dir.exists()){
                dir.mkdir();
            }
            //执行上传
            try {
                file.transferTo(new File(filepath));
                return true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
