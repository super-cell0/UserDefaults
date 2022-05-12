//
//  AddTodoTableViewController.swift
//  Todos
//
//  Created by 贝蒂小熊 on 2022/3/6.
//

import UIKit

//反向传值定义个delegate
protocol AddTodoTableViewControllerDelegate {
    func didAdd(name: String)
    func didEdit(name: String)
}

class AddTodoTableViewController: UITableViewController {

    var delegate: AddTodoTableViewControllerDelegate?
    //正向传值 接受文本的值
    var name: String?
    
    @IBOutlet weak var todoTextField: UITextView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        todoTextField.delegate = self
        
        todoTextField.becomeFirstResponder()
        todoTextField.text = name
        
        if name != nil {
            navigationItem.title = "编辑待办事项"
        }

    }

    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        if !todoTextField.text.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            if name != nil {
                delegate?.didEdit(name: todoTextField.text)
            } else {
                delegate?.didAdd(name: todoTextField.text)
            }
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

//textView自动换行刷新
extension AddTodoTableViewController: UITextViewDelegate{
    func textViewDidChange(_ textView: UITextView) {
        tableView.performBatchUpdates {
            
        }
        
    }
}
