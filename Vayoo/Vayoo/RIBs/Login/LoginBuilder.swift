//
//  LoginBuilder.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import RIBs
import SwiftUI

final class LoginBuilder: Builder<LoginDependencies>, LoginBuildable {
    override init(dependency: LoginDependencies) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: LoginListener) -> LoginRouting {
        let view = LoginView()
        let interactor = LoginInteractor()
        interactor.listener = listener
        interactor.dependencies = dependency

        let router = LoginRouter(interactor: interactor, viewController: view)
        return router
    }
}
