import Foundation

struct User {
    let username: String
    let password: String
}

func clearConsole() {
    let process = Process()
    process.launchPath = "/usr/bin/env"
    process.arguments = ["clear"]
    process.launch()
    process.waitUntilExit()
}

func isValidCredentials(username: String, password: String, users: [User]) -> Bool {
    return users.contains { $0.username == username && $0.password == password }
}
clearConsole()
func login() {
   print("Enter your username:")
    guard let username = readLine(), !username.isEmpty else {
        print("Username cannot be empty.")
        return
    }

    print("Enter your password:")
    guard let password = readLine(), !password.isEmpty else {
        print("Password cannot be empty.")
        return
    }

    let users = [
        User(username: "DEVTECH102030", password: "5342"),
        User(username: "billionare", password: "securePass")
    ]

    if isValidCredentials(username: username, password: password, users: users) {
      clearConsole()
        print("Login successful!")
        print("welcome, \(username)")
      accountPage()
    } else {
      clearConsole()
        print("Invalid credentials. Please try again.")
      login()
    }
}
 func accountPage() {
   var accountBalanceUSA = 12.66
   var giftCardBalance = 0.00
   var savingGoals = 599.00
   var howMuchMoreYouNeed = savingGoals - accountBalanceUSA
   var totalBalance = accountBalanceUSA + giftCardBalance
   print("your Swift Wallet has $\(accountBalanceUSA)")
   print("you have a gift card balance of $\(giftCardBalance)")
   print("your total balance is $\(totalBalance)")
   print("your saving's goal is $\(savingGoals)")
   print("you need $\(howMuchMoreYouNeed) to reach your saving's goal")
   print("Have A Nice Day!")
 }

// Test login
login()
