//
//  Movie.swift
//  Favorite movies
//
//  Created by Нурсултан Туругельдиев on 07.11.2024.
//

import Foundation

class Movie {
    var id: String = ""
    var title: String = ""
    var year: String = ""
    var imageUrl: String = ""
    var plot: String = ""
    var desc: String = ""
    
    init(id: String, title: String, year: String, imageUrl: String, plot: String = "", desc: String) {
        self.id = id
        self.title = title
        self.year = year
        self.imageUrl = imageUrl
        self.plot = plot
        self.desc = desc
    }
}
