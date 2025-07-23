//: [Previous](@previous)

import Foundation

let isEmployee = false
let isMember = true
let monthsUsed = 2

if isEmployee || (isMember && monthsUsed >= 3) {
    print("모든 자료를 대출할 수 있습니다.")
    } else if isMember && monthsUsed < 3 {
        print("일반 자료만 대출할 수 있습니다.")
    } else {
        print("대출이 불가능합니다.")
}
