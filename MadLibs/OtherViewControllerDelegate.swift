//
//  OtherViewControllerDelegate.swift
//  MadLibs
//
//  Created by Kaan Kabalak on 7/12/17.
//  Copyright © 2017 Kaan Kabalak. All rights reserved.
//

import Foundation

protocol OtherViewControllerDelegate: class {
    func passData(by controller: OtherViewController, with text: String)
}
