//
//  Operators.swift
//  CGOperator
//
//  Created by adachi.yuichi on 2015/01/30.
//  Copyright (c) 2015年 yad. All rights reserved.
//

import CoreGraphics

/**
Pattern match operator to check whether CGPoint contained in CGRect

:param: rect  Pattern rect
:param: point Predicate point

:returns: whether point contained in rect
*/
public func ~= (rect: CGRect, point: CGPoint) -> Bool {
    return rect.contains(point)
}