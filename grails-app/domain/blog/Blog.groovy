package blog

class Blog {
    String title
    String content
    Author blogAuthor
    Date dateCreated
    Date dateModified

    static constraints = {
        dateCreated nullable: true
        dateModified nullable: true
    }
}
