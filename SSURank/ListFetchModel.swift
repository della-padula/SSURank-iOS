//
//  ListFetchModel.swift
//  SSURank
//
//  Created by Denny on 2020/09/24.
//

import Foundation
import UIKit

public enum Level {
    case A
    case B
    case C
    case D
    case E
    case F
}

public enum EvaluationCategory {
    case lecture
    case professor
    
    public func urlString() -> String {
        switch self {
        case .lecture:
            return "lecture"
        case .professor:
            return "professor"
        }
    }
}

public enum RequestType {
    case lecture
    case professor
    case major
}

public struct ResultItem {
    public var name: String
    public var lectureCount: Int
    public var percent: CGFloat
    public var level: Level
}
