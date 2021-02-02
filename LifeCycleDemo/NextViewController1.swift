//
//  NextViewController.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/02/02.
//

import UIKit

class NextViewController1: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    var acceptLabel = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = acceptLabel
        
        print("NextViewController1のviewDidLoadが呼ばれました。")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("NextViewController1のviewWillAppearが呼ばれました。")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("NextViewController1のviewDidAppearが呼ばれました。")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("NextViewController1のviewWillDisappearが呼ばれました。")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("NextViewController1のviewDidDisappearが呼ばれました。")
    }
    
    
    
    @IBAction func goBackAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
