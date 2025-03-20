//
//  URLBuilder.swift
//  DnDCompanion
//
//  Created by Nick on 3/19/25.
//

import Foundation

enum EndPoint {
    case getCategories
    case getSubCategory(path: String)
    
    private var scheme: String {
        return "https"
    }
    
    private var host: String {
        return "www.dnd5eapi.co"
    }
    
    private var path: String {
        switch self {
        case .getCategories:
            return "/api/2014/"
        case .getSubCategory(path: let path):
            return path
        }
    }
    
    var url: URL? {
        var urlComponents = URLComponents()
        urlComponents.host = host
        urlComponents.scheme = scheme
        urlComponents.path = path
        return urlComponents.url
    }
}
