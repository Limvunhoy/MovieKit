//
//  ViewHelper.swift
//  MovieKit
//
//  Created by IG_Se7enzZ on 3/6/21.
//

import UIKit

final class ViewHelper {
    
    static let sharedInstance = ViewHelper()
    
    private static let MAX_SCREEN_HEIGHT = 375
    
    private init() {}
    
    func scale(value: CGFloat) -> CGFloat {
        let width = UIScreen.main.bounds.width
        
        let ratio = width / CGFloat(ViewHelper.MAX_SCREEN_HEIGHT)
        return ratio * value
    }
}
