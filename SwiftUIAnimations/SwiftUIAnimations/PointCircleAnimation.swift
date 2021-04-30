//
//  PointCircleAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 30.04.2021.
//

import SwiftUI

struct PointCircleAnimation: View {
    @State private var circleColorChanged = false
 
    var body: some View {
 
        ZStack {
           
          
            
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(y:-50)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever())
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x:35,y:-35)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.1))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: 50)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.2))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x: 35,y:35)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.3))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(y:50)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.4))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x:-35,y:35)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.5))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x:-50)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.6))
            Circle()
                .frame(width: 20, height: 20, alignment: .center)
                .offset(x:-35,y:-35)
                .opacity(circleColorChanged ? 1:0)
                .animation(Animation.linear.repeatForever().delay(0.7))
            
            
            
          
            
           
            
                
            
        }
  
        
        .onAppear{
            circleColorChanged.toggle()
        }
     
 
    }
}

struct PointCircleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        PointCircleAnimation()
    }
}
