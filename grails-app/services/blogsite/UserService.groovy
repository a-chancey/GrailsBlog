package blogsite

import grails.transaction.Transactional

@Transactional

class UserService {

    def authenticate(username, password) {
        return User.findByUsernameAndPassword(username, password)
    }
}