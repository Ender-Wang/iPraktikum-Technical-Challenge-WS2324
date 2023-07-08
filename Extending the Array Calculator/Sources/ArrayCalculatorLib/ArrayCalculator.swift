import Foundation

/// The `ArrayCalculator` allows you to do cool animations with two arrays
class ArrayCalculator {
    /// The first array that is used in the calculations
    let firstArray: [Int]
    /// The second array that is used in the calculations
    let secondArray: [Int]
    
    
    /// Creates an `ArrayCalculator`
    /// - Parameters:https://realm.github.io/SwiftLint/
    ///   - first: The first array that is used in the calculations
    ///   - second: The second array that is used in the calculations
    init(_ first: [Int], _ second: [Int]) {
        self.firstArray = first
        self.secondArray = second
    }
    
    /// Returns the sum of the elements in the passed in `array`
    /// - Parameter array: The `Array` which's sum should be calculated
    /// - Returns: The sum of the elements in `array`
    private func sum(_ array: [Int]) -> Int {
        var accumulator = 0
        
        for element in array {
            accumulator += element
        }
        
        return accumulator
    }
    
    /// Returns the largest of the two arrays of the `ArrayCalculator`
    /// - Returns: Returns the `array` as well as the `sum` of the largest of the two arrays of the `ArrayCalculator` as a tuple
    func maxArray() -> (array: [Int], sum: Int) {
        let firstSum = sum(firstArray) // alternatively: `firstArray.reduce(0, +)`
        let secondSum = sum(secondArray) // alternatively: `secondSum.reduce(0, +)`
        
        if firstSum >= secondSum {
            return (firstArray, firstSum)
        } else {
            return (secondArray, secondSum)
        }
    }
    
    /// Calcualtes the element-wise array product of the arrays stored in the `ArrayCalculator`.
    /// If the arrays are not of the same length, store a 0 for those elements’ indices that are not present in both arrays.
    ///
    /// Example: `ArrayCalculator([1, 3], [5, 6, 1])` would return `[5, 18, 0]`
    /// - Returns: The element wise array product
    func elementWiseArrayProduct() -> [Int] {
        var arrayProduct: [Int] = []
        let maxIndex = max(firstArray.count, secondArray.count) - 1
        
        for index in (0...maxIndex) {
            if index < firstArray.count && index < secondArray.count {
                arrayProduct.append(firstArray[index] * secondArray[index])
            } else {
                arrayProduct.append(0)
            }
        }
        
        return arrayProduct
    }
}

// MARK: - Task 1.1:
/*
 Add your extension here.
 */
extension ArrayCalculator: CustomStringConvertible {
    var description: String {
        let maxArrayRes = maxArray()
        let elementWiseArrayProductRes = elementWiseArrayProduct()
        
        return """
        ArrayCalculator:
        First Array: \(firstArray)
        Second Array: \(secondArray)
        Max Array: \(maxArrayRes.array)
        Max Array Sum: \(maxArrayRes.sum)
        Element-wise Array Product: \(elementWiseArrayProductRes)
        """
    }
}
