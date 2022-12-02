//
//  HomeViewModel.swift
//  IBooks
//
//  Created by Mac41 on 2/12/22.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // published es un tipo que nos permite compartirvariables de el view model hacia nuestra vista
    @Published var items = [Item]()
    
    func getBooks(search: String) async {
        self.items.removeAll()
        let replaceURL = search.replacingOccurrences(of: " ", with: "%20")
        guard let url = URL(string: "https://www.googleapis.com/books/v1/volumes?q=\(replaceURL)") else {return}
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decoder = try? JSONDecoder().decode( PlayList.self, from: data){
                DispatchQueue.main.async {
                    self.items.append(contentsOf: decoder.items)
                    print(decoder.items[0].volumeInfo.title)
                }
                
            }
        } catch{
            print("Error in API")
        }
    }
}
