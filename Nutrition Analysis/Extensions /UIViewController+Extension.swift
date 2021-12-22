//
//  UIViewController+Extension.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    class func instanceXib<T: UIViewController>() -> T {
        return T(nibName: T.identifier, bundle: nil)
    }
}
