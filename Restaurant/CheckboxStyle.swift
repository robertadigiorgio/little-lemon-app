//
//  CheckboxStyle.swift
//  Restaurant
//
//  Created by Roberta on 20/12/23.
//

import Foundation
import SwiftUI

struct CheckboxStyle: ToggleStyle {

    func makeBody(configuration: Self.Configuration) -> some View {

        return HStack {
            Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 24, height: 24, alignment: .leading)
                .foregroundColor(configuration.isOn ? .white : .gray)
                .background(configuration.isOn ? Color(#colorLiteral(red: 0.2862745225, green: 0.3686274588, blue: 0.3411764801, alpha: 1)) : .white)
                configuration.label
                .font(Font.leadText())
                .foregroundColor(.primaryColor1)
        }
        .onTapGesture { configuration.isOn.toggle() }

    }
}
