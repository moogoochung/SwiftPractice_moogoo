//: [Previous](@previous)

import Foundation

let age = 14
let withGuardian = true

if age >= 15 || withGuardian {
    print("관람 가능합니다.")
} else if !withGuardian && age < 15 {
    print("관람 불가능합니다.")
}
