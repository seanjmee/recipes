//
//  WorkoutProgramListView.swift
//  Recipe List App
//
//  Created by Sean Mee on 2024-02-13.
//

//import Foundation
import SwiftUI

struct WorkoutProgramListView: View {
    
    // Reference the view model
    
    @ObservedObject var model1 = WPModel()
 
    var body: some View {
        
        NavigationView {
            List(model1.programs) { r in
                
                NavigationLink(
                    destination: WorkoutProgramDetailView(program:r),
                    label: {
                        
                        // MARK: Row item
                        HStack(spacing: 20.0) {
                            Text(r.name)
                        }
                        
                    })
                
                
                
            }
            .navigationBarTitle("All Workouts")
        }
    }
}

struct WorkoutProgramListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutProgramListView()
    }
}
