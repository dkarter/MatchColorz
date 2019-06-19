//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Dorian Karter on 6/19/19.
//  Copyright © 2019 Dorian Karter. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
