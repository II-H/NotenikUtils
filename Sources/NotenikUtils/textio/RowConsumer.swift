//
//  RowConsumer.swift
//  Notenik
//
//  Created by Herb Bowie on 4/24/19.
//  Copyright © 2019 Herb Bowie (https://powersurgepub.com)
//
//  This programming code is published as open source software under the
//  terms of the MIT License (https://opensource.org/licenses/MIT).
//

import Foundation

/// A protocol for consuming fields and rows generated by DelimitedReader
protocol RowConsumer {
    

    /// Do something with the next field produced.
    ///
    /// - Parameters:
    ///   - label: A string containing the column heading for the field.
    ///   - value: The actual value for the field.
    func consumeField(label: String, value: String)
    

    /// Do something with a completed row.
    ///
    /// - Parameters:
    ///   - labels: An array of column headings.
    ///   - fields: A corresponding array of field values. 
    func consumeRow(labels: [String], fields: [String])
    
}
