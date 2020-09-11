//
//  addListViewController.swift
//  TableViewApp
//
//  Created by 加藤太一 on 2020/09/10.
//  Copyright © 2020 taichi. All rights reserved.
//

import UIKit

class addListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var addtext: UITextField!
    
    var array = [String]()
    
    @IBAction func addButton(_ sender: Any) {
        
       if UserDefaults.standard.object(forKey: "add") != nil {
                  
        array = UserDefaults.standard.object(forKey: "add") as! [String]
        }
       
        
        array.append(addtext.text!)
//        追加
        
        UserDefaults.standard.set(array,forKey: "add")
//        保存
        
        self.navigationController?.popViewController(animated: true)
        
//    画面を戻る
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
