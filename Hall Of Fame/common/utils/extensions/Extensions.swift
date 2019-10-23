//
//  Extensions.swift
//  Hall Of Fame
//
//  Created by Maxim Dymnov on 10/16/19.
//  Copyright © 2019 Maxim Dymnov. All rights reserved.
//

import UIKit

fileprivate var aView: UIView?

extension UIViewController {
    func showSpinner() {
        aView = UIView(frame: self.view.bounds)
        aView?.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)

        let ai = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
        ai.center = aView!.center
        ai.startAnimating()
        aView?.addSubview(ai)
        self.view.addSubview(aView!)
    }

    func hideSpinner() {
        aView?.removeFromSuperview()
        aView = nil
    }
}
