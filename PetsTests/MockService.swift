//
//  MockService.swift
//  Pets
//
//  Created by teresa sabina on 13/07/21.
//
import Foundation
@testable import Pets

class MockService: Servicable, JsonDecodable {
    func fetchData(completionHandler: @escaping Completion1) {
        
    }
    
    var responseFileName = ""

    func fetchData<T>(networkClient: NetworkClient, type: T.Type, completionHandler: @escaping Completion<T>) where T : Decodable, T : Encodable {
        // Obtain Reference to Bundle
        let bundle = Bundle(for:MockService.self)
        
        guard let url = bundle.url(forResource:responseFileName, withExtension:"json"),
              let data = try? Data(contentsOf: url),
              let output = decode(input:data, type:T.self)
        else {
            completionHandler(.failure(NetworkError.parsinFailed(message:"Failed to get response")))
            return
        }
        completionHandler(.success(output))
    }
}
