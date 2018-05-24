//
//  ErExample.swift
//  SpineDemo
//
//  Created by 沙畫 on 2018/5/23.
//  Copyright © 2018年 art. All rights reserved.
//

import UIKit

class GrowthExample: CCNode {

    var skeletonFly: SkeletonAnimation
    
    override init() {
        skeletonFly = SkeletonAnimation(file: "ershu_growth.json",
                                        atlasFile: "ershu_growth.atlas",
                                        scale: 0.2
        )
        super.init()
        
        skeletonFly.setSkin("skins")
        skeletonFly.setAnimationForTrack(0, name: "animation", loop: true)
        
        let windowSize = CCDirector.shared().viewSize()
        skeletonFly.position = CGPoint(x: windowSize.width * 0.5, y:100)
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
        scene?.addChild(GrowthExample())
        return scene!
    }

}
