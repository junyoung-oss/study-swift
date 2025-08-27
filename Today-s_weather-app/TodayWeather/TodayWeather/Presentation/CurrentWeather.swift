//
//  CurrentWeather.swift
//  TodayWeather
//
//  Created by 송정훈 on 5/19/24.
//

import UIKit
import CoreLocation

class CurrentWeather {
    static let shared = CurrentWeather()
    static var id = 0
    private let CDM = CoreDataManager()
    
    func weatherImage(weather : Int) -> UIImage {
        let weatherState = WeatherModel(id: weather)
        switch weatherState {
        case .sunny :
            return UIImage(named: "smallSunny") ?? UIImage()
        case .cloudy:
            return UIImage(named: "smallCloudy") ?? UIImage()
        case .rainy :
            return UIImage(named: "smallRainy") ?? UIImage()
        case .fewCloudy :
            return UIImage(named: "smallFewCloudy") ?? UIImage()
        }
    }
    
    func weatherColor() -> UIColor {
        let weatherState = WeatherModel(id: CurrentWeather.id)
        switch weatherState {
        case .sunny :
            return UIColor(named: "sunnyBackground") ?? UIColor()
        case .cloudy:
            return UIColor(named: "cloudyBackground") ?? UIColor()
        case .rainy :
            return UIColor(named: "rainyBackground") ?? UIColor()
        case .fewCloudy :
            return UIColor(named: "fewCloudyBackground") ?? UIColor()
        }
    }
    
    func reverseGeocode(latitude: Double, longitude: Double, save: Bool, completion : @escaping (Result<String, Error>) -> Void) {
           let location = CLLocation(latitude: latitude, longitude: longitude)
            let geocoder: CLGeocoder = CLGeocoder()
            let local: Locale = Locale(identifier: "en-US")
           geocoder.reverseGeocodeLocation(location, preferredLocale: local) { [weak self](placemarks, error) in
               if let error = error {
                   completion(.failure(error))
                   return
               }
               
               guard let placemark = placemarks?.first else {
                   print("No placemark found")
                   return
               }
               
               if save == true {
                   let name = (placemark.locality ?? "") + ", " + (placemark.country ?? "")
                   self?.CDM.saveData(Data: locationData(latitude: latitude, longitude: longitude, locName: name))
                   
                   completion(.success(name))
               }else {
                   let name = (placemark.locality ?? "")
                   completion(.success(name))
               }
               
           }
       }
}
