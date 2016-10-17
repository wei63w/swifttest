//
//  ViewController.swift
//  swifttest
//
//  Created by genilex3 on 16/10/14.
//  Copyright © 2016年 wei63w. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var btn: UIButton!
    
    
    @IBAction func btnclick(_ sender: AnyObject) {
        

        let alert = UIAlertController(title: "标题", message:getName(num1: 2, num2: "呵呵"), preferredStyle: UIAlertControllerStyle.alert);
        let cancleAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.cancel) { (UIAlertAction) in
            print("点击了取消");
        };
        let okAction = UIAlertAction(title: "确定", style: UIAlertActionStyle.default) {(UIAlertAction) in
            print("点击了确认");
        };
        alert.addAction(cancleAction);
        alert.addAction(okAction);
        
        self.present(alert, animated: true) { 
            NSLog("弹框结束");
        };
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.img.image = UIImage.init(named: "b");
        self.btn.setTitle("按钮", for: UIControlState.normal);
        
        
        
    }
    
    
    func getName(num1:Int,num2:String) -> String {
        var tempName = "";
        switch num1 {
        case 1:
            tempName = "第一名";
        case 2:
            tempName = "第二名";
        default:
            tempName = "最后一名";
        }
        return tempName;
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

