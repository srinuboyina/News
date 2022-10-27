//
//  News.swift
//  NewsAround
//
//  Created by Sanjeeva Reddy Nandela on 8/5/22.
//

import Foundation

// MARK: - News
struct NewsResponse: Codable {
    var pagination: Pagination?
    var data: [Article]?
}

// MARK: - Article
struct Article: Codable, Searchable {
    let author: String?
    let title, description, url, source: String?
    let image: String?
    let category, language, country: String?
    let publishedAt: String?
    
    var query: String {
        return title ?? ""
    }
    
    enum CodingKeys: String, CodingKey {
        case author, title, description
        case url, source, image, category, language, country
        case publishedAt = "published_at"
    }
    
    init(author: String? = "",
         title: String? = "",
         description: String? = "",
         url: String? = "",
         source: String? = "",
         image: String? = "",
         category: String? = "",
         language: String? = "",
         country: String? = "",
         publishedAt: String? = "")
    {
        self.author = author
        self.title = title
        self.description = description
        self.url = url
        self.source = source
        self.image = image
        self.category = category
        self.language = language
        self.country = country
        self.publishedAt = publishedAt
    }
    
}

// MARK: - Pagination
struct Pagination: Codable {
    let limit, offset, count, total: Int?
}
