//
//  BookRowView.swift
//  IBooks
//
//  Created by Mac41 on 2/12/22.
//

import SwiftUI

struct BookRowView: View {
    
    var book: Item
    var imageNotFound = "https://www.shutterstock.com/image-vector/picture-vector-icon-no-image-260nw-1732584341.jpg"
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: book.volumeInfo.imageLinks?.smallThumbnail ?? imageNotFound)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
                .frame(width: 80, height: 120)
            
            VStack(alignment: .leading){
                Text(book.volumeInfo.title)
                    .font(.title3)
                    .fontWeight(.bold)
                Text(String(book.volumeInfo.averageRating ?? 0))
                Spacer()
                Text("Publish date: \(book.volumeInfo.publishedDate ?? "no date")")
            }
        }
    }
}
