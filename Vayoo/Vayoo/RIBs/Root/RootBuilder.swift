//
//  RootBuilder.swift
//  Vayoo
//
//  Created by Bruno Souza on 09/12/24.
//

import RIBs

final class RootBuilder: Builder<EmptyComponent>, RootBuildable {
    override init(dependency: EmptyComponent) {
        super.init(dependency: dependency)
    }
    
    func build() -> RootRouting {
        let interactor = RootInteractor()
        let router = RootRouter(interactor: interactor)
        
        return router
    }
}
