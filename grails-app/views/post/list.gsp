<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>My Blog</title>
  </head>
  <body>
  <h1>My Posts</h1>

  <g:each in="${posts}" var="post">
      <div id="${post.id}">
          <g:link controller="post" action="view" id="${post.id}"><h2>${post.title}</h2></g:link>
          <p>${post.teaser}</p>
          <p>Last Updated: ${post.lastUpdated}</p>
          <g:link controller="post" action="edit" id="${post.id}">
          Edit this post 
          </g:link>
          <g:link controller="comment" action="edit" id="${post.id}">Add Comment </g:link>
          
      </div>
  </g:each>
<p>  
<g:link controller="post" action="edit">Create a new post </g:link>
</p>
  </body>
</html>