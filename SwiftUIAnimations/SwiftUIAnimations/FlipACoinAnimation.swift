//
//  FlipACoinAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 29.04.2021.
//

import SwiftUI

struct FlipACoinAnimation: View {
    @State private var animationStart = false
    @State private var degree = 270
    @State private var hand = "✊"
    var animation: Animation {
        Animation.easeOut
    }
    var body: some View {
        VStack{

            Text("🪙")
                .font(.system(size: 60))
                .rotation3DEffect(
                    Angle.degrees(animationStart ? 2880:100),
                    axis: (x: 1.0, y: 0.0, z: 0.0))
                .offset(y: animationStart ? -250:55)
                .animation(animation.speed(0.9))
                Text(hand)
                .font(.system(size: 120))
                    .rotationEffect(Angle.degrees(Double(degree)))
            
            
            
            Button(action:{
                if !animationStart {
                    animationStart.toggle()
                    hand = "👎"
                    degree = 180
                }
                
                else {
                    hand = "✊"
                    degree = 270
                    animationStart.toggle()
                }
                
            }){
                Text("Flip a coin")
            }
                
            
                
        }
        
      
    }
}

struct FlipACoinAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FlipACoinAnimation()
    }
}
