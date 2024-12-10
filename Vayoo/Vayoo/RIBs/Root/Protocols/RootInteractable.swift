//
//  RootInteractable.swift
//  Vayoo
//
//  Created by Bruno Souza on 09/12/24.
//

import RIBs

protocol RootInteractable: Interactable, LoginListener, HomeListener {
    var router: RootRouting? { get set }
}
