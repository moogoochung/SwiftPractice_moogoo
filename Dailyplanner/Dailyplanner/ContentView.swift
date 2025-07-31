import SwiftUI

struct Goal: Identifiable { //각 항목을 고유히 구분하기 위해 요구되는 프로토콜
    let id = UUID() //각 항목을 고유하게 식별하기 위해 사용됨. 일일히 번호를 매기지 않아도 스위프트가 추적해준다.
    var title: String
    var isCompleted: Bool
}

struct ContentView: View {
    @State private var goals: [Goal] = [
        Goal(title: "산책하기", isCompleted: false),
        Goal(title: "책 10쪽 읽기", isCompleted: false),
        Goal(title: "물 2리터 마시기", isCompleted: false)
    ]
    
    var progress: Double {
        let total = goals.count
        let completed = goals.filter { $0.isCompleted } //완료된 것들로만 리스트 구성
        return total == 0 ? 0 : Double(completed.count) / Double(total) //전체 개수가 0일 경우엔 0을 기본값으로 반환. 그렇지 않을 경우 total에 완료 비율 부여
    }
    
    var body: some View {
        VStack {
            Text("오늘의 목표")
                .font(.title)
                .bold()
            
            List { //스크롤 가능한 리스트 뷰
                ForEach($goals) { $goal in //배열의 각 항목에 대해 반복적으로 UI를 생성, $goal은 각 항목에 대한 바인딩 구조체. 값 변경이 실시간 반영됨
                    Toggle(isOn: $goal.isCompleted) {
                        Text(goal.title)
                    }
                }
            }
            .frame(height: 200)
            
            ProgressView(value: progress)
                .progressViewStyle(.linear)
                .padding()
            
            Text("\(Int(progress*100))% 완료됨")
                .foregroundColor(.gray)
            
            Spacer()
        }
        .padding()
    }

}

#Preview {
    ContentView()
}
