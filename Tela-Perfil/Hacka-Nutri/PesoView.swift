//
//  PesoView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 12/12/23.
//

import SwiftUI

struct PesoView: View {
    @State var peso: Float = 72
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    @State var pesoAtual: String = "79.50"
    var body: some View {
        ZStack {
            Color("Progress")
            VStack {
                VStack {
                    Text("Peso").foregroundColor(.white).fontWeight(.bold).font(.system(size: 30))
                }.padding(.top, 50)
                Spacer()
                VStack {
                    HStack {
                        Text("Digite seu peso:")
                        TextField("Peso", value: $peso, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).frame(width: 70)
                    } .padding(.leading, 5).padding(.bottom, 15).padding(.top, 100)
                        let formattedFloat = String(format: "%.2f", peso)
                    Text("Peso atual:  \(pesoAtual) kg").foregroundColor(.white).fontWeight(.bold).font(.system(size: 20))
                    VStack {
                        Button {
                            pesoAtual = formattedFloat
                        } label: {
                            Text("Salvar")
                                .padding(.horizontal, 20).padding(.vertical, 10)
                        }
                        .contentShape(Rectangle()).foregroundColor(Color.black)
                    } .padding(.top, 200) .buttonStyle(.borderedProminent).tint(Color(.white))
                }
                Spacer()
                
            }
        }.ignoresSafeArea()
    }
    }

struct PesoView_Previews: PreviewProvider {
    static var previews: some View {
        PesoView()
    }
}
