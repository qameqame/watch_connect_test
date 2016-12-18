//
//  InterfaceController.swift
//  count up app WatchKit Extension
//
//  Created by kameyama on 2016/12/18.
//  Copyright © 2016年 kameyama. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLabel: WKInterfaceLabel!
    
    var count=0
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    @IBAction func tapBtn() {

        // AppGroup IDで保存したcountデータを取得する
        let defaults = UserDefaults(suiteName: "group.app.hkameyam.test.count")
        var count = defaults?.integer(forKey: "contValue") ?? 0
        //カウントアップして表示する
        count += 1
        myLabel.setText("\(count)")
        //カウントアップした値を保存する
        defaults?.set(count, forKey: "contValue")
        defaults?.synchronize()
        
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        // AppGroup IDで保存したcountデータを取得する
        let defaults = UserDefaults(suiteName: "group.app.hkameyam.test.count")
        let count = defaults?.integer(forKey: "contValue") ?? 0
        // 値を表示する
        myLabel.setText("\(count)")
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
