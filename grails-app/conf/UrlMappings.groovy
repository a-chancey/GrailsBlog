class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
		
		"/post/view/$title?" (controller:"post", action:"view")

        "/"(controller:'post', action:'/list')
        "500"(view:'/error')
	}
}
