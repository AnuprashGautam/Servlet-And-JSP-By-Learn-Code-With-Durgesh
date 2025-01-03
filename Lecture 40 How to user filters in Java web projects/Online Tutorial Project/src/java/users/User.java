package users;

public class User {
    private String email;
    private String type;
    
    // Constructor
    public User(String email, String type) {
        this.email = email;
        this.type = type;
    }

    // Getters
    public String getEmail() {
        return email;
    }

    public String getType() {
        return type;
    }

    // Setters
    public void setEmail(String email) {
        this.email = email;
    }

    public void setType(String type) {
        this.type = type;
    }
}
