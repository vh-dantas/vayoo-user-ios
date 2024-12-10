//
//  RootBuildable.swift
//  Vayoo
//
//  Created by Bruno Souza on 09/12/24.
//

import RIBs

protocol RootBuildable: Buildable {
    func build() -> RootRouting
}

