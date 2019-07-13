//
//  NSAttributedString+Extension.swift
//  NSAttributedStringBuilder
//
//  Created by Vincent PRADEILLES on 13/07/2019.
//  Copyright © 2019 Vincent PRADEILLES. All rights reserved.
//

import Foundation

extension NSAttributedString {
    public class func composing(@NSAttributedStringBuilder _ parts: () -> NSAttributedString) -> NSAttributedString {
        return parts()
    }
}
