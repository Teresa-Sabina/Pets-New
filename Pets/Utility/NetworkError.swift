//
//  NetworkError.swift
//  Pets
//
//  Created by teresa sabina on 13/07/21.
//
import Foundation

enum NetworkError: Error {
    case parsinFailed(message:String)
    case errorWith(message:String)
    case networkNotAvailalbe
    case malformedURL(message:String)
}
