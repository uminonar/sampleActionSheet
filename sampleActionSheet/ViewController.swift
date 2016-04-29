//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by RIho OKubo on 2016/04/29.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        
        //アクションシートを作成
        var alertController =
            UIAlertController(title: "行くアクティビティ", message:"どれにする？", preferredStyle: .ActionSheet)
        
        //通常ボタンを追加
        alertController.addAction(UIAlertAction(title: "ヨガ", style: .Default, handler: {action in self.myAction("ヨガ")
            }))
        
        alertController.addAction(UIAlertAction(title: "バスケ", style: .Default, handler: {action in self.myAction("バスケ")}))
        
        alertController.addAction(UIAlertAction(title: "ムエタイ", style: .Destructive, handler: {action in self.myAction("ムエタイ")}))
        
        //キャンセルボタンを追加
        alertController.addAction(UIAlertAction(title: "今日はやめとく", style: .Cancel, handler: {action in self.myLabel.text = "明日行こう！"}))
        
        //削除ボタン追加
//        alertController.addAction(UIAlertAction®(title: "削除", style: .Destructive, handler: {action in print("Destructive")}))
//        
        
        //アクションシートを表示
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    //通常ボタンを選択した時に呼ばれるメソッド
    func myAction(var activity:String!){
        //activity -> 指定されたアクティビティ名
        
        myLabel.text = "\(activity)に行こう！"
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

