package edu.hcmuaf.edu.fit.project_ltw.beans;

public class Address {

    private String user_id;
    private String surname;
    private String name;
    private String phone;
    private String Street;
    private String province;
    private String district;
    private String ward;
    private String postal_id;

    public Address(){

    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getStreet() {
        return Street;
    }

    public void setStreet(String street) {
        Street = street;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getPostal_id() {
        return postal_id;
    }

    public void setPostal_id(String postal_id) {
        this.postal_id = postal_id;
    }

    @Override
    public String toString() {
        return "Address{" +
                "user_id='" + user_id + '\'' +
                ", surname='" + surname + '\'' +
                ", name='" + name + '\'' +
                ", province='" + province + '\'' +
                ", district='" + district + '\'' +
                ", ward='" + ward + '\'' +
                ", postal_id='" + postal_id + '\'' +
                '}';
    }
}
