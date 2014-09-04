
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>My Blog</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="/BlogSite/css/styles.css">
<link rel="stylesheet" href="/Blogsite/css/simplePagination.css"/>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<g:javascript library="jquery.simplePagination" />

<style type="text/css">
img {
	max-width: 100%;
}
</style>
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">

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
						<li class="active"><a href="/BlogSite/">Home</a></li>
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
			<div class="col-sm-6">
				<div id="spinner" class="spinner" style="display: none;">
					<g:message code="spinner.alt" default="Loading&hellip;" />
				</div>
				
				Search:
				<input type="text" id="search">

				<h1>My Posts</h1>
				
				<div id="pagination" >
				</div>
				<g:each in="${posts}" var="post">
				
					<div id="${post.id}" class="singlepost">
						<g:link controller="post" action="view" id="${post.id}">
							<h2>
								${post.title}
							</h2>
						</g:link>
						<p>
							${post.teaser}
						</p>
						<p>
							Last Updated:
							${post.lastUpdated}
						</p>
						<g:secureLink controller="post" action="edit" id="${post.id}">
          Edit this post 
          </g:secureLink>
						<g:link controller="post" action="view" id="${post.id}">View Comments</g:link>

					</div>
				</g:each>
				<p></p>
			</div>
			<div class="col-sm-4 sidebar-nav" id="sidebar">
				<g:secureLink controller="post" action="edit">Create a new post </g:secureLink>
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

<script>
	$(document).ready(function(){
		$("#search").keyup(function(){
			 var val = $(this).val().toLowerCase();
			 $(".singlepost").hide();
			 
			 $(".singlepost").each(function(){
				 
			 	var text = $(this).text().toLowerCase();
			 	
			 	if(text.indexOf(val) != -1)
			 	{
			 		$(this).show();
			 	}
			 	
			 });
		});

		$(function() {
			var items = $(".singlepost");

		    var numItems = items.length;
		    var perPage = 10;

		    // only show the first 2 (or "first per_page") items initially
		    items.slice(perPage).hide();

		    // now setup your pagination
		    // you need that .pagination-page div before/after your table
		    $("#pagination").pagination({
		        items: numItems,
		        itemsOnPage: perPage,
		        cssStyle: 'light-theme',
		        onPageClick: function(pageNumber) { // this is where the magic happens
		            // someone changed page, lets hide/show trs appropriately
		            var showFrom = perPage * (pageNumber - 1);
		            var showTo = showFrom + perPage;

		            items.hide() // first hide everything, then show for the new page
		                 .slice(showFrom, showTo).show();
		        }
		    });
		});
	});

	

</script>

</body>
</html>