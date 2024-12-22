import UIKit

//Single Responsibility Principle

// A class should have only responsibility or reason to change. Each class should have a single responsibility or functionality and should not be affected by changes in other parts of the framework of the project.

// --> Every class should have only One responsibility
// --> Only Focused classes
//-->  Easy to implemnt and maintenance
//-->  Clear purpose
//-->  Better testability

class User {
    let name: String
    let age: Int
    let address: String
    init(name: String, age: Int, address: String) {
        self.name = name
        self.age = age
        self.address = address
    }
}

class UserInfomation {
    func saveUserInfo(user: User) {
        // Save user info
    }
}

class UserProfileManager {
    func updateProdile(user: User) {
        // update user profile
    }
}

class UserProfileValidator {
    func validateFiled(input: String) -> Bool {
        return input.count > 3 // Validation of string count
    }
}

class UserEmailService {
    func sendEmail(user: User) {
        // send email to user
    }
}

// UserInfomation is responsible to saving UserInfo
// UserProfileManager is responsible to update profile
// UserProfileValidator is s responsible to validation
// UserEmailService is responsible to send email
