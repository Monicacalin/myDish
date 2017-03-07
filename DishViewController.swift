//
//  DishViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/3/7.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class DishViewController: UIViewController {

    
    @IBAction func showJoseph(_ sender: UITapGestureRecognizer) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "InfoController") as? InfoViewController
        controller?.name = "張孝全"
         //controller?.nameLabel.text = "張孝全"
         self.present(controller!, animated: true, completion: nil )
    }
    
    
    @IBAction func showShawn(_ sender: UITapGestureRecognizer) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
