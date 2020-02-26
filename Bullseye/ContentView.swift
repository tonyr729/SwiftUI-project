//
//  ContentView.swift
//  Bullseye
//
//  Created by Tony Robertson on 2/25/20.
//  Copyright © 2020 Tony Robertson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var hitAlertIsVisible: Bool = false
    @State var knockAlertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first App!")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                
                Button(action: {
                    print("Button pressed!")
                    self.hitAlertIsVisible = true;
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $hitAlertIsVisible) { () ->
                    Alert in
                    return Alert(
                        title: Text("Hello there!"),
                        message: Text("This is my first popup!"),
                        dismissButton: .default(Text("Awesome!"))
                    )
                }
                
                Button(action: {
                    print("Knock button pressed!")
                    self.knockAlertIsVisible = true;
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Knock Knock!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $knockAlertIsVisible) { () ->
                    Alert in
                    return Alert(
                        title: Text("Whos there?"),
                        message: Text("Insert knock knock joke"),
                        dismissButton: .default(Text("Ugh"))
                    )
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
