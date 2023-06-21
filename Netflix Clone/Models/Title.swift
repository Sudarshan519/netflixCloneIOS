//
//  Movie.swift
//  Netflix Clone
//
//  Created by user on 2023/06/20.
//

import Foundation

struct TrendingMoviesResponse: Codable{
    let results: [Title]
}
struct Title:Codable
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
//
//
//adult = 0;
//"backdrop_path" = "/wRxLAw4l17LqiFcPLkobriPTZAw.jpg";
//"genre_ids" =             (
//    28,
//    53
//);
//id = 697843;
//"media_type" = movie;
//"original_language" = en;
//"original_title" = "Extraction 2";
//overview = "Tasked with extracting a family who is at the mercy of a Georgian gangster, Tyler Rake infiltrates one of the world's deadliest prisons in order to save them. But when the extraction gets hot, and the gangster dies in the heat of battle, his equally ruthless brother tracks down Rake and his team to Sydney, in order to get revenge.";
//popularity = "1180.988";
//"poster_path" = "/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg";
//"release_date" = "2023-06-12";
//title = "Extraction 2";
//video = 0;
//"vote_average" = "7.888";
//"vote_count" = 488;
