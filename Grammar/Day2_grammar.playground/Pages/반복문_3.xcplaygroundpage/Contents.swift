import Foundation

let numbers = [3, 6, 1, 8, 5, 10, 13]

for i in 0..<numbers.count {
    let num = numbers[i]
    if num%2==0 {
        print(num)
    }
}
