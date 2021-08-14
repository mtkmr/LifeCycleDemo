//
//  BlackView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class BlackView: UIView {
    
    override init(frame: CGRect) {
        print("\(BlackView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(BlackView.className)-\(#function)")
        super.init(coder: aDecoder)
        backgroundColor = .black
    }
    
    override func updateConstraints() {
        print("\(BlackView.className)-\(#function)")
        super.updateConstraints()
    }
}
