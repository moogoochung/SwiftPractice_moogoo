//버튼 누르면 오늘의 기분과 명언 한 줄 랜덤으로 출력

import SwiftUI

struct ContentView: View {
    
    let quotes = [
        "오늘은 어제보다 더 나은 내가 되는 날이야.",
        "성공은 작은 노력이 반복될 때 찾아온다.",
        "당신은 생각보다 강하고, 가능성은 무한해.",
        "가장 어두운 밤도 결국 끝나고, 해는 떠오른다.",
        "지금 이 순간도 너의 일부야. 소중히 여겨줘.",
        "실패는 끝이 아니라, 다시 시작할 기회야.",
        "작은 발걸음도 결국 큰 변화를 만든다.",
        "비교하지 말고, 너만의 길을 걸어가.",
        "어제의 나를 이기는 게 진짜 성장.",
        "당신은 충분히 잘하고 있어."
    ]
    var colors: [Color] = [.blue, .cyan, .green, .orange, .pink, .purple, .red, .yellow]
    
    @State private var quotesIndex = "오늘은 어제보다 더 나은 내가 되는 날이야."
    
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .fill(colors.randomElement() ?? .blue)
                .padding()
                .onTapGesture {
                    withAnimation{ //버튼 없이 탭만 해도 상호작용 가능
                        quotesIndex = quotes.randomElement() ?? "오늘은 어제보다 더 나은 내가 되는 날이야."
                    }
                }
                .overlay(
                    Text(quotesIndex)
                        .font(.title2)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(minHeight: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .onTapGesture { //버튼 없이 탭만 해도 상호작용 가능
                            withAnimation{
                                quotesIndex = quotes.randomElement() ?? "오늘은 어제보다 더 나은 내가 되는 날이야."
                            }
                        }
                )
            Spacer()
            
            Button("다른 명언"){
                withAnimation{
                    quotesIndex = quotes.randomElement() ?? "오늘은 어제보다 더 나은 내가 되는 날이야."
                }
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
    }
}
    
#Preview {
    ContentView()
}
