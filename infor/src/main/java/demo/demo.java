package demo;

import pojo.admin;
import service.adminiml;

public class demo {
    public static void main(String[] args) {
        adminiml a=new adminiml();
        admin xkc = a.select("xkc", "1234");
        System.out.println(xkc);
    }
}
