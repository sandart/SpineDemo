//
//  ErshuExample.swift
//  SpineDemo
//
//  Created by 沙畫 on 2018/5/21.
//  Copyright © 2018年 art. All rights reserved.
//

import UIKit

class MaturityExample: CCNode {

    var skeletonFly: SkeletonAnimation
    
    override init() {
        skeletonFly = SkeletonAnimation(file: "ershumaturity.json",
                                    atlasFile: "ershumaturity.atlas",
                                        scale: 0.1
        )
        super.init()

        skeletonFly.setSkin("skins")
        skeletonFly.setAnimationForTrack(0, name: "animation", loop: true)
    
        let windowSize = CCDirector.shared().viewSize()
        skeletonFly.position = CGPoint(x: windowSize.width * 0.5, y:20)
        addChild(skeletonFly)
        
        isUserInteractionEnabled = true;
        contentSize = CGSize(width: windowSize.width, height: windowSize.width)

    }
    
    class func scene() -> CCScene  {
        let scene = CCScene()
        if let bg = CCSprite.init(imageNamed: "image_growth_background.jpg") {
            let windowSize = CCDirector.shared().viewSize()
            bg.anchorPoint = CGPoint(x: 0, y: 0)
            bg.scaleX = Float(windowSize.width / bg.spriteFrame.rect.width)
            bg.scaleY = Float(windowSize.height / bg.spriteFrame.rect.height)
            scene?.addChild(bg)
        }
        scene?.addChild(MaturityExample())
        return scene!
    }

}
