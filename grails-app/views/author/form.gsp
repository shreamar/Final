<%@ page import="blog.Author" %>

<!doctype html>
<html>
<head>
    <!--link to 'main' layout-->
    <meta name="layout" content="_page"/>

    <title>
        <g:if test="${specificAuthor}">
            Update Author Info
        </g:if>
        <g:else>
            Create Author
        </g:else>
    </title>
</head>

<body>

<!--contact page content-->
<div class="container">
    <div class="row" style="margin-bottom: 80px">
        <div class="col-md-12">
            <h1>
                <g:if test="${specificAuthor}">
                    Update Author Information
                </g:if>
                <g:else>
                    Add New Author
                </g:else>
            </h1>

            <g:if test="${flash.message}">
                <div class="alert alert-info" role="alert">${flash.message}</div>
            </g:if>

            <%
                Author author = new Author()
                String action
            %>

            <g:if test="${specificAuthor}">
                <%
                    author = specificAuthor
                    action = "update"
                %>
            </g:if>
            <g:else>
                <%
                    author.lastName = ""
                    author.firstName = ""
                    author.email = ""
                    action = "save"
                %>
            </g:else>

            <g:form controller="author" action="${action}" id="${author.id}">
                <div class="form-group">
                    <label for="">Last Name</label>
                    <input type="text" class="form-control" placeholder="Last Name" name="lastName"
                           value="${author.lastName}">
                </div>

                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" class="form-control" placeholder="First Name" name="firstName"
                           value="${author.firstName}">
                </div>

                <div class="form-group">
                    <label>E-mail</label>
                    <input type="email" class="form-control" placeholder="someone@email.com" name="email"
                           value="${author.email}">
                </div>
                %{--<g:if test="${specificBlog}">--}%
                    %{--<g:hiddenField name="id" value="${specificBlog.id}"/>--}%
                %{--</g:if>--}%
                <button href="" type="submit" class="btn btn-primary">Submit</button>
            </g:form>

        </div>
    </div>

</div>
<!--/contact page content-->
</body>
</html>