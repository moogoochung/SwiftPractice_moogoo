//
//  ContentView.swift
//  ADA_Homework_1-1
//
//  Created by 정무구 on 3/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mugu(무구/정무구)")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.green)
                .background(.green.opacity(0.30))
                .cornerRadius(12)
                .padding(.bottom, 600)
            
        }
        HStack{
            Text("안녕하세요, 정무구입니다.")
            Image(systemName: "star.fill")
                .foregroundColor(.green)
        }
        .font(.largeTitle)
        .bold()
    }
}
#Preview {
    ContentView()
}
