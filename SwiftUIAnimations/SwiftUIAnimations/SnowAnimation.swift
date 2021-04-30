//
//  SnowAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 29.04.2021.
//

import SwiftUI

struct SnowAnimation: View {
    @State private var animationStart = false
    @State private var value = 0.1
    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: false)
    }
    var body: some View {
        VStack{

            VStack{

                HStack{
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.1).speed(0.3))
                        .scaleEffect(0.4)
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:70, y:animationStart ? 300:40)
                        .animation(animation.delay(0.5).speed(0.3))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:30, y:animationStart ? 300:40)
                        .animation(animation.delay(0.3).speed(0.3))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:20, y:animationStart ? 300:40)
                        .animation(animation.delay(0.4).speed(0.3))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,50)
                HStack{
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:50, y:animationStart ? 300:40)
                        .animation(animation.delay(0.07).speed(0.3))
                        .scaleEffect(0.4)
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.7).speed(0.5))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.3).speed(0.4))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:50, y:animationStart ? 300:40)
                        .animation(animation.delay(0.45).speed(0.2))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,50)
                HStack{
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:60, y:animationStart ? 300:40)
                        .animation(animation.speed(0.51))
                        .scaleEffect(0.4)
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:60, y:animationStart ? 300:40)
                        .animation(animation.speed(0.65))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.speed(0.37))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"snow")
                        .font(.system(size: 27))
                        .foregroundColor(.white)
                        .offset(x:animationStart ? 10:30, y:animationStart ? 300:40)
                        .animation(animation.speed(0.5))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,50)
                

            }
            .overlay(
                Image(systemName: "cloud.fill")
                .font(.system(size: 120))
                    .foregroundColor(Color.white.opacity(1)))
            
                
            
        }
        
        .onAppear{
            animationStart.toggle()
        }
      
    }
}

struct SnowAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SnowAnimation()
            .preferredColorScheme(.dark)
    }
}
