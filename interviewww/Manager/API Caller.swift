//
//  API Caller.swift
//  interviewww
//
//  Created by Yashika Tonk on 24/07/23.
//

import Foundation

let baseUrl = "https://api.openweathermap.org/data/2.5/forecast?zip=94040,us&appid=688686096d11030f19b841d42e57afea"

func fetchData (completion: @escaping (Result<Data,Error>) -> Void) {
    
    guard let url = URL(string: baseUrl) else { return }
    
    let request = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: request) { data, _, error in
        
        guard let data = data, error == nil else { return }
        
        do {
            let json = try JSONDecoder().decode(Data.self, from: data)
            completion(.success(json))
        }
        catch {
            completion(.failure(error))
        }
    }
    task.resume()
}


