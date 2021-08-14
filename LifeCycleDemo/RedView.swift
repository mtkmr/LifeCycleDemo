//
//  RedView.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class RedView: UIView {
    
    override init(frame: CGRect) {
        print("\(RedView.className)-\(#function)")
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("\(RedView.className)-\(#function)")
        super.init(coder: aDecoder)
    }
    
    override func updateConstraints() {
        print("\(RedView.className)-\(#function)")
        super.updateConstraints()
    }

}
