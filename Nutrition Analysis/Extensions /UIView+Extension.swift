//
//  UIView+Extension.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import UIKit

extension UIView {
    class func loadFromNib<T: UIView>(named: String) -> T {
        return Bundle.main.loadNibNamed(named, owner: nil, options: nil)![0] as! T
    }
    
    @IBInspectable var cornerRadius: CGFloat{
        get{
            return 0.0
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
