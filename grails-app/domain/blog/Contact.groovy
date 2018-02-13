package blog

class Contact {

    String name
    String email
    String message
    Date dateSubmitted = new Date()

    static constraints = {
        dateSubmitted nullable: true
        name nullable: false
        email nullable: false
        message nullable: false
    }
}
