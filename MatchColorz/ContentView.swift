//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 6/19/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

@available(OSX 10.15.0, *)
struct ContentView : View {
  let rTarget = Double.random(in: 0..<1)
  let gTarget = Double.random(in: 0..<1)
  let bTarget = Double.random(in: 0..<1)
  
  @State var rGuess: Double
  @State var gGuess: Double
  @State var bGuess: Double
  
  @State var showAnswer = false
  
  func computeScore() -> Int {
    let rDiff = rGuess - rTarget
    let gDiff = gGuess - gTarget
    let bDiff = bGuess - bTarget
    let diff = sqrt(rDiff * rDiff + gDiff * gDiff + bDiff * bDiff)
    return Int((1.0 - diff) * 100.0 + 0.5)
  }
  
  var body: some View {
    HStack {
      TargetView(red: rTarget, green: gTarget, blue: bTarget, showAnswer: showAnswer)
      VStack {
        ZStack {
          Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess))
          RGBValueLabel(red: rGuess, green: gGuess, blue: bGuess)
        }
        Controls(
          computeScore: self.computeScore,
          rGuess: $rGuess,
          gGuess: $gGuess,
          bGuess: $bGuess,
          showAnswer: $showAnswer
        )
      }
    }.padding()
  }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
  @available(OSX 10.15.0, *)
  static var previews: some View {
    ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
  }
}
#endif
