//
//  RMEndpoint.swift
//  RickAndMorty-UIKit
//
//  Created by Mert Urhan on 27.06.2023.
//

import Foundation

/// Represents unique API Endpoints
@frozen enum endPoint : String{
    /// Endpoint to get character info
    case chracater
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
