//
//  NSAttributedStringBuilderTests.swift
//  NSAttributedStringBuilderTests
//
//  Created by Vincent PRADEILLES on 13/07/2019.
//  Copyright © 2019 Vincent PRADEILLES. All rights reserved.
//

import XCTest
@testable import NSAttributedStringBuilder

class NSAttributedStringBuilderTests: XCTestCase {

    func test() {
        let computed = NSAttributedString.composing {
            NSAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
            NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange])
        }
        
        let expected = NSMutableAttributedString(string: "Hello", attributes: [.font: UIFont.systemFont(ofSize: 24), .foregroundColor: UIColor.red])
        expected.append(NSAttributedString(string: " world!", attributes: [.font: UIFont.systemFont(ofSize: 20), .foregroundColor: UIColor.orange]))
        
        XCTAssertEqual(computed, expected)
    }
}
