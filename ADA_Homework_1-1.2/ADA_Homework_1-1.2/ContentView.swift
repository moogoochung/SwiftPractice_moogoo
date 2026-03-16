//
//  ContentView.swift
//  ADA_Homework_1-1.2
//
//  Created by 정무구 on 3/16/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                LinearGradient(
                colors: [.blue, .cyan],
                startPoint: .top,
                endPoint:.bottom
            )
                .cornerRadius(20)
                
                VStack(spacing: 8){
                    Text("서울")
                        .font(.title2).bold()
                        .foregroundStyle(.white)
                    Image(systemName: "sun.max.fill")
                        .font(.system(size: 48))
                        .foregroundStyle(.yellow)
                    Text("24°C")
                        .font(.system(size: 56,
                                      weight: .thin))
                        .foregroundStyle(.white)
                }
            }
            .frame(width: geo.size.width * 0.9,
                   height: 200)
            .frame(maxWidth:.infinity)
        }
        .frame(height:200)
        .padding()
    }
}

#Preview {
    ContentView()
}
