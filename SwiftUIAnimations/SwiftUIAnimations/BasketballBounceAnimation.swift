//
//  BasketballBounceAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 28.04.2021.
//

import SwiftUI

struct BasketballBounceAnimation: View {
    @State private var animationStart = false
    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: true)
    }
    var body: some View {
        VStack{
       
            Text("🏀")
                .font(.system(size: 50))
                .rotationEffect(Angle.degrees(animationStart ? 300:0))
                .animation(animation.speed(1.3))
                .scaleEffect(x:animationStart ? 1.0:1.130)
                .animation(animation)
                .offset(y: animationStart ? -120:50)
                .animation(animation)
            Circle()
                .frame(width: 20, height: 20, alignment: .top)
                .foregroundColor(.gray)
                .scaleEffect(x: animationStart ? 3.07 : 0,y: animationStart ? 1: 0)
                .animation(animation)
        }
        
        .onAppear{
            
            animationStart.toggle()
        }
      
    }
}

struct BasketballBounceAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BasketballBounceAnimation()
    }
}
