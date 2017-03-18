//
//  DishViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/3/7.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class DishViewController: UIViewController {

    var infoDetail = InfoDetail()
    var infoArray=[InfoDetail(order:0,name:"張孝全",star:"摩羯座",height:"180"),
                   InfoDetail(order:1,name:"余文樂",star:"天蠍座",height:"176"),]
   
   
    @IBOutlet weak var name1: UIButton!
    @IBOutlet weak var name2: UIButton!
    
    @IBAction func goDetail(_ sender: UIButton)
    {
        //透過viewController之間連線的segue
        self.performSegue(withIdentifier: "goDetail", sender: sender.tag)
        

    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let tag=sender as! Int
        print (tag)
        let controller=segue.destination as! InfoViewController
         controller.infoDetail=infoArray[tag]
       
    }
    func getUpdateNoti(noti:Notification)
    {
        //print("index\(self.indexPathforseletedrow)")
        //接收編輯頁面回傳的資訊
        infoDetail = noti.userInfo!["transfer"] as! InfoDetail
        infoArray[infoDetail.order] = infoDetail

        
        
        //set current title
        if infoDetail.order == 0{
            name1.setTitle(infoDetail.name, for: UIControlState.normal)
        }
        else
        {
            name2.setTitle(infoDetail.name, for: UIControlState.normal)
        }
      
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //接收編輯頁面回傳的資訊
        let notificationName = Notification.Name("GetUpdateNoti")
        NotificationCenter.default.addObserver(self, selector: #selector(getUpdateNoti(noti:)), name: notificationName, object: nil)
        
        //更新頁面資訊
        name1.setTitle(infoArray[0].name, for: .normal)
        name2.setTitle(infoArray[1].name, for: .normal)
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
