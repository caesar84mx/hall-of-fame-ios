//
//  HeroesResponse.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/29/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import Foundation

struct HeroesResponse: Codable {
    let heroes: [HeroRaw]
}
