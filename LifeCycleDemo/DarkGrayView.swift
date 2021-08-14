//
//  DarkGrayView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class DarkGrayView: UIView {

    override init(frame: CGRect) {
        print("\(DarkGrayView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(DarkGrayView.className)-\(#function)")
        super.init(coder: aDecoder)
        backgroundColor = .darkGray
    }
    
    override func updateConstraints() {
        print("\(DarkGrayView.className)-\(#function)")
        super.updateConstraints()
    }

}
