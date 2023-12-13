//
//  NaoConquistouView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 12/12/23.
//

import SwiftUI

struct NaoConquistouView: View {
    var x: Int
    var y: String
    var body: some View {
        ZStack {
            Color.black
            VStack {
                VStack(alignment: .center) {
                    Text("Você receberá esta conquista quando completar \(x) treinos! ").foregroundColor(Color(.systemGray4)).fontWeight(.bold).font(.system(size: 25)).frame(width: 330).padding(.bottom, 1)
                }.padding(.top, 80)
                Spacer()
                VStack {
                    Image(y).resizable().frame(width: 200, height: 200)
                }.padding(.bottom, 180)
                
            }
            
        }.ignoresSafeArea()
    }
}

struct NaoConquistouView_Previews: PreviewProvider {
    static var previews: some View {
        NaoConquistouView(x: 5, y:"Iniciante 1")
    }
}
