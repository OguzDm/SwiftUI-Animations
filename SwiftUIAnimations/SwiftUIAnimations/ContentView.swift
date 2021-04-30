//
//  ContentView.swift
//  SwiftUIAnimations
//
//  Created by Oguz Demırhan on 27.04.2021.
//

import SwiftUI


struct ContentView: View {
    @State private var circleColorChanged = false
 
    var body: some View {
 
        ZStack {
           

            
        }
  
        
        .onAppear{
            circleColorChanged.toggle()
        }
     
 
    }
}


struct ContentView_Previews: PreviewProvider{
    
    static var previews: some View{
        ContentView()
            .preferredColorScheme(.dark)
    }
}
