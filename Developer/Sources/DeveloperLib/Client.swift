import Foundation

public class Client {
    public static func main() {
        /*
         Task 3.1:
         Test your implementation
         */
        let swiftCourse = Course(name: "Swift Intro Course", instructor: "Matthias, Maximilian, Philipp, and Christoph", ratings: [4, 5])
        let myself = Developer(name: "Rui", monthsOfSwiftExperience: nil)
        let profKrusche = Developer(name: "Prof. Krusche", monthsOfSwiftExperience: 36)
        myself.attend(course: swiftCourse)
        let myExp = myself.swiftExperienceDescription()
        print(myExp)
        let profExp = profKrusche.swiftExperienceDescription()
        print(profExp)
        
        /*
         Task 3.2:
         Output
         */
        print("Average rating for \(swiftCourse.name): \(swiftCourse.getAverageRating())")
    }
}
