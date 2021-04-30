//
//  RainAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 29.04.2021.
//

import SwiftUI

struct RainAnimation: View {
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
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.1).speed(0.5))
                        .scaleEffect(0.4)
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.5).speed(0.5))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.3).speed(0.5))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.4).speed(0.5))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,60)
                HStack{
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.07).speed(0.5))
                        .scaleEffect(0.4)
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.7).speed(0.5))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.3).speed(0.5))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.delay(0.45).speed(0.5))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,60)
                HStack{
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.speed(0.51))
                        .scaleEffect(0.4)
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.speed(0.65))
                        .scaleEffect(0.4)
    
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.speed(0.37))
                        .scaleEffect(0.4)
                       
                    Image(systemName:"line.diagonal")
                        .font(.system(size: 25))
                        .foregroundColor(.blue)
                        .offset(x:animationStart ? 10:100, y:animationStart ? 300:40)
                        .animation(animation.speed(0.5))
                        .scaleEffect(0.4)
                    
                }
                .padding(.trailing,60)
                

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

struct RainAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RainAnimation()
            .preferredColorScheme(.dark)
    }
}
