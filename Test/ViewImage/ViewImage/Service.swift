//
//  Service.swift
//  test1
//
//  Created by injae Lee on 2022/03/28.
//

import Foundation

struct Response: Codable {
    let id: String
    let url: String
    let width: Int
    let height: Int
}

final class Service {
    
    enum RequestError: Error {
        case networkError
    }
    
    func getImage (
        page: Int,
        limit: Int,
        completion: @escaping (Result<[Response], RequestError>) -> Void
    ) {
        
        var components = URLComponents(string: "https://api.thecatapi.com/v1/images/search")!
        
        components.queryItems = [
        URLQueryItem(name: "page", value: "\(page)"),
        URLQueryItem(name: "limit", value: "\(limit)")
        ]
        
        var request = URLRequest(url: components.url!)
        request.httpMethod = "Get"
        
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in
            
            guard error == nil else {
                completion(.failure(.networkError))
                return
            }
            
            guard let data = data else {
                completion(.failure(.networkError))
                return
            }
            
            guard let response = try? JSONDecoder().decode([Response].self, from: data) else {
                completion(.failure(.networkError))
                return
            }
            print(response)
            
            completion(.success(response))
        }
        task.resume()
    }
}
