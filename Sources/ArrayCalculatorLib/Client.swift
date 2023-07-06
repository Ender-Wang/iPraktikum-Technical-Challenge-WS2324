import Foundation

public class Client {
    public static func main() {
        /*
        Task 1.4:
        Test the created ArrayCalculator class and the methods you have implemented.
        */
        let testArrays = ArrayCalculator([2, 4, 2, 5], [1, 2, 3])
        let maxArray = testArrays.maxArray()
        let elementWiseArrayProduct = testArrays.elementWiseArrayProduct()

        print("Max array: \(maxArray.array), sum: \(maxArray.sum)")
        print("Element-wise array product: \(elementWiseArrayProduct)")
    }
}
