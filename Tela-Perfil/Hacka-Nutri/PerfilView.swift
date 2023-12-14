//
//  PerfilView.swift
//  Hacka-Nutri
//
//  Created by Student09 on 12/12/23.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Progress")
                VStack(spacing: 30) {
                    VStack {
                        HStack(alignment: .top, spacing: 20) {
                            Image(systemName: "person.circle.fill").foregroundColor(.white).font(.system(size: 30))
                            Text("Perfil").foregroundColor(.white).fontWeight(.bold).font(.system(size: 30))
                        }.padding(.bottom, 10).padding(.top, 35)
                    }
                    
                    VStack {
                        ScrollView() {
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "person.circle.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Alterar Foto")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: PesoView()){
                                    VStack {
                                        Image(systemName: "scalemass.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Alterar Peso")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: AlturaView()){
                                    VStack {
                                        Image(systemName: "ruler.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Alterar Altura")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "arrow.triangle.2.circlepath.circle")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Sincronizar")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: ProgressoView()){
                                    VStack {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    } .frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Progresso")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "target")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    } .frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Metas")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "person.3.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Conta")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    } .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "character.bubble.fill")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    } .frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Idiomas")
                                            .foregroundColor(.white).font(.system(size: 22))
                                    } .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                            HStack(alignment: .top) {
                                NavigationLink (destination: EmptyView()){
                                    VStack {
                                        Image(systemName: "trash.fill")
                                            .foregroundColor(.red).font(.system(size: 22))
                                    }.frame(width: 30).padding(.trailing, 10).padding(.leading, 80)
                                    VStack {
                                        Text("Excluir Conta")
                                            .foregroundColor(.red).font(.system(size: 22))
                                    }.frame(maxWidth: .infinity, alignment: .leading)
                                }
                                
                            } .padding(.trailing, 10).padding(10)
                        }
                    }
                }
                //  .padding()
            } .ignoresSafeArea()
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilView()
    }
}
