//
//  TrueLoveViewController.swift
//  cacago
//
//  Created by 林淑微 on 2017/2/19.
//  Copyright © 2017年 林淑微. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {

    @IBOutlet weak var wrong: UIImageView!
    @IBOutlet weak var bingo: UIImageView!
    @IBOutlet weak var genderSegment: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var starTextField: UITextField!
    
    
    @IBAction func buttonSubmit(_ sender: Any)
    {
        if starTextField.text! == "水瓶座"
        {
            if genderSegment.selectedSegmentIndex == 0
            {
                bingo.isHidden=true
                wrong.isHidden=false
            }
            else
            {
                bingo.isHidden=false
                wrong.isHidden=true
                
            }

            bingo.isHidden=false
            wrong.isHidden=true
        }
        else
        {
            bingo.isHidden=true
            wrong.isHidden=false
            
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        starTextField.text! = "巨蟹座"
        genderSegment.selectedSegmentIndex = 0
        
        
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
