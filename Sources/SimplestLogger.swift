//
//  SimplestLogger.swift
//  SimplestLogger
//
//  Created by Shai Balassiano on 28/12/2018.
//  Copyright © 2018 Shai Balassiano. All rights reserved.
//

import Foundation

public protocol LoggerFormatter {
    func format(_ message: @autoclosure () -> Any, _ level: SimplestLogger.Level, _ filePath: String, _ function: String, _ line: Int, context: Any?) -> String
}

public class SimplestLogger {
    public enum Level {
        case debug
        case error
        case info
        case verbose
        case warning
    }

    public static var formatter: LoggerFormatter = DefualtLoggerFormatter()

    public static func verbose(_ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        log(level: .verbose, message, filePath, function, line, context: context)
    }

    public static func debug(_ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        log(level: .debug, message, filePath, function, line, context: context)
    }

    public static func info(_ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        log(level: .info, message, filePath, function, line, context: context)
    }

    public static func warning(_ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        log(level: .warning, message, filePath, function, line, context: context)
    }

    public static func error(_ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        log(level: .error, message, filePath, function, line, context: context)
    }

    static func log(level: Level, _ message: @autoclosure () -> Any = "", _ filePath: String = #file, _ function: String = #function, _ line: Int = #line, context: Any? = nil) {
        let formatedMessage = formatter.format(message, level, filePath, function, line, context: context)
        print(formatedMessage)
    }
}
