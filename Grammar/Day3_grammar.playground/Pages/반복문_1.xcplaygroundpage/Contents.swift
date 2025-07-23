import Foundation

var input: String? = "swift123"

repeat {
    print("비밀번호를 입력하세요.")
    input = readLine()
    if input != "swift123" {
        print("비밀번호가 틀렸습니다.")
    }
} while input != "swift123"
            
print("접속 성공.")

