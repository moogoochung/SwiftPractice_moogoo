//
//  ContentView.swift
//  ADA_1-2.6
//
//  Created by 정무구 on 3/18/26.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
}

struct ContentView: View {
    @State private var showSheet = false
    
@State private var fruits = [
        Fruit(name: "사과", emoji: "🍎"),
        Fruit(name: "바나나", emoji: "🍌"),
        Fruit(name: "포도", emoji: "🍇")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("상세 보기") {
                    List {
                        ForEach(fruits) { fruit in
                            HStack {
                                Text(fruit.emoji)
                                Text(fruit.name)
                            }
                        }
                    }
                }
            }
            .navigationTitle("홈")
            .toolbar {
                Button("추가") {
                    showSheet = true
                }
            }
            .sheet(isPresented: $showSheet) {
                Text("Sheet Content")
            }
        }
    }
}

#Preview {
    ContentView()
}
