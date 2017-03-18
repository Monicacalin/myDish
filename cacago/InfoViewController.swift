//
//  InfoViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/3/6.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    var infoDetail = InfoDetail()
    
   
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //透過button & viewController之間連線的segue
        let controller = segue.destination as! EditInfoViewController
        controller.editInfo = infoDetail
    }
    
    func reloadInfo()
    {
        //更新個人資訊
        nameLabel.text = infoDetail.name
        starLabel.text = infoDetail.star
        heightLabel.text = String(infoDetail.height)
    }
    
    func getUpdateNoti(noti:Notification)
    {
        //接收編輯頁面回傳的資訊
        infoDetail = noti.userInfo!["transfer"] as! InfoDetail
        reloadInfo()
        
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //接收編輯頁面回傳的資訊
        let notificationName = Notification.Name("GetUpdateNoti")
        NotificationCenter.default.addObserver(self, selector: #selector(getUpdateNoti(noti:)), name: notificationName, object: nil)
        
        
        //更新修改後的值
        reloadInfo()

        // Do any additional setup after loading the view.
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
