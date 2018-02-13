package blog

class AuthorController {

    def index() {
        render view: "index"
    }

    def list(){
        List<Author> authorList = Author.list()
        render view: "index", model: [authorList:authorList]
    }

    def create(){
        render view: "form"
    }

    def save(Author author){
        author.dateCreated = new  Date()

        if(author.validate()){
            author.save(flush: true, failOrError: true)

            flash.message = "Author has been successfully added to our database"
            redirect action:"detail", model: [author:author]
        }
        else{
            flash.message = "Oops! Something went wrong. Couldn't add blogAuthor to our database"
            redirect action: "create"
        }
    }

    def edit(Author author){
        render view: "form", model: [specificAuthor:author]
    }

    def update(Author author){
        author.dateModified = new Date()

        if(author.validate()){
            author.save(flush: true, failOrError: true)

            flash.message = "Author information has been successfully been updated."
            redirect action:"detail"
        }
        else{
            flash.message = "Oops! Something went wrong. Couldn't update blogAuthor information"
            redirect action: "edit"
        }
    }

    def detail(Author author){
        List<Blog> blogList = Blog.list()
        render view: "index", model: [specificAuthor: author, blogList: blogList]
    }
}
