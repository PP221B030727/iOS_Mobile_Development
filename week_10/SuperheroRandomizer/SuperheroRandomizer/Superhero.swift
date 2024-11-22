//
//  Superhero.swift
//  SuperheroRandomizer
//
//  Created by Туругельдиев Нурсултан on 22.11.2024.
//

import Foundation

struct Superhero: Decodable {
    let name: String
    let fullName: String
    let intelligence: Int
    let strength: Int
    let speed: Int
    let durability: Int
    let power: Int
    let combat: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case name
        case biography
        case powerstats
        case images
    }

    enum BiographyKeys: String, CodingKey {
        case fullName = "fullName"
    }

    enum PowerStatsKeys: String, CodingKey {
        case intelligence, strength, speed, durability, power, combat
    }

    enum ImagesKeys: String, CodingKey {
        case lg
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)

        // Biography
        let biographyContainer = try container.nestedContainer(keyedBy: BiographyKeys.self, forKey: .biography)
        fullName = try biographyContainer.decode(String.self, forKey: .fullName)

        // PowerStats
        let powerStatsContainer = try container.nestedContainer(keyedBy: PowerStatsKeys.self, forKey: .powerstats)
        intelligence = try powerStatsContainer.decode(Int.self, forKey: .intelligence)
        strength = try powerStatsContainer.decode(Int.self, forKey: .strength)
        speed = try powerStatsContainer.decode(Int.self, forKey: .speed)
        durability = try powerStatsContainer.decode(Int.self, forKey: .durability)
        power = try powerStatsContainer.decode(Int.self, forKey: .power)
        combat = try powerStatsContainer.decode(Int.self, forKey: .combat)

        // Images
        let imagesContainer = try container.nestedContainer(keyedBy: ImagesKeys.self, forKey: .images)
        image = try imagesContainer.decode(String.self, forKey: .lg)
    }
}
