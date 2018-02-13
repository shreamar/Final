<!doctype html>
<html>
<head>
    <!--triggering 'main' layout-->
    <meta name="layout" content="_page">
    <title>Blog : NSA</title>
</head>

<body>

<g:if test="${authorList}">
    <div class="table-responsive">
        <table class="table-striped table">
            <th class="alert-success">Author ID</th>
            <th class="alert-success">Last Name</th>
            <th class="alert-success">First Name</th>
            <th class="alert-success">E-mail</th>
            <th class="alert-success"></th>
            <g:each in="${authorList}" var="author">

                <tr>
                    <td>${author.id}</td>
                    <td><g:link controller="author" action="detail" id="${author.id}">${author.lastName}</g:link></td>
                    <td><g:link controller="author" action="detail" id="${author.id}">${author.firstName}</g:link></td>
                    <td>${author.email}</td>
                    <td><g:link controller="author" action="edit" id="${author.id}"
                                class="btn btn-default">Edit</g:link></td>
                </tr>

            </g:each>
        </table>
    </div>
</g:if>
<g:elseif test="${specificAuthor}">
    <div class="container">
        <div class="jumbotron">
            <h1>${specificAuthor.firstName} ${specificAuthor.lastName}</h1>
            <h5>${specificAuthor.dateCreated}</h5>
            <h5>${specificAuthor.email}</h5>

            <div class="table-responsive">
                <table class="table-striped table">
                    <th class="alert-success">Id</th>
                    <th class="alert-success">Blog Title</th>
                    <th class="alert-success">Author</th>
                    <th class="alert-success">Date Created</th>
                    <th class="alert-success"></th>
                    <g:each in="${blogList}" var="blog">

                        <tr>
                            <td>${blog.id}</td>
                            <td><g:link controller="blog" action="detail" id="${blog.id}">${blog.title}</g:link></td>
                            <td>${blog.blogAuthor.firstName}</td>
                            <td>${blog.dateCreated}</td>
                            <td><g:link controller="blog" action="edit" id="${blog.id}" class="btn btn-default">Edit</g:link></td>
                        </tr>

                    </g:each>
                </table>
            </div>
        </div>
    </div>

</g:elseif>
<g:elseif test="${flash.message}">
    <div class="alert alert-info" role="alert">${flash.message}</div>
</g:elseif>
<g:else>
    <div class="container">
        <div class="jumbotron">
            <h1 class="text-center">No Page Content To Display</h1>
        </div>
    </div>
</g:else>

</body>
</html>