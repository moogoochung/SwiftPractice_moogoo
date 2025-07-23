import Foundation

let numbers = [2, 7, 4, 9, 1, 8, 3]
var sum = 0

for i in 0..<numbers.count {
    let num = numbers[i]
    if num%2==1{
        sum+=num
    }
}

print(sum)
