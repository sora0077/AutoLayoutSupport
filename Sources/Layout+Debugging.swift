//
//  Layout+Debugging.swift
//  AutolayoutHelper
//
//  Created by 林 達也 on 2017/06/16.
//  Copyright © 2017年 sora0077 All rights reserved.
//

import Foundation

func activate(_ constraint: NSLayoutConstraint, priority: LayoutPriority, file: StaticString, line: UInt) -> NSLayoutConstraint {
    constraint.priority = priority.value
    constraint.isActive = true
    constraint.identifier = makeDescription(constraint, file: file, line: line)
    return constraint
}

private func makeDescription(_ constraint: NSLayoutConstraint, file: StaticString, line: UInt) -> String {
    return "@\((file.description as NSString).lastPathComponent)#\(line)"
}
