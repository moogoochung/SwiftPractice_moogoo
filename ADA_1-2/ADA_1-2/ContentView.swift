//
//  ContentView.swift
//  ADA_1-2
//
//  Created by 정무구 on 3/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            
            Text("\(count)")
                .font(.system(size:60, weight: .bold))
            
            HStack {
                Button ("-1") {
                    count -= 1
                }
                .buttonStyle(.borderedProminent)
                
                Button ("+1") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
