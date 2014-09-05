<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
	${post.title}
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/BlogSite/css/styles.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">
img {
	max-width: 100%;
}
</style>
</head>
<body>
	<header role="banner">
		<nav role="navigation" class="navbar navbar-static-top navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle Navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/BlogSite/">Aaron and John's
						Blog.</a>

				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="/BlogSite/">Home</a></li>
						<li><g:if test="${session.user}">
								<g:link controller="user" action="logout">Logout</g:link>
							</g:if> <g:else>
								<g:link controller="user" action="login">Login</g:link>
							</g:else></li>
						<%--<li><a href="adultlink.html">Adult Link</a></li>--%>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main role="main">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-6" id="content">
				<g:secureLink controller="post" action="edit"><button type="button">Create a new post</button>  </g:secureLink>
		
				<h1>
					${post.title}
				</h1>
				<p>
					${post.teaser}
				</p>
				<div>
					${post.content}
				</div>
				<g:secureLink controller="post" action="edit" id="${post.id}">
          <button type="button">Edit this post</button> 
          </g:secureLink>
				<div>
					<g:link controller="comment" action="edit" id="${post.id}"><button type="button">Add Comment</button> </g:link>
					<g:if test="${post.comments.isEmpty()}">
					</g:if>
					<g:else>
						<h5>Comments:</h5>
						<g:each in="${post.comments}" var="comment">
							<div class="comment">
								<p>
									${comment.comment }
								</p>
								<p>
									Made by:
									${comment.who.name}
									on
									${comment.dateCreated}
								</p>
							</div>
						</g:each>
					</g:else>
				</div>
			</div>
			<div class="col-sm-4">
				<br /> About me! <br /> More stuff to come!
			</div>
		</div>
	</div>
	</main>
	<footer role="contentInfo">
		<div class="footer">
			<p>
				<small>Copyright &copy; Manifest Solutions 2014, Written by
					Aaron Chancey and John Leonardo</small>
			</p>
		</div>
	</footer>


</body>
</html>