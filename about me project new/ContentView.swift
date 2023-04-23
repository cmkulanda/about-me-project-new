//
//  ContentView.swift
//  about me project new
//
//  Created by scholar on 4/22/23.
//

import SwiftUI

struct ContentView: View {
@State private var myFacts = " "
@State private var isClicked = false

    
    var body: some View {
        ZStack {
            
            Color(.systemGray5)
                .ignoresSafeArea()
            
            VStack (spacing: 50) {
                
                Text("bonjour! my name is christa!")
                    .font(Font.custom("Futura", size: 27))
                    .multilineTextAlignment(.center)
                    
                
                Button("some facts about me..") {
                   myFacts = "in my free time, I love to read books, watch films (ladybird supremacy), attend concerts, play tennis, learn songs on my guitar, and drink overly priced matcha lattes. i'm from chicago, il., and i wouldn't live anywhere else! my next concert is boygenius! <33"
                    isClicked = true
                }
                .font(Font.custom("Futura", size: 20))
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.875, saturation: 0.29, brightness: 0.962))
                
                Text(myFacts)
                    .multilineTextAlignment(.center)
                    .padding(20)
                    .font(Font.custom("Futura", size: 18))
                
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .shadow(radius: 5)
                    .padding(20)
                    
            }
            
            
            
        }
        
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
}
