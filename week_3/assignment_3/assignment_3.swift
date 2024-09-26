// Problem 1

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

// Problem 2

func isPrime(_ number: Int) -> Bool {
    if number <= 1 { return false }
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

for i in 1...100 {
    if isPrime(i) {
        print(i)
    }
}

// Problem 3

func convertTemperature(value: Double, fromUnit: String) {
    if fromUnit == "C" {
        let fahrenheit = (value * 9/5) + 32
        let kelvin = value + 273.15
        print("\(value)°C = \(fahrenheit)°F = \(kelvin)K")
    } else if fromUnit == "F" {
        let celsius = (value - 32) * 5/9
        let kelvin = celsius + 273.15
        print("\(value)°F = \(celsius)°C = \(kelvin)K")
    } else if fromUnit == "K" {
        let celsius = value - 273.15
        let fahrenheit = (celsius * 9/5) + 32
        print("\(value)K = \(celsius)°C = \(fahrenheit)°F")
    }
}

print("Enter temperature:")
if let input = readLine(), let value = Double(input) {
    print("Enter unit (C, F, K):")
    if let unit = readLine() {
        convertTemperature(value: value, fromUnit: unit)
    }
}

// Problem 4

var shoppingList = [String]()

func showMenu() {
    print("""
    1. Add item
    2. Remove item
    3. Show list
    4. Exit
    """)
}

while true {
    showMenu()
    if let choice = readLine() {
        switch choice {
        case "1":
            print("Enter item to add:")
            if let item = readLine() {
                shoppingList.append(item)
            }
        case "2":
            print("Enter item to remove:")
            if let item = readLine(), let index = shoppingList.firstIndex(of: item) {
                shoppingList.remove(at: index)
            } else {
                print("Item not found")
            }
        case "3":
            print("Shopping List: \(shoppingList)")
        case "4":
            exit(0)
        default:
            print("Invalid choice")
        }
    }
}

// Problem 5

print("Enter a sentence:")
if let sentence = readLine() {
    let words = sentence.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted).filter { !$0.isEmpty }
    var wordCount = [String: Int]()

    for word in words {
        wordCount[word, default: 0] += 1
    }

    for (word, count) in wordCount {
        print("\(word): \(count)")
    }
}

// Problem 6

func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }
    var sequence = [0, 1]
    while sequence.count < n {
        sequence.append(sequence[sequence.count - 1] + sequence[sequence.count - 2])
    }
    return Array(sequence.prefix(n))
}

print(fibonacci(10))

// Problem 7

var students = ["Alice": 85, "Bob": 90, "Charlie": 78]
var total = 0

for score in students.values {
    total += score
}

let average = total / students.count
print("Average Score: \(average)")

var highest = students.values.max() ?? 0
var lowest = students.values.min() ?? 0
print("Highest Score: \(highest)")
print("Lowest Score: \(lowest)")

for (student, score) in students {
    let status = score >= average ? "above" : "below"
    print("\(student): \(score) (\(status) average)")
}

// Problem 8

func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text.lowercased().filter { $0.isLetter }
    return cleanedText == String(cleanedText.reversed())
}

print(isPalindrome("A man, a plan, a canal, Panama"))

// Problem 8

func add(_ a: Double, _ b: Double) -> Double { return a + b }
func subtract(_ a: Double, _ b: Double) -> Double { return a - b }
func multiply(_ a: Double, _ b: Double) -> Double { return a * b }
func divide(_ a: Double, _ b: Double) -> Double? {
    return b == 0 ? nil : a / b
}

while true {
    print("Enter first number:")
    if let firstInput = readLine(), let first = Double(firstInput) {
        print("Enter second number:")
        if let secondInput = readLine(), let second = Double(secondInput) {
            print("Choose operation (+, -, *, /):")
            if let operation = readLine() {
                switch operation {
                case "+":
                    print(add(first, second))
                case "-":
                    print(subtract(first, second))
                case "*":
                    print(multiply(first, second))
                case "/":
                    if let result = divide(first, second) {
                        print(result)
                    } else {
                        print("Error: Division by zero")
                    }
                default:
                    print("Invalid operation")
                }
            }
        }
    }
}

// Problem 9

func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet = Set<Character>()
    for char in text {
        if characterSet.contains(char) {
            return false
        }
        characterSet.insert(char)
    }
    return true
}

print(hasUniqueCharacters("Swift"))
print(hasUniqueCharacters("Hello"))
