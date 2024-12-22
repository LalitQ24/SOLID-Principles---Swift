import UIKit

//Single Responsibility Principle

//A class should have one and only one reason to change, And class responsible for a single part of the functionality of your application.

// --> Every class should have only One responsibility
// --> Only Focused classes
//-  Easy to implemnt and maintenance
//-  Clear purpose
// - Better testability

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
