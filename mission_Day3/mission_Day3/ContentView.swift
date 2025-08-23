import SwiftUI

struct listEntry: Identifiable {
    var id: UUID = UUID()
    var title: String
    var isDone: Bool = false
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
                    ForEach(todoList.indices.sorted { !todoList[$0].isDone && todoList[$1].isDone }, id: \.self) { index in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(todoList[index].title)
                                    .strikethrough(todoList[index].isDone)
                                    .foregroundColor(todoList[index].isDone ? .gray : .primary)
                            }
                            Spacer()
                            Toggle("", isOn: $todoList[index].isDone)
                                .labelsHidden()
                        }
                    }
                    .onDelete { indexSet in
                        todoList.remove(atOffsets: indexSet)
                    }
                }
                let total =  todoList.count
                let done = todoList.filter { $0.isDone }.count
                let progress = total == 0 ? 0 : Double(done) / Double(total) * 100
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("진행률: \(Int(progress))%")
                        .font(.caption)
                    ProgressView(value: progress, total: 100)
                        .tint(.green)
                }
                .padding(.top)
            }
            .padding()
            .navigationTitle("할 일 목록")
            .toolbar {
                EditButton()
            }
        }
    }
}
