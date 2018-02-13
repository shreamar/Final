package blog

class Author {
    String firstName
    String lastName
    String email
    Date dateCreated
    Date dateModified
    static hasMany = [blog:Blog]

    static constraints = {
        email nullable: true
        dateModified nullable: true
        dateCreated nullable: true
    }
}
