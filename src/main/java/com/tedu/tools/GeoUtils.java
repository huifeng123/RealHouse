package com.tedu.tools;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;

/**
 * Created by bigjsd on 2017/6/4.
 */
public class GeoUtils {

    public static String[] getJsonByUrl() throws IOException {

        String ak =  "f47bfffa7e61a28398ee5cdb42e65d47";
        String address = "方恒国际中心A座";
        String city = "北京";
        String url = "http://restapi.amap.com/v3/geocode/geo?key="+ak+"&address="+address+"&city="+city+"";
        InputStream is = new URL(url).openStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(is));
        StringBuffer sb = new StringBuffer();
        String str = "";
        str = br.readLine();
//        System.out.println(str);
        if(null == str || str == ""){
            return null;
        }
        JSONObject object = JSONObject.parseObject(str);
        JSONArray geocodes = object.getJSONArray("geocodes");
        String[] strs = {};
        String lngX = "";
        String latY = "";
        if (geocodes.size() == 0) {
            return null;
        } else if (geocodes.size() == 1) {
            JSONObject trueAddress = geocodes.getJSONObject(0);
            String location = trueAddress.getString("location");
            lngX = location.split(",")[0];
            latY = location.split(",")[1];
            strs = new String[] {lngX, latY};
        } else {
            return null;
        }
        return strs;
    }

    public static void main(String[] args) {
        try {
            String[] strs = getJsonByUrl();
            System.out.println(Arrays.toString(strs));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
