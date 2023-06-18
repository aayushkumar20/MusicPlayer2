////
////  BlurView.swift
////  MusicPlayer
////
////  Created by Aayush kumar on 19/06/23.
////
//
//import SwiftUI
//
//public struct BlurView: UIViewRepresentable {
//    public init(style: UIBlurEffect.Style = .regular) {
//        self.style = style
//    }
//
//    let style = UIBlurEffect.Style
//
//    public func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
//        let view = UIView(frame: .zero)
//        view.backgroundColor = .clear
//        let blurEffect = UIBlurEffect(style: style)
//        let blurView = UIVisualEffectView(effect: blurEffect)
//        blurView.translatesAutoresizingMaskIntoConstraints = false
//        view.insertSubview(blurView, at: 0)
//        NSLayoutConstraint.activate([
//            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
//            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
//        ])
//        return view
//    }
//
//    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<BlurView>) {}
//
//}
//
//public class Haptics {
//
//    static
//}
