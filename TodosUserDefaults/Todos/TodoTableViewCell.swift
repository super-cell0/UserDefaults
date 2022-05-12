//
//  TodoTableViewCell.swift
//  Todos
//
//  Created by 贝蒂小熊 on 2022/3/6.
//

import UIKit

class TodoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var checkBoxButton: UIButton!
    @IBOutlet weak var todoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //设置选中后的图片//
        checkBoxButton.setImage(UIImage(systemName: "circle"), for: .normal)
        checkBoxButton.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
        checkBoxButton.isSelected = true
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
