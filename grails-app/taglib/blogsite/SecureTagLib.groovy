package blogsite

public class SecureTagLib {

  static namespace = "g"

  def secureLink = { attrs, body ->
    if(session.user) {
      out << g.link(attrs, body)
    }
  }
}