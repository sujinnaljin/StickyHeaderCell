//
//  CGFloat+Extension.swift
//  StickyHeaderCell
//
//  Created by Kang, Su Jin (강수진) on 2021/04/22.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
