/*:
 
 # Homework 2
 ## Joshua Tan
 ## 20250826
 
 */


let names = ["Anna": 4, "Alex": 20, "Brian": 5, "Jack": 87]
let greetings = ["Hello", "Good morning", "你好", "Hola", "Khotso"]

for (name, age) in names {
    print("\(greetings.randomElement()!), \(name)! Happy \(age)th birthday!")
    
    switch age {
    case 0..<18:
        print("You are a child.")
    case 18...25:
        print("You are a young adult.")
    case 25...65:
        print("You are an adult.")
    case 65...200:
        print("You are a senior.")
    default:
        print("You are not human.")
    }
}
