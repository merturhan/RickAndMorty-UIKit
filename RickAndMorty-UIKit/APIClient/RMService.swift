//
//  RMService.swift
//  RickAndMorty-UIKit
//
//  Created by Mert Urhan on 27.06.2023.
//

import Foundation

/// Primary API service object to get RM Data
final class RMService {
    
    /// Shared Singleton instance
    static let shared = RMService()
    
    /// Privatized constructor
    private init () {}
    
    /// Send RM API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: Type of object we expect to get back
    ///   - completion: Callback with Data or Error
//    public func execute(_ request: RMRequest, completion: @escaping (Result<String, Error>) -> Void){
//
//    }
    
    public func execute<T : Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ){
        
    }
}
