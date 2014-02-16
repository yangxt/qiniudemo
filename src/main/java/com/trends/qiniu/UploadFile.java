package com.trends.qiniu;

import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.io.IoApi;
import com.qiniu.api.io.PutExtra;
import com.qiniu.api.io.PutRet;
import com.qiniu.api.rs.PutPolicy;

import java.io.File;

public class UploadFile {

    public static void main(String[] args) throws Exception {
        Config.ACCESS_KEY = "<YOUR APP ACCESS_KEY>";
        Config.SECRET_KEY = "<YOUR APP SECRET_KEY>";
        Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);
        // 请确保该bucket已经存在
        String bucketName = "eskyapp";
        PutPolicy putPolicy = new PutPolicy(bucketName);
        String uptoken = putPolicy.token(mac);
        PutExtra extra = new PutExtra();
        String key = "<key>";
        File localFile = new File("");
        PutRet ret = IoApi.putFile(uptoken, key, localFile, extra);
    }
}