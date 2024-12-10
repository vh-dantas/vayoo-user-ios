//
//  LoginRouter.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import RIBs

final class LoginRouter: ViewableRouter<LoginInteractor, LoginView>, LoginRouting {
    override init(interactor: LoginInteractor, viewController: LoginView) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
    
    func routeToHome() {
        
    }
}
