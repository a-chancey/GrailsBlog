<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
      <title>Blagh Posts</title>
  </head>
  <body>
  <h1>My Posts</h1>

  <g:each in="${posts}" var="post">
      <div>
          <h2>${post.title}</h2>
          <p>${post.teaser}</p>
          <p>Last Updated: ${post.lastUpdated}</p>
      </div>
  </g:each>
  </body>
</html>