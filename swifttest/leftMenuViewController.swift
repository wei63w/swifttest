//
//  leftMenuViewController.swift
//  swifttest
//
//  Created by genilex3 on 16/10/17.
//  Copyright © 2016年 wei63w. All rights reserved.
//

import UIKit

class leftMenuViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
//    var tableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.plain);
        
        tableView?.delegate = self;
        tableView?.dataSource = self;
        self.view.addSubview(self.tableView!);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("选中第\(indexPath.row)行");
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "cell";
        let cell = menuCellTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: identifier);

        
        let tempimg = UIImage(named: "3");
        
        
        cell.leftImg.image = UIImage(named: "3");
        cell.centerLab.text = "第\(indexPath.row)行";
        return cell;
        
        
        
        
        //        cell.loadData(imgStr: "3", labStr: "xxx");
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
