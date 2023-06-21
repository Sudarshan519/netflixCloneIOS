//
//  Extensions.swift
//  Netflix Clone
//
//  Created by user on 2023/06/20.
//

import Foundation

extension String{
    func capetializeFirstLetter()->String{
        return self.prefix(1).uppercased()+self.lowercased().dropFirst()
    }
}
