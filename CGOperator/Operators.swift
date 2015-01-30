//
//  Operators.swift
//  CGOperator
//
//  Created by adachi.yuichi on 2015/01/30.
//  Copyright (c) 2015年 yad. All rights reserved.
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 Yad
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
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

/**
Plus operator for CGPoint

:param: lhs left hand point
:param: rhs right hand point

:returns: A new CGPoint with .x = lhs.x + rhs.x, .y = lhs.y + rhs.y
*/
func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

/**
Minus operator for CGPoint

:param: lhs left hand point
:param: rhs right hand point

:returns: A new CGPoint with .x = lhs.x - rhs.x, .y = lhs.y - rhs.y
*/
func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

/**
Product operator for CGSize multiplied by CGFloat

:param: lhs left hand CGSize to be multiplied
:param: rhs right hand CGFloat by which multiply lhs CGSize

:returns: A new CGSize with .width = lhs.width * rhs, .height = lhs.height * rhs
*/
func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
}

/**
Divide operator for CGSize divided by CGFloat

:param: lhs left hand CGSize to be divided
:param: rhs right hand CGFlaot by which divide lhs CGSize

:returns: A new CGSize with .width = lhs.width / rhs, .height = lhs.height / rhs
*/
func /(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
}

/**
Union operator for two CGRects

:param: lhs left hand CGRect
:param: rhs right hand CGRect

:returns: A new CGRect minimum to cover given two
*/
func |(lhs: CGRect, rhs: CGRect) -> CGRect {
    return CGRectUnion(lhs, rhs)
}

/**
Intersection operator for two CGRects

:param: lhs left hand CGRect
:param: rhs right hand CGRect

:returns: A new CGRect maximum to be contained in both two CGRects given
*/
func &(lhs: CGRect, rhs: CGRect) -> CGRect {
    return CGRectIntersection(lhs, rhs)
}
