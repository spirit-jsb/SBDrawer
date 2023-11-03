//
//  SBDrawer.swift
//  SBDrawer
//
//  Created by JONO-Jsb on 2023/10/25.
//

#if canImport(UIKit)

import UIKit

public enum SBDrawer {
    public enum Direction {
        case left
        case right
    }

    public struct AnimationConfiguration {
        public enum AnimationType {
            case `default`
            case scale
            case mask
        }

        public var animationType: AnimationType
        public var duration: TimeInterval

        public var scale: CGFloat
        public var maskOpacity: CGFloat

        public var distanceRatio: CGFloat

        public init(
            animationType: AnimationType,
            duration: TimeInterval,
            scale: CGFloat,
            maskOpacity: CGFloat,
            distanceRatio: CGFloat
        ) {
            self.animationType = animationType
            self.duration = duration
            self.scale = scale
            self.maskOpacity = maskOpacity
            self.distanceRatio = distanceRatio
        }

        public static func `default`() -> SBDrawer.AnimationConfiguration {
            return AnimationConfiguration(
                animationType: .default,
                duration: 0.3,
                scale: 0.8,
                maskOpacity: 0.5,
                distanceRatio: 0.75
            )
        }
    }
}

#endif
