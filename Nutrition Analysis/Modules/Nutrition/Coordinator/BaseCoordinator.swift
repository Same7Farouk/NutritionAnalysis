//
//  BaseCoordinator.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import Foundation
import UIKit

protocol BaseCoordinator {
    associatedtype Destination
    var rootViewController: UIViewController { get set }
    func makeViewController(for destination: Destination) -> UIViewController
}
