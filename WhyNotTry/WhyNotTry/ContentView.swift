//
//  ContentView.swift
//  WhyNotTry
//
//  Created by 정무구 on 7/22/25.
//

import SwiftUI
import PhotosUI

struct ContentView: View {
    @State private var photoSelect: PhotosPickerItem? = nil
    @State private var photoData: Data? = nil
    
    var body: some View {
        VStack {
            if let PD = photoData,
               let uiImage = UIImage(data: PD) {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            }
            
            PhotosPicker(
                selection: $photoSelect,
                matching: .images,
                photoLibrary: .shared()) {
                    Label("사진 선택하기", systemImage: "photo")
                }
                .onChange(of: photoSelect) {
                    newItem in
                    Task {
                        if let data = try? await newItem?.loadTransferable(type: Data.self)
                        {photoData = data}
                    }
                }
                .padding()
        }
    }
    
}

#Preview {
    ContentView()
}
