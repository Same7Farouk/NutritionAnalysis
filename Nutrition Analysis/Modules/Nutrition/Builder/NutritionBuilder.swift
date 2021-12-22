//
//  NutritionBuilder.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import Foundation
import UIKit

class NutritionBuilder {
    
    func instance(viewController:NutritionViewController){
        viewController.viewModelBuilder = {
            NutritionViewModel(input: (recpieName: $0.recpieName, $0.coordinator), nutritionService: NutritionService())
        }
        viewController.coordinator = NutritionCoordinator(rootViewController: viewController)
    }
}
