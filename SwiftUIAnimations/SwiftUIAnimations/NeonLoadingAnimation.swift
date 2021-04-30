//
//  NeonLoadingAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 30.04.2021.
//

import SwiftUI

struct NeonLoadingAnimation: View {
    @State private var circleColorChanged = false
 
    var body: some View {
 
        ZStack {
  
            Circle()
                .trim(from: 0, to: 0.3)
                .stroke(Color.yellow,lineWidth: 4)
                .frame(width: 100, height: 100, alignment: .center)
                .shadow(color: .red, radius: 6, x: 0.0, y: 0.0)
                .shadow(color: .red, radius: 6, x: 0.0, y: 0.0)
                .rotationEffect(Angle.degrees(circleColorChanged ? 360:0))
                .animation(Animation.linear.repeatForever(autoreverses: false))

        }
        
        .onAppear{
            circleColorChanged.toggle()
        }
     
 
    }}

struct NeonLoadingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        NeonLoadingAnimation()
            .preferredColorScheme(.dark)
    }
}
