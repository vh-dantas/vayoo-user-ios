//
//  RootInteractor.swift
//  Vayoo
//
//  Created by Bruno Souza on 09/12/24.
//

import RIBs
import Foundation

final class RootInteractor: Interactor, RootInteractable {
    
    weak var router: RootRouting?
    
    override func didBecomeActive() {
        super.didBecomeActive()
        self.checkAuthState()
    }
    
    func checkAuthState() {
        let isUserLogged = false
        
        if isUserLogged {
            router?.routeToHome()
        } else {
            router?.routeToLogin()
        }
    }
}
