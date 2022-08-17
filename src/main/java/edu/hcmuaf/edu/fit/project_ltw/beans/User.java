package edu.hcmuaf.edu.fit.project_ltw.beans;

public class User {
    private String id_user;
    private String user_name;
    private String email;

    private String phone;

    private String password;



//    public User(String id_user, String user_name, String email, String password) {
//        this.id_user = id_user;
//        this.user_name = user_name;
//        this.email = email;
//        this.password = password;
//    }
//    public User(String id_user, String user_name, String email, String phoneNumber, String password) {
//        this.id_user = id_user;
//        this.user_name = user_name;
//        this.email = email;
//        this.phone = phoneNumber;
//        this.password = password;
//    }
//    public User(String id_user, String user_name, String email) {
//        this.id_user = id_user;
//        this.user_name = user_name;
//        this.email = email;
//    }
//
//    public User(String email) {
//        this.email = email;
//    }

    public User() {

    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    @Override
    public String toString() {
        return "UserAccount{" +
                "id_user='" + id_user + '\'' +
                ", user_name='" + user_name + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                '}';
    }


}
