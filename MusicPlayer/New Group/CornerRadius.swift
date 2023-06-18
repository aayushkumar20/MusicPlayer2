////
////  CornerRadius.swift
////  MusicPlayer
////
////  Created by Aayush kumar on 19/06/23.
////
//
//import SwiftUI
//
//struct RoundedCorner: Shape {
//    var radius: CGFloat = .infinity
//    var corners = UIRectCorner = .allCorners
//    
//    func path(in rect: CGRect) -> Path {
//        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//        return Path(path.cgPath)
//    }
//}
//
//extension View {
//    public func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//        clipShape(RoundedCorner)
//    }
//}
