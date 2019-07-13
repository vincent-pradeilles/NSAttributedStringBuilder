//
//  NSAttributedStringBuilder.swift
//  NSAttributedStringBuilder
//
//  Created by Vincent PRADEILLES on 13/07/2019.
//  Copyright © 2019 Vincent PRADEILLES. All rights reserved.
//

import Foundation

@_functionBuilder
public class NSAttributedStringBuilder {
    public static func buildBlock(_ components: NSAttributedString...) -> NSAttributedString {
        let result = NSMutableAttributedString(string: "")
        
        return components.reduce(into: result) { (result, current) in result.append(current) }
    }
}
