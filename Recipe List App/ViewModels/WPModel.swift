//
//  WPModel.swift
//  Recipe List App
//
//  Created by Sean Mee on 2024-02-13.
//

import Foundation

class WPModel: ObservableObject {
    
    @Published var programs = [WorkoutProgram]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.programs = DataService.getLocalWorkoutPrograms()
        print(self.programs)
    }
}
