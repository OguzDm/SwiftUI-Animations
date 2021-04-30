//
//  TennisBallAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 28.04.2021.
//

import SwiftUI

struct TennisBallAnimation: View {
    @State private var animationStart = false
    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: true)
    }
    var body: some View {
        VStack{
       
            Text("🎾")
                .font(.system(size: 40))
                .rotationEffect(.degrees(animationStart ? 360:0))
                .animation(animation.speed(0.7))
                .offset(x: animationStart ? UIScreen.main.bounds.width / 2 : -UIScreen.main.bounds.width / 2)
                .animation(animation)
    
        }
        
        .onAppear{
            
            animationStart.toggle()
        }
      
    }
}

struct TennisBallAnimation_Previews: PreviewProvider {
    static var previews: some View {
        TennisBallAnimation()
    }
}
