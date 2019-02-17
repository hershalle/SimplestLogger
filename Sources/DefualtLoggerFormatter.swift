//
//  DefualtLoggerFormatter.swift
//  SimplestLogger
//
//  Created by Shai Balassiano on 28/12/2018.
//  Copyright © 2018 Shai Balassiano. All rights reserved.
//

import Foundation

public struct DefualtLoggerFormatter: LoggerFormatter {
    func symbol(from level: SimplestLogger.Level) -> String {
        switch level {
        case .debug:
            return "🏗️"
        case .error:
            return "❌"
        case .info:
            return "ℹ️"
        case .verbose:
            return "🏗️📢"
        case .warning:
            return "⚠️"
        }

    }

    func fileName(path: String, withoutType: Bool) -> String {
        let fileName = path.components(separatedBy: "/").last ?? ""
        if withoutType {
            return fileName.components(separatedBy: ".").first ?? ""
        } else {
            return fileName
        }
    }

    var dateFormatter: ISO8601DateFormatter = {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withDashSeparatorInDate, .withFullDate, .withColonSeparatorInTime, .withTime]
        return formatter
    }()

    public func format(_ message: @autoclosure () -> Any = "", _ level: SimplestLogger.Level, _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) -> String {
        let messageString = "\(message())"
        let levelSymbol = symbol(from: level)
        let fileName = self.fileName(path: filePath, withoutType: true)
        let date = dateFormatter.string(from: Date())
        return "\(date) \(levelSymbol)\(level) \(fileName).\(function):\(line) - \(messageString)"
    }
}
