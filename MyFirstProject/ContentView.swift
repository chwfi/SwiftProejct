//
//  ContentView.swift
//  MyFirstProject
//
//  Created by 최원석 on 8/18/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State var input: String = ""
    @State var element: String? = "책님"
    let elements: [String] = ["확실하다", "실행으로 옮기면 좋을 것이다", "기회라고 생각해라", "시간 낭비 하지마라", "즐겨라", "기다리지 마라", "큰 기대는 안하는게 좋다", "무조건 망할것이다", "마음의 준비를 하는게 좋을 것이다", "응 아니야", "ㄲㅂ", "ㅋㅋ", "미리 축하해라", "방심하지 마라"]
    
    var body: some View {
        VStack{
            Text(element!)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .lineLimit(0)
                .padding(.bottom, 25.0)
            
            TextField("무엇이든 물어보시오", text: $input)
                .padding()
                .frame(width: 325.0)
                .background(Color(uiColor: .secondarySystemBackground))
                .onSubmit {
                    // 사용자가 입력 완료했을 때 실행할 코드
                    if !input.isEmpty {
                        element = elements.randomElement()
                    }
                    input = "" // 입력 필드를 비웁니다.
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
