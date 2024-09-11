let firstName: String = "Nursultan"
let lastName: String = "Turugeldiev"
let birthYear: Int = 2003
let currentYear: Int = 2024 
let age: Int = currentYear - birthYear
let isStudent: Bool = true
let height: Double = 1.75 

let favoriteColor: String = "blue"
let country: String = "KZT"

let hobby: String = "painting"
let numberOfHobbies: Int = 5
let favoriteNumber: Int = 7
let isHobbyCreative: Bool = true

let secondHobby: String = "playing guitar"

let lifeStory: String = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear). 
I am currently a student. I enjoy \(hobby), which is a \(isHobbyCreative ? "creative" : "not creative") hobby. 
I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
"""

let futureGoals: String = "In the future, I want to become a professional iOS developer. 🎉"
let finalLifeStory: String = lifeStory + "\n" + futureGoals
print(finalLifeStory)
