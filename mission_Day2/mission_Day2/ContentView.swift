import SwiftUI

struct nameEntry: Identifiable {
    let id = UUID()
    let name: String
    
}

struct ContentView: View {
    @State private var nameList: [nameEntry] = []
    @State private var name: String = ""
    @State private var expandedEntryIDs: Set<UUID> = []
    
    private var canSave: Bool {
        !name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("이름 입력하기")
                .font(.title)
                .frame(height: 150)
                .padding()
            
            TextField("이름을 입력해주세요.", text: $name)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    print("사용자 입력 완료: \(name)")
                }
                .submitLabel(.done)
            
            Button("저장하기") {
                guard canSave else {return}
                let entry = nameEntry(name: name)
                nameList.insert(entry, at: 0)
                name = ""
            }
            .buttonStyle(.borderedProminent)
            .disabled(!canSave)
            
            Divider().padding(.vertical)
            
            Text(name.isEmpty ? "이름을 입력해주세요." : "안녕하세요, \(name)님!")
                .font(.title2)
                .foregroundColor(name.isEmpty ? .gray : .blue)
                .padding(.top, 10)
            
            List {
                ForEach(nameList) { entry in
                    VStack(alignment: .leading, spacing: 6){
                        Text(entry.name)
                            .lineLimit(expandedEntryIDs.contains(entry.id) ? nil : 2)
                            .animation(.default, value: expandedEntryIDs)
                    }
                    .padding(.vertical, 4)
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
