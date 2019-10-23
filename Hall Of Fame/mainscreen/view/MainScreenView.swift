//
//  MainScreenView.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

protocol MainScreenView: BaseView {
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func showTable(heroItems: [UIHeroListItem])
    func hideTable()
    func showEmptyTableText()
    func hideEmptyTableText()
    func showNoConnectionAlert()
}
