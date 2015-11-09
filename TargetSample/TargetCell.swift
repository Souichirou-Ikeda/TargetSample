//
//  CustomCell.swift
//  TargetSample
//
//  Created by ikedasouichirou on 2015/11/06.
//  Copyright © 2015年 ikedasouichirou. All rights reserved.
//

import Foundation
import UIKit

class TargetCell: UICollectionViewCell
{
  
    @IBOutlet var targetName   : UILabel!
    @IBOutlet var currentValue : UILabel!
    @IBOutlet var targetValue  : UILabel!
    @IBOutlet var duration     : UILabel!
    
    //@IBOutlet var image: UIImageView!
    
    override init( frame: CGRect )
    {
        super.init( frame: frame )
    }
    
    required init?( coder aDecoder: NSCoder )
    {
        super.init( coder: aDecoder )
    }
    
 /*   func createGraph( current: Double, target:Double, size:CGSize )
    {
        let currentValue : CGFloat = CGFloat((M_PI)*current/(target*0.5)) // グラフ値
        let graphOffset  : CGFloat = -CGFloat(M_PI)/2     // グラフ描画時のオフセット
        
        graphShadow     = CAShapeLayer();           // 立体感出すやつ
        graphBackground = CAShapeLayer();           // グラフ背景
        graphValue      = CAShapeLayer();           // グラフバー
        
        let c_current    = UIColor(red:101.0/255,green:245/255,blue:138/255,alpha:1).CGColor
        let c_background = UIColor(red:0.05,green:0.05,blue:0.05,alpha:1).CGColor
        let c_shadow     = UIColor(red:0.1,green:0.1,blue:0.1,alpha:1).CGColor
        //let clearColor      = UIColor(red:0,green:0,blue:0,alpha:0).CGColor
        
        graphShadow.strokeColor      = c_shadow      // 輪郭の色
        graphShadow.fillColor        = nil//clearColor  // 図形の中の色
        graphShadow.lineWidth        = 5.0              // 輪郭の太さ
        graphBackground.strokeColor  = c_background
        graphBackground.fillColor    = nil//clearColor
        graphBackground.lineWidth    = 5.0
        
        graphValue.strokeColor       = c_current
        graphValue.fillColor         = nil
        graphValue.lineWidth         = 5.0
        graphValue.lineCap           = kCALineCapRound
        
        // 図形は円形
        graphShadow.path  = UIBezierPath( arcCenter: CGPoint(x:170/2,y:170/2+9), radius: 60, startAngle: 0, endAngle: 2*CGFloat(M_PI), clockwise: true).CGPath
        graphBackground.path = UIBezierPath( arcCenter: CGPoint(x:170/2,y:170/2+10), radius: 60, startAngle: 0, endAngle: 2*CGFloat(M_PI), clockwise: true).CGPath
        graphValue.path = UIBezierPath( arcCenter: CGPoint(x:170/2,y:170/2+10), radius: 60, startAngle: graphOffset, endAngle: currentValue+graphOffset, clockwise: true).CGPath
        
    }*/
    
    func drawGraph( graph: TargetGraph, graphBase:GraphBase )
    {
        // 作成したCALayerを画面に追加
        self.contentView.layer.addSublayer(graphBase.graphShadow)
        self.contentView.layer.addSublayer(graphBase.graphBackground)
        self.contentView.layer.addSublayer(graph.graphValue)
    }
    
 /*   func graphAnimation( )
    {
        // 輪郭の線をアニメーションする
        let strokeStartAnimation = CABasicAnimation(keyPath: "strokeStart")
        strokeStartAnimation.fromValue = 0.0
        strokeStartAnimation.byValue =  0.0
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.fromValue = 0.0
        strokeEndAnimation.byValue =  1.0
        let strokeAnimationGroup = CAAnimationGroup()
        strokeAnimationGroup.duration = 1.0
        strokeAnimationGroup.repeatDuration = 1//CFTimeInterval.infinity
        //strokeAnimationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        //strokeAnimationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        //strokeAnimationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        strokeAnimationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        strokeAnimationGroup.animations = [strokeStartAnimation,strokeEndAnimation]
        strokeAnimationGroup.beginTime = 0
        graphValue.addAnimation(strokeAnimationGroup, forKey:nil)
        
    }
*/
}