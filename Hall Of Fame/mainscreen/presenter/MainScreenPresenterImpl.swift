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

    func loadHeroes() {
        view?.hideTable()
        view?.showLoadingIndicator()
        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { (t) in
            self.view?.hideLoadingIndicator()
            self.view?.showTable(heroItems: self.mockItems)
        })
    }

    func openHeroDetails(heroId: Int) {
        // MARK: implement method
    }

    private let mockItems: [UIHeroListItem] = [
        UIHeroListItem(
            name: "Jimmy",
            team: "Dead Heroes",
            realName: "Jimmy Hendrix",
            publisherAndYear: "Published by London in 1970",
            imageUrl: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE5NTU2MzE2MjQ0MzEzNjEx/jimi-hendrix-9334756-1-402.jpg"),
        UIHeroListItem(
            name: "Janis",
            team: "Dead Heroes",
            realName: "Janis Joplin",
            publisherAndYear: "Published by USA in 1970",
            imageUrl: "https://www.rockhall.com/sites/default/files/styles/header_image_portrait/public/janisjoplin-7030_00055_35_neg_n_bw_orig_v001_0.jpg"),
        UIHeroListItem(
            name: "Jim",
            team: "Dead Heroes",
            realName: "Jim Morrison",
            publisherAndYear: "Published by Paris in 1971",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/7/7f/Jim_Morrison_1969.JPG"),
        UIHeroListItem(
            name: "Cyd",
            team: "Dead Heroes",
            realName: "Cyd Barret",
            publisherAndYear: "Published by Cambridge in 2006",
            imageUrl: "https://upload.wikimedia.org/wikipedia/en/f/ff/Syd.jpg"),
        UIHeroListItem(
            name: "Mama",
            team: "Dead Heroes",
            realName: "Cass Elliot",
            publisherAndYear: "Published by London in 1974",
            imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Cass_Elliot_%281972%29.png/440px-Cass_Elliot_%281972%29.png"),
        UIHeroListItem(
            name: "Tsoy",
            team: "Dead Heroes",
            realName: "Viktor Tsoy",
            publisherAndYear: "Published by Latvia in 1991",
            imageUrl: "https://www.calvertjournal.com/images/uploads/thumbnails/tsoi/Viktor_Tsoi2_-_Viktor_Tsoi_:_Facebook.jpg")
    ]
}
