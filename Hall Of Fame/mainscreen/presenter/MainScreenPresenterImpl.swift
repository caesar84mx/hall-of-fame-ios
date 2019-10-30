//
//  MainScreenPresenterImpl.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//
import Foundation

class MainScreenPresenterImpl: BasePresenter, MainScreenPresenter {
    typealias V = MainScreenView

    internal var view: MainScreenView?

    private let repository: HeroesRepository = HeroesRepositoryImpl()

    func loadHeroes() {
        view?.hideTable()
        view?.showLoadingIndicator()

        repository.getHeroes { (data) -> Void in
            if !data.isEmpty {
                self.view?.hideLoadingIndicator()
                self.view?.showTable(heroItems: data.map { UIHeroListItem(heroRaw: $0) })
            } else {
                self.view?.hideLoadingIndicator()
                self.view?.showEmptyTableText()
            }
        }
    }

    func openHeroDetails(heroId: Int) {
        // MARK: implement method
    }
}
