//
//  Book.swift
//  IBooks
//
//  Created by Mac41 on 2/12/22.
//
import Foundation

// MARK: - PlayList
struct PlayList: Codable {
    let items: [Item]
}
// MARK: - Item
struct Item: Codable {
    let volumeInfo: VolumeInfo
}
// MARK: - VolumeInfo
struct VolumeInfo: Codable {
    let title: String
    let publishedDate: String?
    let pageCount: Int?
    let averageRating: Double?
    let ratingsCount: Int?
    let imageLinks: ImageLinks?
    let language: Language
    let previewLink: String
    let infoLink: String
}
// MARK: - ImageLinks
struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String
}
enum Language: String, Codable {
    case en = "en"
    case es = "es"
}
