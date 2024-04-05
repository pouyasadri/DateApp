//
//  ContentView.swift
//  DateApp
//
//  Created by Pouya Sadri on 04/04/2024.
//

import SwiftUI

struct ContentView: View {
	@State private var isSplashScreen = true
    var body: some View {
		ZStack{
			Group{
				if isSplashScreen{
					SplashScreen()
				}else{
					ZStack{
						Color.black.ignoresSafeArea()
						CombineView()
					}
				}
			}
			.onAppear{
				DispatchQueue
					.main
					.asyncAfter(deadline: .now() + 2.5, execute: {
						withAnimation{
							isSplashScreen = false
						}
					})
			}
		}
    }
}

struct CombineView : View {
	var body: some View {
		ZStack{
			VStack{
				HeaderSection()
				FilterSection()
				Spacer()
					.frame(height: 30)
				SwipeView()
			}
		}
	}
}

struct HeaderSection : View {
	var body: some View {
		HStack{
			LottieView(fileName: "fire")
				.frame(width: 40,height: 50)
			Text("S W I P E")
				.font(.largeTitle)
				.foregroundStyle(.white)
			
			Spacer()
				.frame(width: 170)
			
			ZStack{
				Image(systemName: "message.fill")
					.foregroundStyle(.white)
					.font(.system(size: 30))
				
				Circle()
					.frame(width: 15,height: 15)
					.foregroundStyle(.red)
					.offset(x:10,y:-10)
			}
		}
	}
}

struct FilterSection : View {
	var body: some View {
		ZStack{
			RoundedRectangle(cornerRadius: 8)
				.foregroundStyle(.gray)
				.frame(width: 380,height: 50)
				.opacity(0.1)
				.overlay{
					RoundedRectangle(cornerRadius: 8)
						.stroke(.white,lineWidth: 1)
				}
			HStack{
				Image(systemName: "magnifyingglass")
					.foregroundStyle(.white.opacity(1))
					.font(.system(size: 25))
				
				Spacer()
					.frame(width: 20)
				
				Text("S E A R C H")
					.foregroundStyle(.white)
					.opacity(0.4)
				
				Spacer()
			}
			.offset(x:40)
		}
	}
}

#Preview {
    ContentView()
}
