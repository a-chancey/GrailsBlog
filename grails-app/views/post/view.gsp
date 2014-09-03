<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<title>
	${post.title}
</title>
</head>
<body>
	<h1>
		${post.title}
	</h1>
	<p>
		${post.teaser}
	</p>
	<div>
		${post.content}
	</div>
	<div>
	<g:link controller="comment" action="edit" id="${post.id}">Add Comment </g:link>
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

</body>
</html>