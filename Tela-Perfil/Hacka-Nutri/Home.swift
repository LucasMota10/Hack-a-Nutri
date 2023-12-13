//
//  home.swift
//  HackaNutri
//
//  Created by Student07 on 07/12/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.black
                .offset(y:-20)
            VStack(spacing: -220){
                HStack{
                    Image("logo")
                        .padding(/*@START_MENU_TOKEN@*/[.top, .trailing]/*@END_MENU_TOKEN@*/)
                }
                HStack{
                    Text("Sua vida mais saudável!")
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                }
                Spacer()
   
            }
          
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
