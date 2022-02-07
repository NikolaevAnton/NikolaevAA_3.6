//
//  ContentView.swift
//  NikolaevAA_3.6
//
//  Created by Anton Nikolaev on 07.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAward = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                HStack {
                    Text(showAward ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .rotationEffect(.degrees(showAward ? 0 : 180))
                        .scaleEffect(showAward ? 2 : 1)
                }
            }
            
            Spacer()
            CubeView()
                .frame(width: 250, height: 250)
                .offset(y: showAward ? 0 : -UIScreen.main.bounds.height)
                .animation(
                    .interpolatingSpring(
                        mass: 1,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0
                    )
                )
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            showAward.toggle()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
