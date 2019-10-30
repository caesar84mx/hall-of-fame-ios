//
//  UIHeroListItem.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

struct UIHeroListItem {
    let name: String
    let team: String
    let realName: String
    let publisherAndYear: String
    let imageUrl: String

    init(name: String, team: String, realName: String, publisherAndYear: String, imageUrl: String) {
        self.name = name
        self.team = team
        self.realName = realName
        self.publisherAndYear = publisherAndYear
        self.imageUrl = imageUrl
    }

    init(heroRaw: HeroRaw) {
        self.init(
            name: heroRaw.name,
            team: heroRaw.team,
            realName: heroRaw.realname,
            publisherAndYear: "Published by \(heroRaw.firstappearance) in \(heroRaw.publisher)",
            imageUrl: heroRaw.imageurl
        )
    }
}
