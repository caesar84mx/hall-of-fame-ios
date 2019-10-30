//
//  HeroesRepositoryImpl.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/29/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation
import Alamofire

class HeroesRepositoryImpl: HeroesRepository {

    func getHeroes(callback: @escaping([HeroRaw]) -> Void) {
        loadFromWeb(callback: callback)
    }

    private func loadFromWeb(callback: @escaping([HeroRaw]) -> Void) {
        var result = [HeroRaw]()
        let url = NetworkConstants.BASE_URL.rawValue + NetworkConstants.MARVEL.rawValue

        Alamofire.request(url).responseJSON { (responseData) -> Void in
            if responseData.result.value != nil {
                do {
                    let decoder = JSONDecoder()
                    result = try decoder.decode([HeroRaw].self, from: responseData.data!)
                    callback(result)
                } catch let error {
                    print(error)
                    callback(result)
                }
            }
        }
    }
}
