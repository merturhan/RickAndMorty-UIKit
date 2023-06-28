//
//  RMRequest.swift
//  RickAndMorty-UIKit
//
//  Created by Mert Urhan on 27.06.2023.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired endpoint
    private let endpoint : RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents : Set<String>
    
    /// Query args for API, if any
    private let queryParams : [URLQueryItem]
    
    /// Constructed url for the api req in string format
    private var urlString : String {
        var string = Constants.baseUrl
        string += ("/")
        string += (endpoint.rawValue)
        
        if(!pathComponents.isEmpty){
            pathComponents.forEach({
                string += ("/\($0)")
            })
        }
        
        if(!queryParams.isEmpty){
            string += ("?")
            // name=value&name=value
            let argumentStr = queryParams.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentStr
        }
        
        return string
    }
    
    /// Computed & constructed API url
    public var url : URL?{
        return URL(string: urlString)
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    
    // MARK: - Public
    
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: Collection of path component
    ///   - queryParams: Collection of query parameters
    public init(endpoint: RMEndpoint,
                pathComponents : Set<String> = [],
                queryParams : [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParams = queryParams
    }
    
}
