//
//  LottieView.swift
//  DateApp
//
//  Created by Pouya Sadri on 04/04/2024.
//

import SwiftUI
import Lottie

struct LottieView : UIViewRepresentable{
	typealias UIViewType = UIView
	var fileName : String
	
	func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
		
		let view = UIView(frame: .zero)
		let animationView = LottieAnimationView()
		let animation = LottieAnimation.named(fileName)
		animationView.animation = animation
		animationView.contentMode = .scaleAspectFit
		animationView.play()
		animationView.play(toProgress: 1,loopMode: LottieLoopMode.repeat(10),completion: {
			(finished) in
			if finished {
				print("animation Complete")
			}else{
				print("animation cancelled")
			}
		})
		animationView.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(animationView)
		
		NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo: view.widthAnchor),animationView.heightAnchor.constraint(equalTo: view.heightAnchor)])
		
		return view
	}
	
	func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
		
	}
}


