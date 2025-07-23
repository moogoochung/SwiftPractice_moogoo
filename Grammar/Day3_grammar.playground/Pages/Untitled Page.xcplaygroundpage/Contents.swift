import Foundation

let names = ["가", "나", "다"]

for name in names {
    print(name)
}

var counter = 3

while counter > 0 {
    print(counter)
    counter -= 1
}

var numbers = 3

repeat {
    print("무조건 한번은 실행됨.")
    numbers -= 1
} while numbers > 5
