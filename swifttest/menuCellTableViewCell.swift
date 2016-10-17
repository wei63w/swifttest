//
//  menuCellTableViewCell.swift
//  swifttest
//
//  Created by genilex3 on 16/10/17.
//  Copyright © 2016年 wei63w. All rights reserved.
//

import UIKit

class menuCellTableViewCell: UITableViewCell {

    
    
    
    @IBOutlet weak var leftImg: UIImageView!
    
    @IBOutlet weak var centerLab: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
    }
    
    

    func loadData(imgStr img:String,labStr lab:String){
        
        let tempimg = UIImage(named: img);
        
//        self.img.image = UIImage(named: img);
//        self.lab.text? = lab;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
