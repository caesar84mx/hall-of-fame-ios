//
//  BasePresenter.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/15/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

protocol BasePresenter: class {
    associatedtype V = BaseView

    var view: V? { get set }
    var isAttached: Bool { get }

    func attach(view: V)
    func detach()
}

extension BasePresenter {

    var isAttached: Bool {
        return view != nil
    }

    func attach(view: V) {
        self.view = view
    }

    func detach() {
        self.view = nil
    }
}
