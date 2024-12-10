//
//  RootRouter.swift
//  Vayoo
//
//  Created by Bruno Souza on 09/12/24.
//

import RIBs
import SwiftUI

final class RootRouter: ViewableRouter<RootInteractable, View>, RootRouting {
    
//    private let loginBuilder: LoginBuildable
//    private let homeBuilder: HomeBuildable
    
    init(interactor: RootInteractable) {
        super.init(interactor: interactor, viewController: EmptyView())
        interactor.router = self
    }
    
    func routeToLogin() {
        
    }
    
    func routeToHome() {
        
    }
}
