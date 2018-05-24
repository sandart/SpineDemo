//
//  PetSpineView.swift
//  SpineDemo
//
//  Created by 沙畫 on 2018/5/21.
//  Copyright © 2018年 art. All rights reserved.
//

import UIKit

class PetSpineView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        let dlg = UIApplication.shared.delegate as! AppDelegate
//        dlg.setupCocos2d(options: [CCSetupDepthFormat:GL_DEPTH24_STENCIL8_OES,
//                               CCSetupScreenOrientation: CCScreenOrientationPortrait,
//                               CCSetupScreenMode: CCScreenModeFixed,
//                               CCSetupShowDebugStats: true])
//        let subView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
//        subView.backgroundColor = UIColor.blue
//        CCDirector.shared().view.addSubview(subView)
//        CCDirector.shared().run(with: ErshuExample.scene())
        
        let director = CCDirector.shared()
        let windowSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
//        let glView = CCGLView.init(frame: CGRect(x: 0, y: 0, width: windowSize.width, height: windowSize.width),
//                      pixelFormat: kEAGLColorFormatRGBA8,
//                      depthFormat: GLuint(GL_DEPTH24_STENCIL8_OES),
//                      preserveBackbuffer: false,
//                      sharegroup: nil,
//                      multiSampling: true,
//                      numberOfSamples: 4)
//        glClearColor(0, 0, 0, 0)
//        glView?.backgroundColor = UIColor.clear
//        glView?.isOpaque = true

        let glView = CCGLView(frame: CGRect.init(x: 0, y: 0, width: windowSize.width, height: windowSize.width))
        director?.view = glView
        
//        addSubview(director!.view)
//        director?.run(with: ErshuExample.scene())
        
        if (director!.runningScene == nil) {
            addSubview(director!.view)
            director?.run(with: MaturityExample.scene())
        }
        else{
            director?.replace(GrowthExample.scene())
            director?.startAnimation()
        }

    }
    
    func changeScene(scene: CCScene)  {
        let director = CCDirector.shared()
        director?.replace(scene)
        director?.startAnimation()
    }
    
    
    deinit {
//        CCDirector.shared().end()
        CCDirector.shared().delegate = nil
        print("PetSpineView")
    }

}
