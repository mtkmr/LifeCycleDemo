//
//  PinkView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class PinkView: UIView {

    override init(frame: CGRect) {
        print("\(PinkView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(PinkView.className)-\(#function)")
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        print("\(PinkView.className)-\(#function)")
        super.updateConstraints()
    }
}
