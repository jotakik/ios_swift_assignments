//
//  Food.swift
//  Homework8
//
//  Created by Joshua Tan on 2025/10/3.
//

import SwiftUI

let foodMenu = Bundle.main.decode([MenuSection].self, from: "menu.json")

struct FoodItem: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.mainImage)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            HStack {
                Text(item.name)
                    .bold()
                Text("$\(item.price)")
            }.padding(.top)
            Text(item.restrictions.joined(separator: ", "))
                .padding(.bottom)
            Text(item.description)
                .padding()
        }
    }
}

struct MealCourse: View {
    let course: MenuSection
    
    var body: some View {
        NavigationStack {
            List(course.items) { item in
                NavigationLink(destination: FoodItem(item: item)) {
                    HStack {
                        Image(item.thumbnailImage)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        Text(item.name)
                    }
                }
            }.navigationTitle(course.name)
        }
    }
}

struct Food: View {
    var body: some View {
        NavigationStack {
            List(foodMenu) { course in
                NavigationLink(destination: MealCourse(course: course)) {
                    Text(course.name)
                }
            }.navigationTitle("Meal Courses")
        }
    }
}

#Preview {
    Food()
}
