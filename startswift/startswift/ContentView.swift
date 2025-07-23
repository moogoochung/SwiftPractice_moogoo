//
//  ContentView.swift
//  startswift
//
//  Created by 정무구 on 7/5/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
                .foregroundStyle(.pink)
            Text("안녕하세요, 무구입니다.")
            Text("메롱메롱.")
                .font(.caption)
                .padding(.top, 3)
                .foregroundColor(.pink)
            Spacer().frame(height: 10)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
