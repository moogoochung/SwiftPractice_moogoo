//
//  ContentView.swift
//  WhyNotTry_2
//
//  Created by 정무구 on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    var activities = ["Archery", "Baseball", "Basketball", "Cycling", "Diving", "Football", "Golf", "Hiking", "Ice skating", "Jogging", "Kayaking", "Martial arts", "Mountain biking", "Swimming", "Tennis", "Volleyball"]
    var colors: [Color] = [.blue, .cyan, .green, .orange, .pink, .purple, .red, .yellow]
    @State private var selected = "Archery"
    var body: some View {
        VStack{
            Text("Why not try..")
                .font(.largeTitle.bold())
            Spacer()
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                Text("\(selected)!")
                    .font(.title)
            }
            
            Spacer()
            
            Button("try again") {
                withAnimation {
                    selected = activities.randomElement() ?? "Baseball"
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
