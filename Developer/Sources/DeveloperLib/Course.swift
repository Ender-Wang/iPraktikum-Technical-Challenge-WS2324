import Foundation

/*
 Task 1.1:
 Implement the Course class
 */
class Course {
    let name: String
    let instructor: String
    var ratings: [Int]
    
    init(name: String, instructor: String, ratings: [Int]) {
        self.name = name
        self.instructor = instructor
        self.ratings = ratings
    }
}

/*
 Task 1.2:
 Add method to rate the course
 */
extension Course {
    func addRating(stars: Int) {
        if stars >= 1 && stars <= 5 {
            ratings.append(stars)
        } else {
            print("Invalid rating")
        }
    }
}

/*
 Task 1.3:
 Get the average rating of the course
 */
extension Course {
    func getAverageRating() -> Double {
        let sum = ratings.reduce(0, +)
        if ratings.isEmpty {
            return 0
        } else {
            return Double(sum) / Double(ratings.count)
        }
    }
}
