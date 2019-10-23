//
//  HeroesTableViewHolder.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import UIKit
import moa

class HeroesTableViewHolder: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var team: UILabel!
    @IBOutlet weak var realName: UILabel!
    @IBOutlet weak var publisherAndYear: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    

    func bind(viewModel: UIHeroListItem) {
        name.text = viewModel.name
        team.text = viewModel.team
        realName.text = viewModel.realName
        publisherAndYear.text = viewModel.publisherAndYear
        avatar.moa.url = viewModel.imageUrl
    }
}
