package test;

import java.util.Date;

public class MemberBean {
    private String id;
    private String pwd;
    private String name;
    private String email;
    private Date joinDate;


public MemberBean() {

}
//생성자 오버라이딩
public MemberBean(String id, String pwd, String name, String email) {
    this.id =id;
    this.pwd =pwd;
    this.name =name;
    this.email =email;

}

public String getId() {
    return id;
}


public void setId(String id) {
    this.id = id;
}


public String getPwd() {
    return pwd;
}


public void setPwd(String pwd) {
    this.pwd = pwd;
}


public String getName() {
    return name;
}


public void setName(String name) {
    this.name = name;
}


public String getEmail() {
    return email;
}


public void setEmail(String email) {
    this.email = email;
}


public Date getJoinDate() {
    return joinDate;
}


public void setJoinDate(Date joinDate) {
    this.joinDate = joinDate;
}


}