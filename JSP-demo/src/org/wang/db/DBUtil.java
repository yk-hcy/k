package org.wang.db;

import org.wang.model.Emp;
import java.util.HashMap;
import java.util.Map;

//�ü���ģ��������ݿ�
public class DBUtil{
    public  static Map<String, Emp> map = new HashMap<String, Emp>();
    //�þ�̬�������ɶ�map�е�ֵ�ĳ�ʼ������
    static {
        map.put("001",new Emp("001","zhangsan","111111","111111@qq.com"));
        map.put("002",new Emp("002","lisi","121212","121212@qq.com"));
        map.put("003",new Emp("003","wangwu","131313","131313@qq.com"));
        map.put("004",new Emp("004","zhaoliu","141414","141414@qq.com"));
    }

    //�ж��û����������Ƿ���ȷ
    public static  boolean selectEmpByAccountAndPassword(Emp emp){
        //�û��������Ϣ���뵽emp�����У��ж�emp�����е�ֵ�Ƿ��map�е�ֵ��Ӧ
        boolean flag = false;
        //������ǰmap�����е�key
        for (String key : map.keySet()){
            Emp e = map.get(key);
            //�ж��û������ֵ�Ƿ���map�����е�ֵ���
            if(emp.getAccount().equals(e.getAccount()) && emp.getPassword().equals(e.getPassword())){
                flag = true;
                break;
            }
        }
        return flag;
    }
}