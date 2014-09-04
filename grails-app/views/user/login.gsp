<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
Login
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
						<%--
					<li><a href="link.html">Link</a></li>
					<li><a href="adultlink.html">Adult Link</a></li>--%>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main role="main">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-10">
				<g:form action="authenticate" method="post">
					<dl>
						<dt>Username:</dt>
						<dd>
							<g:textField name="username" />
						</dd>
						<dt>Password:</dt>
						<dd>
							<input type="password" name="password" id="password" />
						</dd>
					</dl>
					<g:submitButton name="login" value="Login" />
				</g:form>
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