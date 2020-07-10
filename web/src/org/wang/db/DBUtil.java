package org.wang.db;

import org.wang.model.Emp;
import java.util.HashMap;
import java.util.Map;

//用集合模拟操纵数据库
public class DBUtil{
    public  static Map<String, Emp> map = new HashMap<String, Emp>();
    //用静态代码块完成对map中的值的初始化操作
    static {
        map.put("001",new Emp("001","zhangsan","111111","111111@qq.com"));
        map.put("002",new Emp("002","lisi","121212","121212@qq.com"));
        map.put("003",new Emp("003","wangwu","131313","131313@qq.com"));
        map.put("004",new Emp("004","zhaoliu","141414","141414@qq.com"));
    }

    //判断用户名和密码是否正确
    public static  boolean selectEmpByAccountAndPassword(Emp emp){
        //用户输入的信息存入到emp对象中，判断emp对象中的值是否和map中的值对应
        boolean flag = false;
        //遍历当前map集合中的key
        for (String key : map.keySet()){
            Emp e = map.get(key);
            //判断用户传入的值是否与map集合中的值相等
            if(emp.getAccount().equals(e.getAccount()) && emp.getPassword().equals(e.getPassword())){
                flag = true;
                break;
            }
        }
        return flag;
    }
}