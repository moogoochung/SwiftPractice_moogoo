
import SwiftUI

struct DiaryEntry: Identifiable {
    let id = UUID()
    let date: String
    let content: String
}

struct ContentView: View {
    @State private var diaryText: String = ""
    @State private var diaryList: [DiaryEntry] = []
    @State private var expandedEntryIDs: Set<UUID> = []
    
    private var today: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: Date())
    }

    private var canSave: Bool {
        !diaryText.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
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
                guard canSave else { return }
                let entry = DiaryEntry(date: today, content: diaryText)
                diaryList.insert(entry, at: 0)
                diaryText = ""
            }
            .buttonStyle(.borderedProminent)
            .disabled(!canSave)
            
            Divider().padding(.vertical)
            
            Text("📚저장된 일기")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            List {
                ForEach(diaryList) { entry in
                    VStack(alignment: .leading, spacing: 6) {
                        Text(entry.date)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text(entry.content)
                            .lineLimit(expandedEntryIDs.contains(entry.id) ? nil : 2)
                            .animation(.default, value: expandedEntryIDs)
                        
                        Button(expandedEntryIDs.contains(entry.id) ? "접기" : "더보기") {
                            if expandedEntryIDs.contains(entry.id) {
                                expandedEntryIDs.remove(entry.id)
                            } else {
                                expandedEntryIDs.insert(entry.id)
                            }
                        }
                        .font(.caption)
                        .buttonStyle(.borderless)
                        .foregroundColor(.blue)
                    }
                    .padding(.vertical, 4)
                }
                .onDelete(perform: deleteEntries)
            }
            Spacer()
        }
        .padding()
    }
    private func deleteEntries(at offsets: IndexSet) {
        diaryList.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
