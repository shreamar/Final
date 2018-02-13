<!doctype html>
<html>
<head>
    <!--triggering 'main' layout-->
    <meta name="layout" content="_page">
    <title>Blog : NSA</title>
</head>

<body>

<!--list-->
<g:if test="${blogList}">
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
                    <td><g:link controller="author" action="detail" id="${blog.blogAuthor.id}">${blog.blogAuthor.firstName} ${blog.blogAuthor.lastName}</g:link> </td>
                    <td>${blog.dateCreated}</td>
                    <td><g:link controller="blog" action="edit" id="${blog.id}"
                                class="btn btn-default">Edit</g:link></td>
                </tr>

            </g:each>
        </table>
    </div>
</g:if>
<g:elseif test="${specificBlog}">
    <div class="container">
        <div class="jumbotron">
            <h1>${specificBlog.title}</h1>
            <h5>${specificBlog.blogAuthor.firstName} ${specificBlog.blogAuthor.lastName}</h5>
            <h5>${specificBlog.dateCreated}</h5>

            <p>${specificBlog.content}</p>
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