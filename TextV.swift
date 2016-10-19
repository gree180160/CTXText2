//
//  TextV.swift
//  CTXText
//
//  Created by WillowRivers on 16/6/27.
//  Copyright © 2016年 WillowRivers. All rights reserved.
//

import UIKit

class TextV: UIView {

    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder : aDecoder) ;
    }
    
    override init(frame aframe : CGRect)
    {
        super.init(frame: aframe) ;
    }
    
    override func drawRect(rect: CGRect) {
        
        let ctx = UIGraphicsGetCurrentContext() ;
        
        CGContextSetTextDrawingMode(ctx!, .Fill) ;
        CGContextSetCharacterSpacing(ctx! , 5.0) ;
        CGContextSetRGBFillColor(ctx! , 1, 0, 0, 1) ;
        CGContextSetRGBStrokeColor(ctx!, 0, 0, 1, 1) ;
        
        let message = "qunimeide a good job get everything" ;
        let font = UIFont(name: "Arial" , size: 20.0) ;
        CGContextSetTextDrawingMode(ctx!, .Stroke)
        message.drawAtPoint(CGPoint(x: 30, y: 150),withAttributes:[NSFontAttributeName : font!]) ;
       
        //let message2 = "make money get the one you love******" ;
       // let font2 = UIFont(name: "MarkerFelt-Thin" , size: 10.0) ;
       // CGContextSetTextDrawingMode(ctx, .StrokeClip) ;
        //CGContextSetTextMatrix(ctx, scale) ;   //useless
       // message2.drawAtPoint(CGPoint(x: 30, y: 150),withAttributes:[NSFontAttributeName:font2! , NSExpansionAttributeName : -2.0 , NSObliquenessAttributeName : M_PI * 2]) ;

        
        
        let str : NSString = "let you do some meaningful thing" ;
        let font3 = UIFont.systemFontOfSize(16) ;
        let color = UIColor.blueColor() ;
        let style = NSMutableParagraphStyle() ;
        style.alignment = NSTextAlignment.Left ;
        
        
        //CGContextScaleCTM(ctx , 1, 2) ; //对坐标变换
        //CGContextRotateCTM(ctx, CGFloat(M_PI / -8.0)) ;

        
        let yRevert = CGAffineTransformMake(1/2, 0, 0, 1/2, 0, 0) ;
        let scale = CGAffineTransformScale(yRevert, 1 , 1 ) ;
        let rotate = CGAffineTransformRotate(scale, CGFloat(M_PI / 8.0)) ;
        CGContextConcatCTM(ctx!, rotate) ;//matrix user this function 这里转化了坐标轴
        str.drawAtPoint(CGPoint(x: 50, y: 300) , withAttributes: [NSFontAttributeName : font3 , NSForegroundColorAttributeName : color , NSParagraphStyleAttributeName : style ]) ;
        
    }
    // [NSFontAttributeName : UIFont.systemFontOfSize(8) , NSForegroundColorAttributeName : UIColor.magentaColor()]
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
