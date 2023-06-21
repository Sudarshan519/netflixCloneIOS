//
//  APICaller.swift
//  Netflix Clone
//
//  Created by user on 2023/06/20.
//

import Foundation
struct Constants{
    static let API_KEY="6dc8d58f50f983365e68312b25ceda1d"
    static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error{
    case failedTogetData
}
class APICaller{
    static let shared = APICaller()
    func getTrendingTv(completion: @escaping (Result<[Title],Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)){
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let resp = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(resp)
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data )
                completion(.success(results.results))
                //                print(results.results[0].original_title)
            } catch{
                completion(.failure(error))
             
            }
        }
        
        task.resume()
    }
 

    func getTrendingMovies(completion: @escaping (Result<[Title],Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)){
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let resp = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(resp)
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data )
                completion(.success(results.results))
//                print(results.results[0].original_title)
            } catch{
                completion(.failure(error))
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    
    
    func getUpcomingMovies(completion: @escaping (Result<[Title],Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)){
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let resp = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(resp)
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data )
                completion(.success(results.results))
                //                print(results.results[0].original_title)
            } catch{
                completion(.failure(error))
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    
    func getPopularMovies(completion: @escaping (Result<[Title],Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)){
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let resp = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(resp)
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data )
                completion(.success(results.results))
                //                print(results.results[0].original_title)
            } catch{
                completion(.failure(APIError.failedTogetData))
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
    
    func getTopRatedMovies(completion: @escaping (Result<[Title],Error>) -> Void){
        guard let url = URL(string:"\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)") else {return}
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)){
            data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let resp = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(resp)
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data )
                completion(.success(results.results))
                //                print(results.results[0].original_title)
            } catch{
                completion(.failure(APIError.failedTogetData))
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
}
