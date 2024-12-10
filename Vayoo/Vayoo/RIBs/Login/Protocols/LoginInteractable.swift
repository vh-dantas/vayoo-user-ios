//
//  LoginInteractable.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import RIBs

protocol LoginInteractable: Interactable, LoginListener {
    var router: LoginRouting? { get set }
    var listener: LoginListener? { get set }
    var dependencies: LoginDependencies? { get }
}
