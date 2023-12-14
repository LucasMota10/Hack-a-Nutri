import SwiftUI

struct listanutri: View {
    
    @State private var searchText = ""
    @StateObject var viewmodel = ViewModel()
    @State var b : Bool = true
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                Color("amarelo")
                    .ignoresSafeArea(.all)
                
                VStack{
                    Button("Pesquisa"){
                        
                        viewmodel.fetch(digita: searchText)
                        b = false
                    }
                    List {
                        if(b){
                            Text("Faça sua busca")
                        }
                        
                        ForEach(filteredFoods, id: \.self) { index in
                            VStack(alignment: .leading) {
                                NavigationLink(destination: nutricao(alimento: index)){
                                    Text(index.descricao)
                                        .font(.headline)
                                }
                            }
                        }
                    }
                    .background(Color.yellow)
                    .scrollContentBackground(.hidden)
                    .navigationTitle(" -  Comidas   -")
                    
                   
                    
                   
                    
                }
                //.onAppear(){
                //                viewmodel.fetch()
                //            }
                .searchable(text: $searchText)
            }.background(.orange)
            
        }
        
    }
    
    var filteredFoods: [food] {
        if searchText.isEmpty {
            return viewmodel.comida
        } else {
            return viewmodel.comida.filter { $0.descricao.localizedCaseInsensitiveContains(searchText)
                
            }
        }
    }
    
}


struct listanutri_Previews: PreviewProvider {
    static var previews: some View {
        listanutri()
    }
}
