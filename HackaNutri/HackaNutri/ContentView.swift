//
//  ContentView.swift
//  HackaNutri
//
//  Created by Student07 on 07/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            Home()
                .tabItem{
                Image(systemName: "house.fill")

                }
            Treinos()
                .tabItem{
                   Image(systemName: "dumbbell.fill")
                }
            Nutric_a_o()
                .tabItem{
                    Image(systemName: "camera.macro")
                }
          Perfil()
                .tabItem{
                    Image(systemName: "person.circle.fill")
                }
        }
        .ignoresSafeArea()
        .tabViewStyle(DefaultTabViewStyle())
        .accentColor(.yellow)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
