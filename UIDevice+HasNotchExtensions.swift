//
//  UIDevice+HasNotchExtensions.swift
//  Created by Vlad Munteanu on 3/31/20.
//

import Foundation
import UIKit

extension UIDevice {
    var hasNotch: Bool {
        let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        return bottom > 0
    }
}
