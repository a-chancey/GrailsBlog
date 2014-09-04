package blogsite

class User {

    String username
    String password
    String firstName
    String lastName

    static constraints = {
        username(nullable:false, length:1..10, unique:true)
        password(nullable:false, length:6..20)
        firstName(nullable:false, length:1..50)
        lastName(nullable:false, length:1..50)
    }
}