package blog

class BlogController {

    def index(){
        render view: "index"
    }

    def list() {
        List<Blog> blogList = Blog.list()
        render view: "index", model: [blogList: blogList]
    }

    def create() {
        List<Author> authorList = Author.list()
        render view: "form", model: [authorList:authorList]
    }

    def save(Blog blog){
        blog.dateCreated = new Date()
        if (blog.validate()) {
            blog.save(flush: true, failOrError: true)
            flash.message = "Your blog post has been saved in my database server"
            redirect action: "index"
        }
        else {
            flash.message = "Oops! Something went wrong. Cannot save your blog post."
            redirect action: "create"
        }
    }

    def detail(){
        Blog blog = Blog.get(params.id)
        render view: "index", model: [specificBlog:blog]
    }

    def edit(){
        Blog blog = Blog.get(params.id)
        List<Author> listAuthor = Author.list()
        render view: "form", model: [specificBlog: blog, listAuthor: listAuthor]
    }

    def update(Blog blog){
        blog.dateModified = new Date()
        if (blog.validate()) {
            blog.save()
            flash.message = "Your blog post has successfully been updated."
            redirect action: "index"
        }
        else {
            flash.message = "Oops! Something went wrong. Cannot update your blog post."
            redirect action: "edit"
        }
    }
}
