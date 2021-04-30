//
//  ThreeCircleLoadingAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 30.04.2021.
//

import SwiftUI

struct ThreeCircleLoadingAnimation: View {
    @State private var circleColorChanged = false
 
    var body: some View {
 
        ZStack {
            Circle()
                .trim(from: 0, to: 0.4)
                .stroke(Color.yellow, lineWidth: 8.0)
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: .yellow, radius: 6, x: 0.0, y: 0.0)
                .shadow(color: .yellow, radius: 6, x: 0.0, y: 0.0)
                .rotationEffect(Angle.degrees(circleColorChanged ? 360:0))
                .animation(Animation.linear.repeatForever(autoreverses: false).speed(1.7))
            Circle()
                .trim(from: 0.7, to: 1.0)
                .stroke(Color.pink, lineWidth: 8.0)
                .frame(width: 150, height: 150, alignment: .center)
                .shadow(color: .pink, radius: 6, x: 0.0, y: 0.0)
                .shadow(color: .pink, radius: 6, x: 0.0, y: 0.0)
                .rotationEffect(Angle.degrees(circleColorChanged ? 360:0))
                .animation(Animation.linear.repeatForever(autoreverses: false).speed(1.5))
            Circle()
                .trim(from: 0.2, to: 0.7)
                .stroke(Color.purple, lineWidth: 8.0)
                .frame(width: 200, height: 200, alignment: .center)
                .shadow(color: .purple, radius: 6, x: 0.0, y: 0.0)
                .shadow(color: .purple, radius: 6, x: 0.0, y: 0.0)
                .rotationEffect(Angle.degrees(circleColorChanged ? 360:0))
                .animation(Animation.linear.repeatForever(autoreverses: false).speed(2.0))
            
            
        }
        
        .onAppear{
            circleColorChanged.toggle()
        }
     
 
    }
}

struct ThreeCircleLoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ThreeCircleLoadingAnimation()
    }
}
