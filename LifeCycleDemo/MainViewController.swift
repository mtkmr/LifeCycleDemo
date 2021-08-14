//
//  MainViewController.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/08/14.
//

import UIKit

final class MainViewController: UIViewController {
    
    private lazy var orangeView: OrangeView = {
       let view = OrangeView(frame: CGRect(x: 30, y: 30, width: 100, height: 100))
        view.backgroundColor = .systemOrange
        return view
    }()
    
    private lazy var redView: RedView = {
        let view = RedView(frame: CGRect(x: orangeView.frame.origin.x, y: orangeView.frame.origin.y, width: 80, height: 80))
        view.backgroundColor = .systemRed
        return view
    }()
    
    private lazy var pinkView: PinkView = {
        let view = PinkView(frame: CGRect(x: redView.frame.origin.x, y: redView.frame.origin.y, width: 60, height: 60))
        view.backgroundColor = .systemPink
        return view
    }()
    
    override func updateViewConstraints() {
        print("\(MainViewController.className)-\(#function)")
        super.updateViewConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(MainViewController.className)-\(#function)")
        
        view.addSubview(orangeView)
        orangeView.addSubview(redView)
        redView.addSubview(pinkView)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(MainViewController.className)-\(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("\(MainViewController.className)-\(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("\(MainViewController.className)-\(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(MainViewController.className)-\(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(MainViewController.className)-\(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(MainViewController.className)-\(#function)")
    }

}
