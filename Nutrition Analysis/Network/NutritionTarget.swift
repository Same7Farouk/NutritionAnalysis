//
//  NutritionTarget.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import Moya
import Foundation
import UIKit
import Alamofire

enum NutritionTarget {
    case analyze(receipeName:String,recipeIngredients:[String])
}

extension NutritionTarget: TargetType {
    
    
    var baseURL: URL {
        return URL(string: "https://api.edamam.com/api/")!
    }
    
    var path: String {
        switch self {
        case .analyze:
            return "nutrition-details"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .analyze:
            return .post
        }
    }
    
    var sampleData: Data {
        return  Data()
    }
    
    
    var task: Task {
        switch self {
        case .analyze(let receipeName, let recipeIngredients):
            var parameters = [String:Any]()
            parameters = [
                "title":receipeName,
                "ingr":recipeIngredients
            ]
            var urlParams =  [String:Any]()
            urlParams = [
                "app_id":"a282d775",
                "app_key":"24a83e8b5db2aa6ee85c893c7ae9c9e0"
            ]
            return .requestCompositeParameters(bodyParameters: parameters, bodyEncoding: JSONEncoding.default, urlParameters: urlParams)
        }
    }
    
    public var headers: [String: String]? {
        return nil
    }
    
    
    public var validationType: ValidationType {
        return .successCodes
    }
    
}

