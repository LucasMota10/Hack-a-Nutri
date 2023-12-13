import SwiftUI

struct listanutri: View {
    
    @State private var searchText = ""
    
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredFoods) { index in
                    VStack(alignment: .leading) {
                        Text(index.description!)
                            .font(.headline)
                        
                    }
                }
            }
            .navigationTitle("Comidas")
        }.onAppear(){
            viewmodel.fetch()
        }
        .searchable(text: $searchText)
    }
    
    var filteredFoods: [food] {
        if searchText.isEmpty {
            return viewmodel.comida
        } else {
            return viewmodel.comida.filter { $0.description!.localizedCaseInsensitiveContains(searchText)
                
            }
        }
    }
    
}


struct listanutri_Previews: PreviewProvider {
    static var previews: some View {
        listanutri()
    }
}
