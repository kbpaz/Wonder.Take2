//
//  ContentView.swift
//  Wonder.Take2
//
//  Created by Katerin Paz on 1/19/20.
//  Copyright © 2020 Katerin Paz. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
        
            Image("WonderWoman")
                .resizable()
                .clipShape(Circle())
                .scaledToFill()
                .edgesIgnoringSafeArea([.top])
                
            
            Text("Hello, Wonder.")
                .fontWeight(.bold)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.red)
                .font(.title)
                .border(Color.black, width: 5)
            Text("Welcome Back.")
                .fontWeight(.bold)
                .font(.subheadline)
                .padding()
                .background(Color.pink)
                .cornerRadius(30)
                .foregroundColor(.black)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.orange, lineWidth: 5)
                )
            Button(action: {
                print("Click Me Tapped!")
            }){Text("Click Me")
                .accentColor(.white)
                .padding(8)
                .background(Color.red)
                .cornerRadius(8)
                Spacer()
                
                ZStack(alignment: .bottomTrailing) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    FloatingMenu()
                        .padding()
                }
            }
        }
    }
}
    
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
