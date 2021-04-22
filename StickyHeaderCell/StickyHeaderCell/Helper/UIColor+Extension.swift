//
//  UIColor+Extension.swift
//  StickyHeaderCell
//
//  Created by Kang, Su Jin (강수진) on 2021/04/22.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}
