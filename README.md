# iPraktikum-Technical-Challenge-WS2324

My solution to Technical Challenge of iPraktikum Lab WS2324, TUM.

---

# Challenge Description

## Array Calculator

### **Part 1: Arrays**

First, we need to implement the class `ArrayCalculator`.

**You have the following tasks:**

1. **Implement the initializer** 1 of 1 tests passing
    
    Implement `init(_ firstArray: [Int], _ secondArray: [Int])` in the class `ArrayCalculator`. It should set the two stored properties correctly. Important, when initializing a new `ArrayCalculator` instance, we want to configure all initializer parameters without argument labels. Hint: Initializing the class should look like this:
    
    ```swift
    let arrayCalc = ArrayCalculator([1,2,3], [4,5,6])
    ```
    
2. **Implement the first instance method** 1 of 1 tests passing
    
    Implement the method `maxArray()` in the class `ArrayCalculator`. The method should not take any arguments. The return value of the method should be a tuple that contains the array with the larger sum of elements as well as the calculated sum.
    
3. **Implement the second instance method** 3 of 3 tests passing
    
    Implement the method `elementWiseArrayProduct()` with no arguments in the class `ArrayCalculator` for calculating element-wise a product of the stored arrays. If the arrays are not of the same length, store a 0 for those elements’ indices that are not present in both arrays. E.g a method call on theArrayCalculator([1, 3], [5, 6, 1]) would return [5, 18, 0].
    

### **Part 2: Client**

We want to test the implementation of the `ArrayCalculator` and its methods and therefore we need a `Client`.

**You have the following task:**

(It is not tested)

1. Implement the main method] Instantiate an `ArrayCalculator` with your favorite arrays and print out the results of the `maxArray` and `elementWiseArrayProduct` methods.

<img width="307" alt="image" src="https://github.com/Ender-Wang/iPraktikum-Technical-Challenge-WS2324/assets/33310255/99f1b652-3a94-4ec5-a46e-beb07c4930d1">

## Bookstore

### **Part 1: Implementing the Bookstore and the necessary structures.**

**You have the following tasks:**

In this part, all fields of classes and structs should be `let` constants.

1. **Implement Bookstore** 1 of 1 tests passing
    
    Create a `class Bookstore` that holds an array of `Book`s named `books`. Also create a `init` method with the following signature:
    
    ```swift
    init(books: [Book])
    ```
    

Create the necessary `struct`s, that will hold all the data to model your `Bookstore`.

1. **Implement the structure Book** 1 of 1 tests passing
    
    A `struct Book` consists of two Strings `title` and `author` as well as an **optional** array of `Genre`s named `genres`.
    
2. **Implement the structure Genre** 1 of 1 tests passing
    
    A `struct Genre` consists of a String `name` and an optional String `subgenre`.
    

**Note: Normally we discourage the use of optional collections (Arrays, Dictionaries, Sets). In this case we want to to use an optional collection to improve your Optionals knowledge.**

### **Part 2: Client**

We want to test the implemented `Bookstore` and therefore we need a `Client`.

**You have the following tasks:**

1. **Assemble your Bookstore** 2 of 2 tests passing
    
    Implement `assembleBookstore` which creates a Bookstore fulfilling the following requirements:
    
    - Your Bookstore must contain at least three books.
    - At least one book must have one Genre defined (Hint: Use inline initialization for the Genres in the corresponding book).
    - At least one book must have more than one Genre defined.
    - At least one book must have no Genre defined at all.
    - For books that are not yet categorized, the genres property should be `nil`.
    - For at least one of the Genre, a subgenre is defined as well.
2. Test your implementation by outputting the Bookstore’s inventory
    
    Print the Bookstore’s inventory (as created in the last task) in a human readable format to the console. Remember, there can be a variable number of Genres for a book, and Genres might not even be defined. If a Genre is defined, output its name. If a Genre has a subgenre defined, output it’s name as well in following form: `- Genre\n-- (Subgenre)`. For books that are not yet categorized print out a short message.
    
    Example:
    
    ```
     Rita Hayworth and Shawshank Redemption by Stephen King:
     - Crime Novel
     Thus Spoke Zarathustra by Stephen King:
     - Novel
     -- (Philosophical novel)
     Modern Operating Systems by Andrew Tannenbaum:
     - Computers & Internet
     -- (Operating Systems)
     - Textbook
     Object-oriented software engineering by Bernd Brügge:
     🕵: Not yet categorized
    ```
    

Note: Do not use any protocols like `CustomStringConvertible` during your output!

## Developer

In this challenge you will apply your newly learned Swift concepts 👩💻👨💻👩💻👨💻👩💻👨💻

### **Part 1: Course**

1. **Create the Course class** 1 of 1 tests passing
    
    Create a `public class Course` with two `let` properties: `name` of type `String` and `instructor` of type `String` and a `var` called `ratings` that is an array of type `Int`. When initializing a new `Course` instance, we want to configure all properties using initializer parameters. Hint: Initializing the class should look like this:
    
    ```swift
    let course = Course(name: "My Course", instructor: "My Instructor", ratings: [])
    ```
    
2. **Implement the course rating method** 1 of 1 tests passing
    
    Other students often have trouble finding the right course to attend. Therefore, we introduce a new rating system that allows students to rate a course ranging from 1 (worst) to 5 (best) stars ⭐️. Implement an instance method `addRating(stars:)` in the class `Course`, which takes one argument stars of type `Int`.
    
    - Make sure nobody manipulates the rating by entering an invalid amount of stars.
    - If a rating is valid, add it to the `ratings` array of the `Course` class.
    
    **Note**: We added an `extension` for the `Course` class here. Declare your instance method there.
    
3. **Calculate the average rating of a course** 2 of 2 tests passing
    
    Now that we can rate the course, we want to know the average rating a course has to determine the best course to choose. Implement an instance method `getAverageRating()` in the class `Course` that returns the average rating of type `Double`.
    
    **Hint:** To calculate the average rating, calculate `Double(sumOfStars) / Double(totalRatings)`. Also, avoid dividing by zero and return a reasonable average rating instead.
    

### **Part 2: Developer**

1. **Implement the Developer class** 1 of 1 tests passing
    
    Create a class `Developer`. The class should have two properties: `name` of type `String` and `monthsOfSwiftExperience` of type `Int?`. When initializing a new `Developer` instance, we want to configure all properties using initializer parameters.
    
2. **Create a Description** 3 of 3 tests passing
    
    Implement an instance method `swiftExperienceDescription()` with return type `String` to generate a printable description of the developer's experience:
    
    - Use optional binding to check if the property is set. If not, return a description saying `"\(name) has no experience in Swift yet."`.
    - If the property has a value, use a `switch` statement to see whether it's equal to 1. If it is, return a description saying `"\(name) has just finished the intro course."`.
    - The default case of the `switch` statement should return a description using the developer's name and their months of Swift experience (e.g. `Max Mustermann has 12 months of experience in Swift.`).
    - Call this method in the initializer you defined before and make sure its result is printed using a `print` statement**Note**: We added an `extension` for the `Developer` class here. Declare your instance method there.
3. **Add a method to attend a course** 3 of 3 tests passing
    
    Implement an instance method `attend(course:)` in the class `Developer` which takes one argument course of type `Course?`.
    
    - Use optional binding to check if the property is set.
    - If the property has a value, check if the lowercase name of the course contains `"swift"`. If so, increase the `monthsOfSwiftExperience` of the developer by 1 and print a successful participation message detailing the developer's name, the name of the course and the course's instructor.

### **Part 3: Client**

1. Test your implementation Create an instance of `Course`, called `swiftCourse`, with the name `"Swift Intro Course"`, the instructor `"Matthias, Maximilian, Philipp, and Christoph"` and no previous ratings. Give the `swiftCourse` a rating of 4⭐️ and a rating of 5⭐️. Now calculate the average rating and print it to the console using the `getAverageRating()` method. Instantiate an instance of `Developer`, called `myself`, with your name and no (`nil`) Swift experience. Instantiate another instance of `Developer`, called `profKrusche`, with the name `"Prof. Krusche"` and 36 months of Swift experience. Because the rating convinces you, make yourself (the previously created `Developer` instance) attend the `swiftCourse`. After that, print your and Prof. Krusche's Swift experience to the console using the `swiftExperienceDescription()` method.
2. Output Check the console for the output of your print statements and make sure you understand how the code works.

## Extending the Array Calculator

In this exercise, we want to extend the `ArrayCalculator` from Exercise `Swift 1 - Array Calculator`.

### **Part 1: Implementing the extension**

First, we need to implement the extension of the `ArrayCalculator`.

**You have the following task:**

1. **Implement Extension** 1 of 1 tests passing
    
    Write an extension of the `ArrayCalculator` class from Exercise `Swift 1 - Array Claculator`, to provide a nice human readable textual representation of the `ArrayCalculator` class’ method results. It should contain the result of the calculators methods. The textual representation should be returned in a `public` computed String field called `description`. The class `ArrayCalculator` already contains the solution of the Exercise `Swift 1 - Array Claculator`. Let the extension adhere to the CustomStringConvertible protocol. Types that conform to CustomStringConvertible can provide their own representation to be used when converting an instance to a string. This protocol is a standard protocol from Swift you don’t need to define it yourself.
    

### **Part 2: Client**

We want to test the implemented extension and therefore we need a Client.

**You have the following task:**

1. Test your implementation Create an instance of `ArrayCalculator` and use the print function to print out the `description` you have created above.

<img width="388" alt="image" src="https://github.com/Ender-Wang/iPraktikum-Technical-Challenge-WS2324/assets/33310255/0625fca4-6c0e-4d9e-b69b-f9516cbee0a2">
