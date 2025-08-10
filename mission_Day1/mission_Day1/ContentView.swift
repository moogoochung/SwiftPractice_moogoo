import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text("현재 값: \(count)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(count >= 10 ? .red: .primary)
            
            HStack(spacing: 12) {
                Button("+1") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
                
                Button("reset") {
                    count = 0
                }
                .buttonStyle(.borderedProminent)
                
                Button("-1") {
                    count -= 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
