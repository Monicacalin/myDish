//
//  LoversTableViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/3/9.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class LoversTableViewController: UIViewController {
    var lovers = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        lovers = [["name":"張孝全", "star":"摩羯座"], ["name":"余文樂", "star":"天蠍座"]]

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
