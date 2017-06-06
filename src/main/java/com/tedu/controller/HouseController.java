package com.tedu.controller;

import com.tedu.pojo.House;
import com.tedu.pojo.User;
import com.tedu.service.HouseService;
import com.tedu.utils.HouseUtils;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.UUIDEditor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashSet;
import org.springframework.web.context.annotation.RequestScope;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * Created by leo on 2017/6/2.
 */
@Controller
public class HouseController extends BaseController {
    @Autowired
    private HouseService houseService;
    // @RequestMapping("/tosingle")
       /* public  String houseDetail(Model model){
public class HouseController {
        @Autowired
        private HouseService houseService;
        @RequestMapping("/tosingle")
        public  String houseDetail(Model model,String hid){
            //通过hid查询房源的具体信息
            House house = houseService.findOneByHouseId(hid);
//            House house = houseService.findOneByHouseId("01dc4f46-711b-4f6b-a693-b37a008b0eb4");
            //House house = houseService.findOneByHouseId("01dc4f46-711b-4f6b-a693-b37a008b0eb4");
            model.addAttribute("house",house);
            //查询与房源字同小区(如金域东郡)的房源
            List<House> sameVillage = houseService.findHousesByArea(house.getArea());
            model.addAttribute("sameVillage",sameVillage);
            List<House> goodList = houseService.findVIPHousesByHcountry(house.getHcountry());
            //查询与房源相同地域(如朝阳区)的房源价格前20
          //  System.out.println(house.getHouseInfo());
            model.addAttribute("goodList",goodList);
            return "/pages/single";
        }

        @RequestMapping("/tomap")
        public String toMap(Model model,String village){
    //            House house = houseService.findHouseByHid("44f105ee-aa27-47af-a10c-0a94a39dd49b");
           // System.out.println(village);
            model.addAttribute("village",village);
            return "pages/map/mapRun";
        }

    /**
     * 跳转到发布房源信息页面
     *
     * @param uid 用户id
     * @return
     */
    @RequestMapping("/pages/userCreateHouse")
    public String userCreateHouse(String uid, Model model) {
        //自造uid 测试代码用，整合时注释掉
        //uid="a8b38a83-e9ae-4200-9a17-e3924616a979";
        //为下来列表准备内容
        List<House> houseList = houseService.findAll();
        HashSet<String> countrySet = new HashSet<String>();
        HashSet<String> hstructureSet = new HashSet<String>();
        HashSet<String> faceSet = new HashSet<String>();
        HashSet<String> hrepairSet = new HashSet<String>();
        for (House h : houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        model.addAttribute("countrySet", countrySet);
        model.addAttribute("hstructureSet", hstructureSet);
        model.addAttribute("faceSet", faceSet);
        model.addAttribute("hrepairSet", hrepairSet);

        //设置房源状态为1（待出租）
        Integer state = 1;
        model.addAttribute("uid", uid);
        model.addAttribute("state", state);
        return "/pages/createHouse";
    }


    /**
     * 保存用户发布的房源信息
     *
     * @param house 房屋对象
     * @return 发布结果页面
     */
    @RequestMapping("/pages/saveHouse")
    public String createHouse(House house, @RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, Model model) {
        //System.out.println(house+"ddddddddddddddddddddddddddddddddd");
        try {
            if (!file.isEmpty()) {
                //获取文件类型及各式  getContentType()返回值 为image/jpeg形式
                String fileType = file.getContentType();

                //获取文件类型
                String imageprefix = fileType.substring(0, fileType.indexOf("/"));

                if (imageprefix.equals("image")) {
                    //获得文件格式（后缀名称）
                    String imageName = fileType.substring(fileType.indexOf("/") + 1);
                    //为文件准备名字

                    String MgsName = System.currentTimeMillis() + "." + imageName;

                    //获取项目根路径,拼接图片保存文件夹路径，拼接文件名
                    String pathBoot = request.getServletContext().getRealPath("staticfile/images");

                    BufferedOutputStream bo = new BufferedOutputStream(new FileOutputStream(new File(pathBoot + "/" + MgsName)));
                    bo.write(file.getBytes());
                    bo.flush();
                    bo.close();
                    //将文件名存入房屋对象的imgurl属相中
                    house.setImgurl(MgsName);
                } else {
                    model.addAttribute("msg", "上传的不是图片文件");
                    return "redirect:/pages/houseList";
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return "上传失败" + e.getMessage();
        }
        houseService.userSaveHouse(house);
        model.addAttribute(house.getUid());
        return "forward:/pages/houseList";

    }

    /**
     * 用户修改房屋信息
     *
     * @param hid   房屋id
     * @param model
     * @return
     */
    @RequestMapping("/pages/toUpdateHouse")
    public String toUpdateHouse(String hid, Model model) {
        //自查id 测试用 整合时注解掉
        //hid="ff526147-a611-43a6-be4f-61bb30dc905b";
        House house = houseService.findOneByHouseId(hid);
        //System.out.println(house);
        //为下来列表准备数据
        List<House> houseList = houseService.findAll();
        HashSet<String> countrySet = new HashSet<String>();
        HashSet<String> hstructureSet = new HashSet<String>();
        HashSet<String> faceSet = new HashSet<String>();
        HashSet<String> hrepairSet = new HashSet<String>();
        for (House h : houseList) {
            countrySet.add(h.getHcountry());
            hstructureSet.add(h.getHstructure());
            faceSet.add(h.getFace());
            hrepairSet.add(h.getHrepair());
        }
        model.addAttribute("countrySet", countrySet);
        model.addAttribute("hstructureSet", hstructureSet);
        model.addAttribute("faceSet", faceSet);
        model.addAttribute("hrepairSet", hrepairSet);
        model.addAttribute("house", house);
        return "pages/updateHouse";
    }

    @RequestMapping("/pages/userSaveHouse")
    public String userSaveHouse(House house,Model model) {
        //System.out.println(house.getHid());
        houseService.updateHouse(house);
        model.addAttribute(house.getUid());
        return "forward:/pages/houseList";
    }


    //前台房屋列表
    @RequestMapping("/pages/houseList")
    public String tohouseList(String uid, Model model) {
        //uid = "91440114";
        List<House> houseList = houseService.findHouseAll(uid);
        //System.out.print(uid);
        model.addAttribute("houseList", houseList);
        return "/pages/HouseList";
    }

    //前台房屋删除
    @RequestMapping("/pages/houseqianDelete")
    public String deleteHouseqian(@RequestParam(value = "hid", required = true) String[] hids,Model model, HttpSession session) {
        houseService.deleteHouseqian(hids);
        String uid = ((User)session.getAttribute("session_user")).getUid();

        model.addAttribute("uid",uid);
        return "forward:/pages/houseList";
    }

    //前台房屋查看
    @RequestMapping("/pages/toView")
    public String toview(@RequestParam(required = true) String hid, Model model) {

        House house = houseService.findOne(hid);
        model.addAttribute("house", house);
        //转向房屋的查看页面
        return "/pages/viewHouse";

    }


}