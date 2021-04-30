//
//  MovingBallsLoadingView.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 28.04.2021.
//

import SwiftUI

struct MovingBallsLoadingView: View {
    @State private var animationStart = false

    var animation: Animation {
        Animation.linear
            .repeatForever(autoreverses: true)
    }
    var body: some View {
        VStack{
       
            
            HStack{
                Circle()
                    .foregroundColor(Color(UIColor.systemTeal))
                    .frame(width: 50, height: 50)
                    .offset(y:animationStart ? -24 : 24)
                    .animation(animation)
                Circle()
                    .foregroundColor(Color(UIColor.systemTeal))
                    .frame(width: 50, height: 50)
                    .offset(y:animationStart ? 24 : -24)
                    .animation(animation)
                Circle()
                    .foregroundColor(Color(UIColor.systemTeal))
                    .frame(width: 50, height: 50)
                    .offset(y:animationStart ? -24 : 24)
                    .animation(animation)
                Circle()
                    .foregroundColor(Color(UIColor.systemTeal))
                    .frame(width: 50, height: 50)
                    .offset(y:animationStart ? 24 : -24)
                    .animation(animation)
                Circle()
                    .foregroundColor(Color(UIColor.systemTeal))
                    .frame(width: 50, height: 50)
                    .offset(y:animationStart ? -24 : 24)                    .animation(animation)
                    
            }
            .padding(.top,100)
            
            
            .onAppear(){
                animationStart.toggle()
            }
        }
      
    }}

struct MovingBallsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        MovingBallsLoadingView()
    }
}
