import Foundation

let numbers = [3, 6, 1, 8, 5, 10, 13]
var sum = 0

for i in 0..<numbers.count {
    let num = numbers[i]
    if num%2==1 {
        sum += num
    }
}
print(sum)
