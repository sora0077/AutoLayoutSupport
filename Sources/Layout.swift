//
//  Layout.swift
//  AutoLayoutSupport
//
//  Created by 林達也 on 2018/02/15.
//  Copyright © 2018年 林達也. All rights reserved.
//

import UIKit

public struct Layout<Anchors> {
    weak var owner: UIView?
    let anchors: Anchors

    func activate(_ constraint: NSLayoutConstraint, priority: UILayoutPriority, file: StaticString, line: UInt) -> NSLayoutConstraint {
        if owner?.translatesAutoresizingMaskIntoConstraints == true {
            owner?.translatesAutoresizingMaskIntoConstraints = false
        }
        constraint.priority = priority
        constraint.isActive = true
        constraint.identifier = makeDescription(constraint, file: file, line: line)
        return constraint
    }
}

private func makeDescription(_ constraint: NSLayoutConstraint, file: StaticString, line: UInt) -> String {
    return "@\((file.description as NSString).lastPathComponent)#\(line)"
}
