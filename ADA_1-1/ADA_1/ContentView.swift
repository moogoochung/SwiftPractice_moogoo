//
//  ContentView.swift
//  ADA_1
//
//  Created by 정무구 on 3/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("왼쪽")
            Spacer()
            Text("오른쪽")
        }
        .padding()
        .background(.gray.opacity(0.1))
        .cornerRadius(8)
        .frame(width: 300, height: 60)
        .padding(20)
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(.blue.opacity(0.15))
                .frame(width: 300, height: 60)
            Text("ZStack 겹침")
        }
        
        VStack(spacing: 20){
            Text("Hello, world!")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.orange)
                .padding()
            
            Image(systemName: "star.fill")
                .font(.system(size: 40))
                .foregroundStyle(.yellow)
                .padding(20)
            
            Button("시작하기"){
            }
                .buttonStyle(.borderedProminent)
            
            GeometryReader { geo in
                HStack(spacing: 0) {
                    Color.orange
                        .frame(width: geo.size.width * 0.5)
                    Color.blue
                }
            }
            .frame(height: 60)
            .cornerRadius(12)
            
        }
    }
}

#Preview {
    ContentView()
}
