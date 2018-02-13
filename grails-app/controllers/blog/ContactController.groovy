package blog

class ContactController {

    def index() {
        render(view: "index")
    }

    def save(Contact contactUs) {
        if (contactUs.validate()) {
            contactUs.save(flush: true, failOrError: true)
            flash.message = "Your response has been successfully recorded. Thank you for your feedback."
        }
        else {
            flash.message = "Oops! Something went wrong. Cannot record your response."
        }
        redirect action: "index"
    }
}
