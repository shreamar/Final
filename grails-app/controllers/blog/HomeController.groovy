package blog

class HomeController {

    def index() {
        render (view: "/home/index")
    }


    def about(){
        render(view:"/about/index")
    }


    def contactus(){
        render (view: "/contact/index")
    }
}
