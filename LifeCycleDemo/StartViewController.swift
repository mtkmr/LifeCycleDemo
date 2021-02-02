//
//  StartViewController.swift
//  LifeCycleDemo
//
//  Created by Masato Takamura on 2021/02/02.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //最初にビューが読み込まれる。ビューが読み込まれるたびに１回だけしか呼ばれない。
        print("StartViewControllerのviewDidLoadが呼ばれました。")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //ビューが実際に画面に表示される直前に呼ばれる。例えばUIコンポーネントの表示/非表示などの処理
        print("StartViewControllerのviewWillAppearが呼ばれました。")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //画面が表示した後、つまりユーザーが見ることができる状態で呼ばれる。例えばカウントダウンタイマーの開始などの処理
        print("StartViewControllerのviewDidAppearが呼ばれました。")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //元に戻したいときや、現在のviewControllerを却下するときに最初に呼ばれる。例えばnavigationBarの表示/非表示などの処理
        print("StartViewControllerのviewWillDisappearが呼ばれました。")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        //すでにviewは画面から外れている。前のviewについて変更を加える最後のタイミング。
        print("StartViewControllerのviewDidDisappearが呼ばれました。")
    }
    
    
    @IBAction func goToNext1Action(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNextViewController1", sender: nil)
    }
    
    @IBAction func goToNext2Action(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNextViewController2", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let text = textField.text
//        switch segue.identifier {
//        case "goToNextViewController1":
//            let next1 = segue.destination as? NextViewController1
//            next1?.label.text = text!
//        case "goToNextViewController2":
//            let next2 = segue.destination as? NextViewController2
//            next2?.label.text = text!
//        default:
//            return
//        }
//
//    }
    //次の画面のlabelに直接値を渡そうとしても、UILabelはこの時点ではnilになのでエラーとなる。
    //下記に示すように、次の画面で値を受け取るようの変数を用意し、そこに値を渡して、次の画面のviewDidLoad()内でlabelに値を代入してやる必要がある。
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let text = textField.text
        switch segue.identifier {
        case "goToNextViewController1":
            let next1 = segue.destination as? NextViewController1
            next1?.acceptLabel = text!
        case "goToNextViewController2":
            let next2 = segue.destination as? NextViewController2
            next2?.acceptLabel = text!
        default:
            return
        }

    }

}
