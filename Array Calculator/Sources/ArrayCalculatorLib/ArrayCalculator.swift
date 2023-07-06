import Foundation

public class ArrayCalculator {
    public var firstArray: [Int]
    public var secondArray: [Int]
    
    /*
    Task 1.1:
    Implement initializer.
    */
    init(_ firstArray: [Int], _ secondArray: [Int]) {
        self.firstArray = firstArray
        self.secondArray = secondArray
    }
    /*
    Task 1.2:
    Implement the first instance method.
    */
    func maxArray() -> (array: [Int], sum: Int) {
        let firstArraySum = firstArray.reduce(0, +)
        let secondArraySum = secondArray.reduce(0, +)
        if firstArraySum > secondArraySum {
            return (firstArray, firstArraySum)
        } else if firstArraySum < secondArraySum {
            return (secondArray, secondArraySum)
        }
        return ([], 0)
    }
    /*
    Task 1.3:
    Implement the second instance method .
    */
    func elementWiseArrayProduct() -> [Int] {
        let minLen = min(firstArray.count, secondArray.count)
        var resArray = [Int]()
        for i in 0..<minLen {
            resArray.append(firstArray[i] * secondArray[i])
        }
        // append zeros to resArray
        if firstArray.count > minLen{
            for _ in minLen..<firstArray.count {
                resArray.append(0)
            }
        }else if secondArray.count > minLen{
            for _ in minLen..<secondArray.count {
                resArray.append(0)
            }
        }
        return resArray
    }
}
