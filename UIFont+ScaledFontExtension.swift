//
//  UIFont+ScaledFontExtension.swift
//  Created by Vlad Munteanu on 3/31/20.
//

import Foundation
import UIKit

extension UIFont {
    func withTraits(traits:UIFontDescriptor.SymbolicTraits) -> UIFont {
        let descriptor = fontDescriptor.withSymbolicTraits(traits)
        return UIFont(descriptor: descriptor!, size: 0) //size 0 means keep the size as it is
    }
    
    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
    
    func italic() -> UIFont {
        return withTraits(traits: .traitItalic)
    }
}

extension UIFont {

    /// Scaled and styled version of any custom Font
    ///
    /// - Parameters:
    ///   - name: Name of the Font
    ///   - textStyle: The text style i.e Body, Title, ...
    /// - Returns: The scaled custom Font version with the given textStyle
    static func scaledFont(textStyle: UIFont.TextStyle, weight: UIFont.Weight) -> UIFont {

        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: textStyle)

        let customFont = UIFont.systemFont(ofSize: fontDescriptor.pointSize, weight: weight)

        return UIFontMetrics.default.scaledFont(for: customFont)
    }
}

