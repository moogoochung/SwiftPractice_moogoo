import SwiftUI

struct listEntry: Identifiable {
    var id: UUID = UUID()
    var title: String
}

struct ContentView: View {
    
    @State private var todoList: [listEntry] = []
    @State private var toDo : String = ""
    @State private var expandedEntryIDs: Set<UUID> = []
    
    private var canSave : Bool {
        !toDo.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("할 일 입력하기")
                    .font(.title)
                    .foregroundColor(.blue)
                
                TextField("할 일을 입력하세요.", text: $toDo)
                    .textFieldStyle(.roundedBorder)
                
                HStack {
                    Button("입력") {
                        guard canSave else {return}
                        let entry = listEntry(title: toDo)
                        todoList.insert(entry, at: 0)
                        toDo = ""
                    }
                    .buttonStyle(.borderedProminent)
                    .disabled(!canSave)
                    
                    Divider().padding(.vertical)
                    
                    List {
                        ForEach(todoList) { entry in
                            VStack (alignment: .leading, spacing: 6) {
                                Text(entry.title)
                                    .lineLimit(expandedEntryIDs.contains(entry.id) ? nil : 2)
                            }
                            .padding(.vertical, 4)
                        }
                        .onDelete {indexSet in
                            todoList.remove(atOffsets: indexSet)
                        }
                    }
                }
                .padding()
                .navigationTitle("할 일 목록")
                .toolbar {
                    EditButton()
                }
            }
        }
    }
}
