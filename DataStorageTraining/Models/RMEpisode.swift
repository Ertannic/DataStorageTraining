//
//  RMEpisode.swift
//  DataStorageTraining
//
//  Created by Ertannic Saralay on 05.07.2024.
//

import Foundation

struct RMEpisode: Codable {
    
    let id: String
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
    
}
