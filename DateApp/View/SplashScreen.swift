//
//  SplashScreen.swift
//  DateApp
//
//  Created by Pouya Sadri on 04/04/2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
		ZStack{
			Color.black
				.ignoresSafeArea()
			
			VStack{
				LottieView(fileName: "fire")
					.frame(width: 200,height: 200)
					.offset(y:140)
				
				LottieView(fileName: "load")
					.frame(width: 300,height: 400)
			}
		}
    }
}

#Preview {
    SplashScreen()
}
