import Foundation

/*
 Task 2.1:
 Implement the Developer class
 */

public class Developer {
    let name: String
    var monthsOfSwiftExperience: Int?
    
    init(name: String, monthsOfSwiftExperience: Int?) {
        self.name = name
        self.monthsOfSwiftExperience = monthsOfSwiftExperience
        let exp = swiftExperienceDescription()
        print(exp)
    }
}

/*
 Task 2.2:
 Create a Description
 */
extension Developer {
    func swiftExperienceDescription() -> String {
        switch monthsOfSwiftExperience {
        case nil:
            return "\(name) has no experience in Swift yet."
        case 1:
            return "\(name) has just finished the intro course."
        default:
            return "\(name) has \(monthsOfSwiftExperience ?? 0) months of experience in Swift."
        }
    }
}

/*
 Task 2.3:
 Add a method to attend a course
 */
extension Developer {
    func attend(course: Course?) {
        if let course = course {
            if course.name.lowercased().contains("swift") {
                monthsOfSwiftExperience = (monthsOfSwiftExperience ?? 0) + 1
                print("\(name) attended \(course.name) taught by \(course.instructor).")
            }
        }
    }
}
