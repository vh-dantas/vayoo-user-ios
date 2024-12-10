//
//  LoginInteractor.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import RIBs
import Combine

final class LoginInteractor: Interactor, LoginInteractable {
    weak var router: (any LoginRouting)?
    weak var listener: (any LoginListener)?
    weak var dependencies: LoginDependencies?
    
    private var cancellables = Set<AnyCancellable>()
    
    func didLoginSuccessfully() {
        
    }
}
