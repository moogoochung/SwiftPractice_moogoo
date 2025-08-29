import SwiftUI

struct IconItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

struct ContentView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let icons: [IconItem] = [
        IconItem(imageName: "calender_icon", title: "활동 계획"),
        IconItem(imageName: "camera_icon", title: "카메라 대여"),
        IconItem(imageName: "lightening_icon", title: "번개출사"),
        IconItem(imageName: "memory_icon", title: "빛담 추억")
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Text("한양대학교 공과대학 사진동아리 빛담")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                Divider().padding(.vertical)
                
                Spacer()
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(icons) { item in
                        VStack {
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray)
                                .frame(width: 150, height: 150)
                                .overlay(
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .padding()
                                )
                            Text(item.title)
                                .font(.headline)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
            .frame(maxHeight: .infinity, alignment: .center)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
