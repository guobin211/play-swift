//
//  ContentView.swift
//  mvvm
//
//  Created by 郭斌 on 2020/7/8.
//  Copyright © 2020 guobin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            MapView().frame(height: 200)
            Image("Bg").clipShape(Circle()).shadow(radius: 5).offset(y: -40)
            Text("Swift").font(.title).foregroundColor(.red)
            HStack {
                Text("Hello, ios!").font(.body).lineLimit(1).accentColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("2020-07-10")
            }

        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
