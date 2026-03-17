//
//  ContentView.swift
//  ADA_1-2.4
//
//  Created by 정무구 on 3/17/26.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
}

struct ContentView: View {
    @State private var isDark = false
    @State private var fontSize: Double = 16
    @State private var fruits = [
        Fruit(name: "사과", emoji: "🍎"),
        Fruit(name: "바나나", emoji: "🍌"),
        Fruit(name: "포도", emoji: "🍇")
    ]
    
    var body: some View {
        Form {
            Toggle("다크 모드", isOn: $isDark)
            
            VStack(alignment: .leading) {
                Text("폰트 크기: \(Int(fontSize))")
                Slider(value : $fontSize,
                       in: 12...24, step: 1)
            }
        }
        
        List {
            ForEach(fruits) { fruit in
                HStack {
                    Text(fruit.emoji)
                    Text(fruit.name)
                }
            }
            .onDelete { fruits.remove(atOffsets: $0)}
        }
    }
}

#Preview {
    ContentView()
}
