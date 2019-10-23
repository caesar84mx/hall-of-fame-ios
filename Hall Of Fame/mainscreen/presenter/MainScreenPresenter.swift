//
//  MainScreenPresenter.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

protocol MainScreenPresenter {
    func loadHeroes()
    func openHeroDetails(heroId: Int)
}
