//
//  OperatorsTests.swift
//  OperatorsTests
//
//  Created by adachi.yuichi on 2015/01/30.
//  Copyright (c) 2015年 yad. All rights reserved.
//

import CGOperator
import XCTest

class OperatorsTests: XCTestCase {
    
    func testPointMatchOperator() {
        let point = CGPoint(x: 1, y: 2)
        let rect = CGRect(x: 0, y: 0, width: 2, height: 3)
        switch point {
        case rect : XCTAssert(true, "rect should contain point")
        default : XCTFail("rect don't contain point")
        }
    }
    
    func testRectMatchOperator() {
        let rect = CGRect(x: 1, y: 1, width: 0.5, height: 0.5)
        let otherRect = CGRect(x: 0, y: 0, width: 2, height: 3)
        switch rect {
        case otherRect : XCTAssert(true, "rect should contain rect")
        default : XCTFail("rect don't contain rect")
        }
    }
    
    func testPlusOperator() {
        let apoint = CGPoint(x: 1, y: 1)
        let bpoint = CGPoint(x: 2, y: 2)
        let cpoint = apoint + bpoint
        XCTAssert(cpoint.x == 3 && cpoint.y == 3, "points should be added with plus operator")
    }
    
    func testPlusAssignOperator() {
        var apoint = CGPoint(x: 1, y: 1)
        let bpoint = CGPoint(x: 2, y: 2)
        apoint += bpoint
        XCTAssert(apoint.x == 3 && apoint.y == 3, "points should be added with plus assignment operator")
    }
    
    func testMinusOperator() {
        let apoint = CGPoint(x: 2, y: 2)
        let bpoint = CGPoint(x: 1, y: 1)
        let cpoint = apoint - bpoint
        XCTAssert(cpoint.x == 1 && cpoint.y == 1, "point should be computed diffence with minus operator")
    }
    
    func testMinusAssignOperator() {
        var apoint = CGPoint(x: 1, y: 1)
        let bpoint = CGPoint(x: 2, y: 2)
        apoint -= bpoint
        XCTAssert(apoint.x == -1 && apoint.y == -1, "point should be computed diffence with minus assign operator")
    }
    
    func testProductOperator() {
        let asize = CGSize(width: 1, height: 2)
        let aconst: CGFloat = 4
        let bsize = asize * aconst
        XCTAssert(bsize.width == 4 && bsize.height == 8, "size should be multiplied with product operator")
    }
    
    func testProductAssignOperator() {
        var asize = CGSize(width: 1, height: 2)
        let aconst: CGFloat = 2
        asize *= aconst
        XCTAssert(asize.width == 2 && asize.height == 4, "size should be multiplied with product assign operator")
    }
    
    func testDivideOperator() {
        let asize = CGSize(width: 6, height: 3)
        let aconst: CGFloat = 3
        let bsize = asize / aconst
        XCTAssert(bsize.width == 2 && bsize.height == 1, "size should be divided with divide operator")
    }
    
    func testDivideAssignOperator() {
        var asize = CGSize(width: 6, height: 3)
        let aconst: CGFloat = 3
        asize /= aconst
        XCTAssert(asize.width == 2 && asize.height == 1, "size should be divided with divide assign operator")
    }
    
    func testUnionOperator() {
        let arect = CGRect(x: 0, y: 0, width: 2, height: 2)
        let brect = CGRect(x: 1, y: 2, width: 3, height: 3)
        let crect = arect | brect
        XCTAssert(
            crect.origin.x == 0 &&
            crect.origin.y == 0 &&
            crect.size.width == 4 &&
            crect.size.height == 5
            , "minimum rect covers two rect should be generated with union operator")
    }
    
    func testIntersectionOperator() {
        let arect = CGRect(x: 0, y: 0, width: 2, height: 2)
        let brect = CGRect(x: 1, y: 1, width: 3, height: 3)
        let crect = arect & brect
        XCTAssert(
            crect.origin.x == 1 &&
                crect.origin.y == 1 &&
                crect.size.width == 1 &&
                crect.size.height == 1
            , "maximum rect contained in both two rect should be generated with intersection operator")
    }
}
