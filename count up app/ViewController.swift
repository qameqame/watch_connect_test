//
//  ViewController.swift
//  count up app
//
//  Created by kameyama on 2016/12/18.
//  Copyright © 2016年 kameyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func tapBtn(_ sender: Any) {
        // AppGroup IDで保存したcountデータを取得する
        let defaults = UserDefaults(suiteName: "group.app.hkameyam.test.count")
        var count = defaults?.integer(forKey: "contValue") ?? 0
        // カウントアップして表示する
        count += 1
        myLabel.text = "\(count)"
        //カウントアップした値を保存する
        defaults?.set(count, forKey: "contValue")
        defaults?.synchronize()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // AppGroup IDで保存したcountデータを取得する
        let defaults = UserDefaults(suiteName: "group.app.hkameyam.test.count")
        let count = defaults?.integer(forKey: "contValue") ?? 0
        // 値を表示する
        myLabel.text = "\(count)"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

