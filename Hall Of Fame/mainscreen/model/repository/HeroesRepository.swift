//
//  HeroesRepository.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/29/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

protocol HeroesRepository {
    func getHeroes(callback: @escaping([HeroRaw]) -> Void)
}
