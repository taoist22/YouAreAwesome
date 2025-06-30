//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by CT Reatherford on 6/28/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var newImage = ""
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: newImage)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let newImage1 = "hand.thumbsup"
                let newImage2 = "sun.max.fill"
                message = (message == message1 ? message2: message1)
                newImage = (newImage == newImage1 ? newImage2: newImage1)
//                if message == message1 {
//                    message = message2
//                    newImage = newImage2
//                } else {
//                    message = message1
//                    newImage = newImage1
//                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
    }
}


#Preview {
    ContentView()
}
