//
//  PetViewController.swift
//  SpineDemo
//
//  Created by 沙畫 on 2018/5/23.
//  Copyright © 2018年 art. All rights reserved.
//

import UIKit

class PetViewController: UIViewController {

    @IBOutlet weak var spineScene: PetSpineView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController(CCDirector.shared())
    }
    
    
    @IBAction func maturityAction(_ sender: UIButton) {
        spineScene.changeScene(scene: MaturityExample.scene())
    }

    
    @IBAction func growthAction(_ sender: UIButton) {
       spineScene.changeScene(scene: GrowthExample.scene())
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        CCDirector.shared().removeFromParentViewController()
        print("PetViewController")
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
