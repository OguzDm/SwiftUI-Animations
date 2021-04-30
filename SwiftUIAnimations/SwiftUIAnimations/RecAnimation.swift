//
//  RecAnimation.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 29.04.2021.
//

import SwiftUI

struct RecAnimation: View {
    @State private var recAnimationStart = false
    var animation: Animation {
        Animation.default
            .repeatForever()
    }
    var body: some View {
        VStack{

            VStack{

                HStack{
                    Image(systemName: "circlebadge.fill")
                        .font(.system(size: 50))
                        .foregroundColor(.red)
                        .opacity(recAnimationStart ? 0.0:1)
                        .animation(animation)
                    
                    Text("REC")
                        .font(.system(size: 38))
                        .foregroundColor(.red)
                }
                

            }
            
            
            
        }
        
        .onAppear{
            recAnimationStart.toggle()
        }
      
    }
}

struct RecAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RecAnimation()
            .preferredColorScheme(.dark)
    }
}
