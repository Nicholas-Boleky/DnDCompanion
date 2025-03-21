//
//  NetworkClient.swift
//  DnDCompanion
//
//  Created by Nick on 3/19/25.
//

import Foundation

protocol APIDataProvidable {
    func perform<Object: Decodable>(_ request: URLRequest) async throws -> Object
}

extension APIDataProvidable {
    func perform<Object: Decodable>(_ request: URLRequest) async throws -> Object {
        let (data, _) = try await URLSession.shared.data(for: request)
        
        do {
            let decoder = JSONDecoder()
            let object = try decoder.decode(Object.self, from: data)
            return object
        } catch {
            //TODO: Error Handling
            print(error)
            throw error
        }
    }
}
