package edu.hcmuaf.edu.fit.project_ltw.function;

public class UserAccount {
    private String id_user;
    private String name;
    private String gmail;
    private String password;
    private String phone;


    public UserAccount(String id_user, String name, String gmail, String password, String phone) {
        this.id_user = id_user;
        this.name = name;
        this.gmail = gmail;
        this.password = password;
        this.phone = phone;
    }

    public UserAccount() {

    }

    public String getId_user() {
        return getId_user();
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String toString() {
        return "UserAccount{" +
                "id='" + id_user + '\'' +
                ", username='" + gmail + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
