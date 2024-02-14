//
//  WorkoutProgramDetailView.swift
//  Recipe List App
//
//  Created by Sean Mee on 2024-02-14.
//

import SwiftUI

struct WorkoutProgramDetailView: View {
    
    var program:WorkoutProgram
    
    var body: some View {
        
        ScrollView {
        
            VStack (alignment: .leading) {
                
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("name")
                        .font(.headline)
                        .padding([.bottom, .top], 5)
                   
                }
                .padding(.horizontal)
                
                // MARK: Divider
                Divider()
                
           
                .padding(.horizontal)
            }
            
        }
        .navigationBarTitle(program.name)
    }
}

struct WorkoutProgramDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        // Create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = WPModel()
        
        WorkoutProgramDetailView(program: model.programs[0])
    }
}
