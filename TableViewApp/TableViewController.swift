//
//  TableViewController.swift
//  TableViewApp
//
//  Created by 加藤太一 on 2020/09/09.
//  Copyright © 2020 taichi. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var names:[String] = ["米倉","川田","金子",]
    
    var resultArray = [String]()
    
    override func viewWillAppear(_ animated: Bool) {
        
        if UserDefaults.standard.object(forKey: "add") != nil {
            resultArray = UserDefaults.standard.object(forKey: "add") as! [String]
//            UserDefaultsに保存されている配列の値をresultArrayに入れる
            
        }
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        配列
//        print(names[3])
//
//        names[3] = "阿部"
//        print(3)
//
//        names.append("加藤")
//        print(names)
//
//        names.insert("立川",at: 1)
//        print(names)
//
//        names.remove(at: 5)
//        print(names)
//
//        names.removeLast()
//        print(names)
//
//        names.removeAll()
////        print(names)
        
        
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

        
        override func updateTextAttributes(conversionHandler: ([NSAttributedString.Key : Any]) -> [NSAttributedString.Key : Any]) {
        }
        
    //    セクション名
    //    今回はセクションを1にするのでreturn 0をreturn 1に
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 1
        }

    //    セルの数を指定
    /*    セルは配列分必要、動的に動かす時はreturn後に　names.countと設定
         ここで数字を指定してしまうと限られたセルしか表示されない
         
         受け皿分の数の受け皿を返す　resultArray.countにする必要
     */
     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
        return resultArray.count
        }

    //　　セルの表示する場所
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            //        withIdentifier ここでさっき指定したIdに変えてあげることでここに表示してくれる
            /*　ここのtableViewは上の関数で指定したUITableViewを指定している。
              dequeueReusableCell　はセルの場所を指定している命令文
            アイデンティファーのNameCellを一致させることで返している。
             */

            let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
    //        追加
    //row は何番目を指定する場所(row番目)
    //        name を　resultArrayに変更
            cell.textLabel?.text = resultArray[indexPath.row]
            
            return cell
        }
        
        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
           if editingStyle == UITableViewCell.EditingStyle.delete {
                resultArray.remove(at: indexPath.row)
                UserDefaults.standard.set(resultArray, forKey: "add")
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
      

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
}
