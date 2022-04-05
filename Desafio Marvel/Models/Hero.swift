//
//  Hero.swift
//  Desafio Marvel
//
//  Created by Felipe Brigagão de Almeida on 01/04/22.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let hero = try? newJSONDecoder().decode(Hero.self, from: jsonData)

import Foundation

// MARK: - Hero
struct Hero: Codable {
    let code: Int?
    let status, copyright, attributionText, attributionHTML: String?
    let etag: String?
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let offset, limit, total, count: Int?
    let results: [ResultHero]?
}

// MARK: - Result
struct ResultHero: Codable {
    let id: Int?
    let name: String?
    let resultDescription: String?
    let thumbnail: Thumbnail?
    let resourceURI: String?
    let comics: Comics?
    let series: Comics?
    let stories: Stories?
    let events: Comics?
    let urls: [URLElement]?
}

// MARK: - Comics
struct Comics: Codable {
    let available: Int?
    let collectionURI: String?
    let items: [ComicsItem]?
    let returned: Int?
}

// MARK: - ComicsItem
struct ComicsItem: Codable {
    let resourceURI: String?
    let name: String?
}

// MARK: - Stories
struct Stories: Codable {
    let available: Int?
    let collectionURI: String?
    let items: [StoriesItem]?
    let returned: Int?
}

// MARK: - StoriesItem
struct StoriesItem: Codable {
    let resourceURI: String?
    let name: String?
    //let type: ItemType?
}

enum ItemType: String, Codable {
    case cover = "cover"
    case empty = ""
    case interiorStory = "interiorStory"
}

// MARK: - Thumbnail
struct Thumbnail: Codable {
    let path: String?
    let thumbnailExtension: Extension?
    
    enum CodingKeys: String, CodingKey {
        case path
        case thumbnailExtension
    }
}

enum Extension: String, Codable {
    case gif = "gif"
    case jpg = "jpg"
}

// MARK: - URLElement
struct URLElement: Codable {
    let type: URLType?
    let url: String?
}

enum URLType: String, Codable {
    case comiclink = "comiclink"
    case detail = "detail"
    case wiki = "wiki"
}
