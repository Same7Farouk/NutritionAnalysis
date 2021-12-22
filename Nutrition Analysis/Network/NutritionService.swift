//
//  NutritionService.swift
//  Nutrition Analysis
//
//  Created by Sameh Farouk on 22/12/2021.
//

import Foundation
import Moya
import RxSwift

protocol NutritionServiceProtocol {
    func analyzeRecipe(receipeName: String, recipeIngredients: [String]) ->  Observable<NutritionAnalyzeResponse>
}
class NutritionService: NutritionServiceProtocol {
    
    private let provider = MoyaProvider<NutritionTarget>(callbackQueue: DispatchQueue.global(qos: .utility))
    
    func analyzeRecipe(receipeName: String, recipeIngredients: [String]) ->  Observable<NutritionAnalyzeResponse> {
        return Observable.create({ (observable) -> Disposable in
            let provider = MoyaProvider<NutritionTarget>(callbackQueue: DispatchQueue.global(qos: .utility))
            let callBack = provider.request(.analyze(receipeName: receipeName, recipeIngredients: recipeIngredients)) { (responseResult) in
                switch responseResult {
                case let .success(response):
                    do {
                        if let _ = try? JSONSerialization.jsonObject(with: response.data, options: .mutableContainers) {
                        }
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(NutritionAnalyzeResponse.self, from: response.data)

                        observable.onNext(result)
                    } catch  {
                        observable.onError(NutritionServiceErrors.ParsingError)
                    }
                case .failure(_):
                    observable.onError(NutritionServiceErrors.NetworkError)
                }
            }
            
            return Disposables.create {
                callBack.cancel()
            }
        })
    }
}

enum NutritionServiceErrors: Error {
    case ParsingError, NetworkError
}

