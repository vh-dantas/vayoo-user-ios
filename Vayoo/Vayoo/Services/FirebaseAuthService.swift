//
//  FirebaseAuthService.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import FirebaseAuth
import Combine

final class FirebaseAuthService: FirebaseAuthServiceProtocol {
    func login(email: String, password: String) -> AnyPublisher<User, Error> {
        Future { promise in
            Auth.auth().signIn(withEmail: email, password: password) { result, error in
                if let error = error {
                    promise(.failure(error))
                } else if let result = result {
                    let user = User(uid: result.user.uid, email: result.user.email)
                    promise(.success(user))
                }
            }
        }.eraseToAnyPublisher()
    }

    func logout() -> AnyPublisher<Void, Error> {
        Future { promise in
            do {
                try Auth.auth().signOut()
                promise(.success(()))
            } catch {
                promise(.failure(error))
            }
        }.eraseToAnyPublisher()
    }

    func register(email: String, password: String) -> AnyPublisher<User, Error> {
        Future { promise in
            Auth.auth().createUser(withEmail: email, password: password) { result, error in
                if let error = error {
                    promise(.failure(error))
                } else if let result = result {
                    let user = User(uid: result.user.uid, email: result.user.email)
                    promise(.success(user))
                }
            }
        }.eraseToAnyPublisher()
    }
}
