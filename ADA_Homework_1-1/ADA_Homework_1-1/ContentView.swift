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
                .padding()
            
        }
        HStack{
            Text("안녕하세요, 무구입니다.")
            Image(systemName: "star.fill")
                .foregroundColor(.green)
        }
        .font(.largeTitle)
        .bold()
        
        ZStack{
            Button("인사해주세요~"){
            }
            .buttonStyle(.borderedProminent)
            .cornerRadius(8)
            .padding(.bottom, 100)
            
            Text("Apple Developer Academy")
                .background(.blue)
                .padding()
                .cornerRadius(12)
            //주변에 여백을 먼저 주고 배경색을 입히느냐, 배경색을 입히고 주변에 여백을 주느냐의 순서 차이로 인해서 차이가 발생합니다. .background(.blue)가 먼저 오면 텍스트 크기만큼만 배경이 칠해집니다. 반대의 경우에는 여백이 생긴 뒤에 배경이 칠해지기에 배경색이 더 크게 칠해집니다.
        }
    }
}
#Preview {
    ContentView()
}
