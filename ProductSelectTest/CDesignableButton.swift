//
//  CDesignableButton.swift
//  Circle
//
//  Created by Wayne Ohmer on 10/17/17.
//  Copyright © 2017 Circle. All rights reserved.
//

import UIKit

@IBDesignable
class CDesignableButton: UIButton {
    
    var storedOpacity = Float(0.0)
    var storedCornerRadius = CGFloat(0)
    
//    @IBInspectable
//    var link:Bool {
//        set {
//            if newValue {
//                self.addOnboardingLinkButtonAppearance()
//            } else {
//                self.setAttributedTitle(nil, for: .normal)
//            }
//        }
//        get {
//            return self.attributedTitle(for: .normal) != nil
//        }
//    }
//
    @IBInspectable
    var rounded:Bool {
        set {
            self.layer.cornerRadius =  newValue ? self.frame.height/2 : self.storedCornerRadius
        }
        get {
            return self.layer.cornerRadius == self.frame.height/2
        }
    }
    
    @IBInspectable
    public var cornerRadius:CGFloat {
        set {
            self.layer.cornerRadius = newValue
            self.storedCornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }

    @IBInspectable
    public var borderWidth:CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }

    @IBInspectable
    public var borderColor:UIColor? {
        set {
            self.layer.borderColor = newValue?.cgColor
        }
        get {
            if let borderColor = self.layer.borderColor {
                return UIColor(cgColor:borderColor)
            } else {
                return nil
            }
        }
    }

    @IBInspectable
    public var shadowColor:UIColor? {
        set {
            self.layer.shadowColor = newValue?.cgColor
            self.layer.masksToBounds = false

        }
        get {
            if let shadowColor = self.layer.shadowColor {
                return UIColor(cgColor:shadowColor)
            } else {
                return nil
            }
        }
    }

    @IBInspectable
    public var shadowOffset:CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }

    @IBInspectable
    public var shadowOpacity:Float {
        set {
            self.storedOpacity = newValue
            self.layer.shadowOpacity = self.storedOpacity
        }
        get {
            return self.storedOpacity
        }
    }

}


