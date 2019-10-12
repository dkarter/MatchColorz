//
//  RGBValueLabel.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 10/11/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

@available(OSX 10.15.0, *)
struct RGBValueLabel: View {
  var red : Double
  var green : Double
  var blue : Double
  
  func toRgbInt(_ value: Double) -> Int {
    return Int(value * 255.0)
  }
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 5)
        .fill(Color.white)
        .frame(width: 160, height: 35)
      
      HStack {
        Text("R: \(toRgbInt(red))").bold()
        Text("G: \(toRgbInt(green))").bold()
        Text("B: \(toRgbInt(blue))").bold()
      }.foregroundColor(.black)
    }
  }
}
