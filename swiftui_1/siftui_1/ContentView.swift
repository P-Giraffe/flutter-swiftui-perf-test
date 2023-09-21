//
//  ContentView.swift
//  siftui_1
//
//  Created by Maxime Britto on 18/09/2023.
//

import SwiftUI

struct ContentView: View {
    var number: Int
    var showText: Bool
    
    private let creationDate: Date

    init(initNum: Int, initShowText: Bool) {
          creationDate = Date()
          number = initNum
          showText = initShowText
    }
    
    
    var body: some View {
        HStack {
          ForEach(0..<number, id: \.self) { i in
            Group {
              if showText {
                SingleCellWithText()
              } else {
                SingleCell()
              }
            }
          }
        }
//        .onAppear {
//          print(Date().timeIntervalSince(creationDate))
//        }
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(initNum: 1000, initShowText: false)
    }
}

  

struct SingleCellWithText : View {
    var body: some View {
        Text("1")
            .frame(width: 20, height: 20)
            .padding(2)
            .border(.red, width: 2)
    }
}
struct SingleCell : View {
    var body: some View {
        Rectangle()
            .frame(width: 20, height: 20)
            .padding(2)
            .border(.red, width: 2)
    }
}
