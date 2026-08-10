//
//  Animation.swift
//  AnimationApp
//
//  Created by Владислав on 09.08.2026.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        "preset: \(preset)\ncurve: \(curve)\nforce: \(force)\nduration: \(duration)\ndelay: \(delay)"
    }
    
    static func getAnimations() -> [Animation] {
        let dataStore = DataStore.shared
        let animationsNames = dataStore.animationsNames.shuffled()
        let curves = dataStore.curves.shuffled()
        let count = min(dataStore.animationsNames.count, dataStore.curves.count)
        
        var animations: [Animation] = []
        
        for index in 0..<count {
            animations.append(
                Animation(
                    preset: animationsNames[index],
                    curve: curves[index],
                    force: (Float.random(in: 1...5) * 100).rounded() / 100,
                    duration: (Float.random(in: 0.5...5) * 100).rounded() / 100,
                    delay: (Float.random(in: 0...5) * 100).rounded() / 100
                )
            )
        }
        
        return animations
    }
}
