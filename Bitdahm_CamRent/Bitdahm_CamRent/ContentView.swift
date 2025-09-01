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
        IconItem(imageName: "camera_icon", title: "카메라"),
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
                        NavigationLink(destination: DetailView(icon: item)) {
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
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DetailView: View {
    let icon: IconItem
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            switch icon.title {
            case "활동 계획":
                Text("📅 활동 계획 페이지")
                    .font(.largeTitle)
                    .padding()
                Text("이곳에 동아리 활동 일정을 표시합니다.")
                Divider().padding(.vertical)
                Image("Plan_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .padding()
                Spacer()
                    .padding()
            case "카메라":
                Text("📷 카메라 대여 페이지")
                    .font(.largeTitle)
                    .padding()
                Text("사용 가능한 카메라 목록과 대여 규칙을 볼 수 있습니다.")
                Divider().padding(.vertical)
                DatePicker(
                    "날짜를 선택하세요",
                    selection: $selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(.graphical)   // 달력 모양
                .padding()
                Spacer()
                Link("대여하러 가기", destination: URL(string: "https://soft-clutch-d66.notion.site/1b017a0fb8b2803d9d90f24605581256")!)
                    .font(.headline)
                    .foregroundColor(.blue)
                    .padding(.bottom, 50)
            case "번개출사":
                Text("⚡️ 번개출사 페이지")
                    .font(.largeTitle)
                    .padding()
                Text("예정된 번개 출사 일정을 확인할 수 있습니다.")
                Divider().padding(.vertical)
                Spacer()
                    .padding()
            case "빛담 추억":
                Text("✨ 빛담 추억 페이지")
                    .font(.largeTitle)
                    .padding()
                Text("지난 활동 사진과 기록을 모아볼 수 있습니다.")
                Divider().padding(.vertical)
                Spacer()
                    .padding()
            default:
                Text("\(icon.title) 페이지")
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}
