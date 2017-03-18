//
//  EditInfoViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/3/11.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class EditInfoViewController: UIViewController {
    var editInfo = InfoDetail()

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var starTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func infoSave(_ sender: Any)
    {
        let notificationName = Notification.Name("GetUpdateNoti")
        //讀輸入的值
        editInfo.name=nameTextField.text
        editInfo.star=starTextField.text
        editInfo.height=heightTextField.text
        //發通知
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: ["transfer":editInfo])
        //回前一頁 prepare+dismiss
       //self.dismiss(animated: true, completion: nil)
        //回到前一頁
        self.navigationController?.popViewController(animated: true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameTextField.text=editInfo.name
        starTextField.text=editInfo.star
        heightTextField.text=editInfo.height
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
