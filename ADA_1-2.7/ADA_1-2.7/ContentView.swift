//
//  ContentView.swift
//  ADA_1-2.7
//
//  Created by 정무구 on 3/18/26.
//

import SwiftUI

struct Todo: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
    }
}

struct ContentView: View {
    var body: some View {
        List {
            
        }
    }
}

#Preview {
    ContentView()
}
