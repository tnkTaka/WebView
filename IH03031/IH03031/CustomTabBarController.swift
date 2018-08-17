//
//  CustomTabBarController.swift
//  IH03031
//
//  Created by administrator on 2018/07/26.
//  Copyright © 2018年 taka.tanaka. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //レンダリングモードをAlwaysOriginalでボタンの画像を登録する。
        tabBar.items![0].image = UIImage(named: "google.png")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        tabBar.items![1].image = UIImage(named: "evening.png")!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
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
