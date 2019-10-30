//
//  ViewController.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import UIKit

class MainScreenController: UIViewController {
    
    @IBOutlet weak var heroesTable: UITableView!

    private var heroesList = [UIHeroListItem]()
    private let presenter = MainScreenPresenterImpl()


    override func viewDidLoad() {
        super.viewDidLoad()

        heroesTable.delegate = self
        heroesTable.dataSource = self

        presenter.attach(view: self)
        presenter.loadHeroes()
    }

    override func viewDidDisappear(_ animated: Bool) {
        presenter.detach()
    }
}

extension MainScreenController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }     

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroesList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = heroesList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroTableCell") as! HeroesTableViewHolder
        cell.bind(viewModel: item)

        return cell
    }
}

extension MainScreenController: MainScreenView {
    func showLoadingIndicator() {
        showSpinner()
    }

    func hideLoadingIndicator() {
        hideSpinner()
    }

    func showTable(heroItems: [UIHeroListItem]) {
        heroesList = heroItems
        self.heroesTable.reloadData()
        self.heroesTable.isHidden = false
    }

    func hideTable() {
        heroesTable.isHidden = true
    }

    func showEmptyTableText() {
        print("No data")
    }

    func hideEmptyTableText() {
        // MARK: implement method
    }

    func showNoConnectionAlert() {
        // MARK: implement method
    }
}
