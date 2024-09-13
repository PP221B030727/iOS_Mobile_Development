// Array Creation and Access
let fruits = ["Apple", "Banana", "Cherry", "Mango", "Orange"]
print(fruits[2]) 

// Set Creation and Manipulation
var favoriteNumbers: Set = [3, 7, 12]
favoriteNumbers.insert(21)
print(favoriteNumbers)  

// Dictionary Creation and Access
let programmingLanguages = ["Swift": 2014, "Python": 1991, "Java": 1995]
print(programmingLanguages["Swift"]!) 

// Array Element Update
var colors = ["Red", "Green", "Blue", "Yellow"]
colors[1] = "Purple"
print(colors)

// Set Intersection
let setA: Set = [1, 2, 3, 4]
let setB: Set = [3, 4, 5, 6]
let intersection = setA.intersection(setB)
print(intersection)  

// Dictionary Update
var studentScores = ["Alice": 85, "Bob": 92, "Charlie": 78]
studentScores["Bob"] = 95
print(studentScores)

// Array Merge
let array1 = ["apple", "banana"]
let array2 = ["cherry", "date"]
let mergedArray = array1 + array2
print(mergedArray)

// Dictionary Key Addition
var countryPopulations = ["USA": 331_000_000, "Canada": 37_000_000, "UK": 67_000_000]
countryPopulations["Australia"] = 25_000_000
print(countryPopulations)


// Set Union and Subtract
let animalsA: Set = ["cat", "dog"]
let animalsB: Set = ["dog", "mouse"]
let unionSet = animalsA.union(animalsB)
let finalSet = unionSet.subtracting(animalsB)
print(finalSet)


// Nested Collection
let studentGrades = [
    "Alice": [85, 90, 92],
    "Bob": [78, 82, 88],
    "Charlie": [91, 87, 85]
]
print(studentGrades["Bob"]![1])

