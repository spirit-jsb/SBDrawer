//
//  UIViewController+SBDrawer.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

public extension UIViewController {
    func openDrawer(_ drawerContentViewController: UIViewController, direction: SBDrawer.Direction, animationConfig: SBDrawer.AnimationConfiguration) {
        let transitioningController = SBDrawerTransitioningController(direction: direction, animationConfig: animationConfig)

        drawerContentViewController.modalPresentationStyle = .custom
        drawerContentViewController.transitioningDelegate = transitioningController

        self.present(drawerContentViewController, animated: true, completion: nil)
    }
}

#endif
