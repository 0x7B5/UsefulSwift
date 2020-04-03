//
//  GenericSnapKitView.swift
//  Created by Vlad Munteanu on 4/2/20.
//

import Foundation
import UIKit
import SnapKit

public class WeeklySubView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func setupView() {
        initializeUI()
        createConstraints()
    }
    
    private func initializeUI() {
        
    }
    
    public func createConstraints() {
        
    }
}
