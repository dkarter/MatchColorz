//
//  ColorSlider.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 10/10/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

@available(OSX 10.15.0, *)
struct ColorSlider: View {
  @Binding var value: Double
  var textColor: Color
  var body: some View {
    HStack {
      Text("0").foregroundColor(textColor)
      Slider(value: $value)
      Text("255").foregroundColor(textColor)
    }.padding(EdgeInsets(top: 0.5, leading: 0.5, bottom: 1.0, trailing: 0.5))
  }
}
