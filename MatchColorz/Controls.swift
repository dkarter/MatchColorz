//
//  Controls.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 10/10/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

@available(OSX 10.15.0, *)
struct Controls: View {
  var computeScore : () -> Int
  @Binding var rGuess : Double
  @Binding var gGuess : Double
  @Binding var bGuess : Double
  @Binding var showAnswer : Bool
  @State var showAlert = false
  
  var body: some View {
    VStack {
      ColorSlider(value: $rGuess, textColor: .red)
      ColorSlider(value: $gGuess, textColor: .green)
      ColorSlider(value: $bGuess, textColor: .blue)
      HStack {
        Button(action: {
          self.showAlert = true
        }) {
          Text("🔍 Check Your Score")
        }
        .alert(isPresented: $showAlert) {
          Alert(
            title: Text("Your Score"),
            message:
            Text("Your score is \(computeScore())%")
          )
        }
        Button(action: {
          self.showAnswer = !self.showAnswer
        }) {
          if showAnswer {
            Text("😎 Hide Answer")
          } else {
            Text("🙂 Show Answer")
          }
        }
      }
    }
  }
}
