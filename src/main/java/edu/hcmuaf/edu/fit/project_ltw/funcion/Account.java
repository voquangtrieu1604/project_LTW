package edu.hcmuaf.edu.fit.project_ltw.funcion;

public class Account {
    private String id_user;
    private String username;
    private String email;
    private int role;

    public Account(String id_user, String username, String email) {
        this.id_user = id_user;
        this.username = username;
        this.email = email;
    }

    public Account() {

    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id_user='" + id_user + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", role=" + role +
                '}';
    }
}
