//
//  ContentView.swift
//  ADA_1-2.2.3
//
//  Created by 정무구 on 3/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("이름: \(name)")
            ChildView(name: $name)
            
            Text("이메일: \(email)")
            MailView(email: $email)
            
        }
    }
}

struct ChildView: View {
    @Binding var name: String
    
    var body: some View {
        TextField("이름 입력", text: $name)
            .textFieldStyle(.roundedBorder)
    }
}

struct MailView: View {
    @Binding var email: String
    
    var body: some View {
        TextField("이메일 입력", text: $email)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview {
    ContentView()
}
