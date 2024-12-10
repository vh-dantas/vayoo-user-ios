//
//  FirebaseAuthServiceProtocol.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import Combine

protocol FirebaseAuthServiceProtocol {
    func login(email: String, password: String) -> AnyPublisher<User, Error>
    func logout() -> AnyPublisher<Void, Error>
    func register(email: String, password: String) -> AnyPublisher<User, Error>
}
