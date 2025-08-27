//
//  WeatherAPIManager.swift
//  TodayWeather
//
//  Created by 박현렬 on 5/14/24.
//

import Alamofire
import Combine
import Foundation

class WeatherAPIManager{
    
    static let shared = WeatherAPIManager()
    
    private let baseURL = "https://api.openweathermap.org/data/2.5/weather"
    private let apiKey = Bundle.main.weatherApiKey
    
    private init(){}
    
    // MARK: - Get Current Weather Data
    
    // 금일 날씨 불러오는 API
    func getCurrentWeatherData(latitude: Double, longitude: Double) -> AnyPublisher<CurrentResponseModel, Error> {
        let parameters: [String: Any] = [
            "lat": latitude,
            "lon": longitude,
            "appid": apiKey,
            "units": "metric",
        ]
        
        return Future<CurrentResponseModel, Error> { promise in
            AF.request(self.baseURL, parameters: parameters)
                .validate()
                .responseDecodable(of: CurrentResponseModel.self) { response in
                    switch response.result {
                        case .success(let data):
                            promise(.success(data))
                        case .failure(let error):
                            promise(.failure(error))
                    }
                }
        }
        .eraseToAnyPublisher()
    }
    
    
    // 주간 날씨 불러오는 API
    func getForecastWeatherData(latitude: Double, longitude: Double, completion: @escaping (Result<ForecastResponseModel, Error>) -> Void){
        
        let url = "https://api.openweathermap.org/data/2.5/forecast"
        
        let parameters: [String: Any] = [
            "lat": latitude,
            "lon": longitude,
            //            "cnt": 7, // 7일치 데이터
            "appid": apiKey,
            "units": "metric",
        ]
        
        AF.request(url, parameters: parameters).validate().responseDecodable(of: ForecastResponseModel.self) { response in
            switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
    
}
