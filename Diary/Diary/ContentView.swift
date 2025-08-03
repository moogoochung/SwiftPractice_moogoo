
import SwiftUI

struct DiaryEntry: Identifiable {
    let id = UUID()
    let date: String
    let content: String
}

struct ContentView: View {
    @State private var diaryText: String = ""
    @State private var diaryList: [DiaryEntry] = []
    
    private var today: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: Date())
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("📅\(today)")
                .font(.headline)
                .padding(.bottom, 5)
            
            TextEditor(text: $diaryText)
                .frame(height: 150)
                .border(Color.gray.opacity(0.5), width: 1)
                .padding(.bottom, 10)
            
            Button("📁저장하기") {
                let entry = DiaryEntry (date: today, content: diaryText)
                diaryList.insert(entry, at: 0)
                diaryText = ""
            }
            .buttonStyle(.borderedProminent)
            
            Divider().padding(.vertical)
            
            Text("📚저장된 일기")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            List(diaryList) { entry in
                VStack(alignment: .leading) {
                    Text(entry.date).font(.caption).foregroundColor(.gray)
                    Text(entry.content)
                        .lineLimit(2)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
