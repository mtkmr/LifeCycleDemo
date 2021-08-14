//
//  OrangeView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class OrangeView: UIView {

    override init(frame: CGRect) {
        print("\(OrangeView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(OrangeView.className)-\(#function)")
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        print("\(OrangeView.className)-\(#function)")
        super.updateConstraints()
    }
}
