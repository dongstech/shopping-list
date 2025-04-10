//
//  Hike.swift
//  shopping-list
//
//  Created by Fuqiang Dong on 4/8/25.
//

import Foundation

struct Hike: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]

    static var formatter = LengthFormatter()

    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }

    struct Observation: Hashable, Codable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }

}
