//
//  Tv.swift
//  Netflix Clone
//
//  Created by user on 2023/06/20.
//

import Foundation


import Foundation

struct TrendingTvResponse: Codable{
    let results: [Tv]
}
struct Tv:Codable
{
    let id:Int
    let media_type: String?
    let original_language: String?
    let original_title: String?
    let overview: String?
    let popularity: Double?
    let poster_path: String?
    let title: String?
    let release_date: String?
    let vote_average: Double?
    let vote_count: Int?
    
    
    
}
