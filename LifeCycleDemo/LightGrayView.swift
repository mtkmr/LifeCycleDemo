//
//  LightGrayView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class LightGrayView: UIView {

    override init(frame: CGRect) {
        print("\(LightGrayView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(LightGrayView.className)-\(#function)")
        super.init(coder: aDecoder)
        backgroundColor = .lightGray
    }

    override func updateConstraints() {
        print("\(LightGrayView.className)-\(#function)")
        super.updateConstraints()
    }
}
