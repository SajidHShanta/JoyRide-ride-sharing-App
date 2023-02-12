//
//  HomeView.swift
//  JoyRide
//
//  Created by Sajid Shanta on 12/2/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        MapViewRepresentable()
            .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
