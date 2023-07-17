//
//  Data.swift
//  interviewww
//
//  Created by Yashika Tonk on 24/07/23.
//

import Foundation

struct Data: Codable {
    let city: City
    let cnt: Int
    let cod: String
    let list: [List]
}

struct City: Codable {
    let coord: Coordinates
    let country: String
    let id: Int
    let name: String
    let population: Int
    let sunrise: Int
    let sunset: Int
    let timezone: Int
}

struct Coordinates: Codable {
    let lat, lon: Double
}

struct List: Codable {
    let clouds: Clouds
    let dt: Int
    let dt_txt: String
    let main: Main
    let pop, visibility: Int
    let weather: [Weather]
    let wind: Wind
}

struct Main: Codable  {
    let feels_like: Double
    let grnd_level, humidity, pressure, sea_level: Int
    let temp, temp_kf, temp_max, temp_min: Double
}

struct Clouds: Codable {
    let all: Int
}

struct Weather: Codable {
    let description: String
    let id: Int
    let main: String
}

struct Wind: Codable {
    let deg: Int
    let gust, speed: Double
}
