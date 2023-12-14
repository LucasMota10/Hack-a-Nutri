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
           listanutri()
                .tabItem{
                    Image(systemName: "camera.macro")
                }
            
            Treinos()
                .tabItem{
                   Image(systemName: "dumbbell.fill")
                }
            calendario()
                .tabItem{
                    Image(systemName: "calendar.circle.fill")
                      }
          Perfil()
                .tabItem{
                    Image(systemName: "person.circle.fill")
                }
        }
        .ignoresSafeArea()
        //.tabViewStyle(DefaultTabViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
