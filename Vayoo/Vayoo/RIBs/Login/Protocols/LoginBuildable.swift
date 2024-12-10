//
//  LoginBuildable.swift
//  Vayoo
//
//  Created by Bruno Souza on 10/12/24.
//

import RIBs

protocol LoginBuildable: Buildable {
    func build(withListener listener: LoginListener) -> LoginRouting
}
