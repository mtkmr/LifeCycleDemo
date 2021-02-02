//
//  NextViewController2.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/02/02.
//

import UIKit

class NextViewController2: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var acceptLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = acceptLabel
        
        print("NextViewController2のviewDidLoadが呼ばれました。")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("NextViewController2のviewWillAppearが呼ばれました。")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("NextViewController2のviewDidAppearが呼ばれました。")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("NextViewController2のviewWillDisappearが呼ばれました。")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("NextViewController2のviewDidDisappearが呼ばれました。")
    }
    

    @IBAction func goBackAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
