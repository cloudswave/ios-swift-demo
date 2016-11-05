//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by ethan on 16/11/5.
//  Copyright © 2016年 ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var labelZodiac: UILabel!
    let zodiacs = ["鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪"] //鼠、牛、虎、兔、龙、蛇、马、羊、猴、鸡、狗、猪
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: "zodiac_"+String(1))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        year.resignFirstResponder() //让keybord 消失
    }

    @IBAction func onTouched(_ sender: UIButton) {
        year.resignFirstResponder() //让keybord 消失
        if let yearInt = Int(year.text!) {
            var imgNumber = (yearInt - 4) % 12
            labelZodiac.text = "偶的生肖是:" + zodiacs[imgNumber]
            imageView.image = UIImage(named: "zodiac_"+String(imgNumber))
        }
    }

}

