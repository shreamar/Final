<!doctype html>
<html>
<head>
    <!--link to 'main' layout-->
    <meta name="layout" content="_page"/>
    <title>Contact : NSA</title>
</head>

<body>

<!--contact page content-->
<div class="container">
    <div class="row" style="margin-bottom: 80px">
        <div class="col-md-12">
            <h1>Connect With Us</h1>

            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <g:form controller="contact" action="save" name="Contact">
                <div class="form-group">
                    <label for="">Name</label>
                    <input type="text" class="form-control" placeholder="Full Name" name="name">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="email" class="form-control" placeholder="someone@example.com" name="email">
                </div>
                <div class="form-group">
                    <label>Message</label>
                    <textarea class="form-control" rows="5" placeholder="Your Message here" name="message"></textarea>
                </div>
                <button href="" type="submit" class="btn btn-primary">Submit</button>
            </g:form>

        </div>
    </div>

</div>
<!--/contact page content-->
</body>
</html>