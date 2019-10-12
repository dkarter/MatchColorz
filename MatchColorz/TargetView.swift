//
//  TargetView.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 10/10/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

@available(OSX 10.15.0, *)
struct TargetView: View {
  var red : Double
  var green : Double
  var blue : Double
  var showAnswer = false

  
  var body: some View {
    VStack {
      ZStack {
        Rectangle()
          .foregroundColor(Color(red: red, green: green, blue: blue))
        
        if showAnswer {
          RGBValueLabel(red: red, green: green, blue: blue)
        }
      }
      Text("Match this color")
    }
  }
}

