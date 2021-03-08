//
//  UIViewController.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/6/21.
//

import UIKit

extension UIViewController {
    func scale(value: CGFloat) -> CGFloat {
        return ViewHelper.sharedInstance.scale(value: value)
    }
}
