//
//  FlashlightAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 30.04.2021.
//

import SwiftUI

struct FlashlightAnimation: View {
    @State private var flashlightAnimationStart = false
    @State private var name = "flashlight.off.fill"
    var animation: Animation {
        Animation.easeOut
    }
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "line.diagonal")
                    .rotationEffect(Angle.degrees(-70))
                    .font(.system(size:30))
                    .opacity(flashlightAnimationStart ? 1:0)
                    .animation(animation)
                Image(systemName: "line.diagonal")
                    .rotationEffect(Angle.degrees(-43))
                    .font(.system(size:35))
                    .opacity(flashlightAnimationStart ? 1:0)
                    .animation(animation)
                Image(systemName: "line.diagonal")
                    .rotationEffect(Angle.degrees(-20))
                    .font(.system(size:30))
                    .opacity(flashlightAnimationStart ? 1:0)
                    .animation(animation)
            }
            

            Button(action: {
                if !flashlightAnimationStart {
                    flashlightAnimationStart.toggle()
                    name = "flashlight.on.fill"
                    
                }
                
                else {
                    name = "flashlight.off.fill"
                    flashlightAnimationStart.toggle()
                }
            }){
                HStack{
                    Image(systemName: name)
                        .font(.system(size: 120))
                        .foregroundColor(Color.red)
                }
            }
            
        }
        
        .onAppear{
            
        }
      
    }
}

struct FlashlightAnimation_Previews: PreviewProvider {
    static var previews: some View {
        FlashlightAnimation()
    }
}
